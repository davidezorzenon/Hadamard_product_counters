#include <iostream>
#include <exception>
#include "etvo.h"

#include <chrono> // for measuring the elapsed time

using namespace std;
using namespace etvo;

/// <summary>
/// Calculates the optimal inputs for the Resource Sharing problem with one shared resource.
/// </summary>
/// <param name="K">Number of subsystems (at least 2)</param>
/// <param name="G">Array of transfer functions (series) of the subsystems (in each case ignoring all other subsystems)</param>
/// <param name="z">Array of output references (series) for the subsystems</param>
/// <param name="beta">Monomial describing the shared resource</param>
/// <returns>Vector of optimal inputs</returns>
vector<series> RS_one_resource(unsigned int K, series G[], series z[], series beta, bool verbose)
{
    unsigned int iteration = 0; // variable to count the number of iterations for phi^k
    vector<series> u_opt = vector<series>(K); // vector of optimal inputs to be returned

    u_opt[0] = z[0].lfrac(G[0]); // optimal input of the first subsystem
    series x_AH = u_opt[0];
    series x_RH = G[0] * u_opt[0];

    if (verbose) {
        cout << "Resource sharing with a single resource:" << endl;
        cout << "x_AH = " << x_AH << endl;
        cout << "x_RH = " << x_RH << endl;
    }

    for (int k = 1; k < K; k++)
    {
        iteration = 0; // reset counter for iterations
        series x_0 = series(); // start x_0 with epsilon series (placeholder)
        series a = series::Top(); // start iteration for greatest fixed point with top series
        series s = z[k].lfrac(G[k]); // only compute this once (not for each iteration of the while-loop)
        
        // iteration - calculate the greatest fixed point of phi^k
        while (x_0 != a)
        {
            // starting value of the current iteration = value from the last iteration
            // (or the Top series if this is the first iteration)
            x_0 = a;

            a = hadamard_prod(x_0, x_AH).lfrac(beta);
            a = hadamard_res(a, x_RH);
            a = a.lfrac(G[k]);
            a = inf(a, inf(s, x_0));

            // output current iteration
            if (verbose) cout << "Subsystem " << (k + 1) << ", Iteration " << ++iteration << ": " << a << endl;
        }

        if (verbose) cout << endl;

        // Now a = x_0 = u_opt[k] is the greatest fixed point of phi^k
        u_opt[k] = x_0; // optimal input of subsystem k
        x_AH = hadamard_prod(x_AH, x_0); // update x_AH
        x_RH = hadamard_prod(x_RH, G[k] * x_0); // update x_RH
    }
    
    // Console output
    for (int i = 0; i < u_opt.size(); i++)
    {
        if (verbose) {
			cout << "Subsystem " << (i + 1) << ":" << endl; // subsystem number
			cout << "u_opt_" << (i + 1) << ": " << u_opt[i] << endl; // optimal input
			cout << "y_opt_" << (i + 1) << ": " << G[i] * u_opt[i] << endl << endl; // optimal output
        }
    }
    
    // Return vector of optimal inputs
    return u_opt;
}

// Returns [r_T(u)](t) - for monomials, polynomials and series
// Implementation involving the Hadamard product
series r_T(long T, series u)
{
    return hadamard_prod(u, gd(0, T));
}

// Returns [r^#_T(u)](t) - for monomials, polynomials and series
// Implementation involving the residual of the Hadamard product
series r_T_res(long T, series u)
{
    return hadamard_res(u, gd(0, T));
}

/// <summary>
/// Returns the new optimal input in case of an output-reference update at time T
/// </summary>
/// <param name="T">Time at which the output-reference is updated</param>
/// <param name="G">Transfer function of the TEG</param>
/// <param name="z_prime">Updated output-reference to be respected</param>
/// <param name="u_opt">Optimal input respecting the old output-reference z</param>
/// <returns>Updated optimal input</returns>
series output_reference_update(long T, series G, series z_prime, series u_opt, bool verbose)
{
    if (verbose) cout << "Output-reference update at time T = " << T << ":" << endl;
    series G_rT_u = G * r_T(T, u_opt);

    series result = series::Epsilon();
    if (G_rT_u.operator<=(z_prime)) // set F is nonempty
        result = inf(z_prime.lfrac(G), r_T_res(T, u_opt));
    
    else // set F is empty
    {
        series z_new = z_prime + G_rT_u; // z''
        result = inf(z_new.lfrac(G), r_T_res(T, u_opt));
        if (verbose) {
			cout << "z' = " << z_prime << " could not be respected" << endl; // message that z' could not be respected
			cout << "z'' = " << z_new << endl; // output z''
        }
    }
    
    if (verbose) {
		cout << "u'_opt: " << result << endl;
		cout << "y'_opt: " << (G * result) << endl;
    }
    return result; // return new optimal input
}

/// <summary>
/// Calculates the new optimal inputs for the Resource Sharing problem with one shared resource and an output-reference update at time T.
/// </summary>
/// <param name="K">Number of subsystems (at least 2)</param>
/// <param name="T">Time at which the output-reference is updated</param>
/// <param name="beta">Monomial describing the shared resource</param>
/// <param name="G">Array of transfer functions (series) of the subsystems (in each case ignoring all other subsystems)</param>
/// <param name="z_prime">Array of new output references (series) for the subsystems</param>
/// <param name="x_A_opt">Array of (old) optimal inputs, each respecting its old output-reference z_k</param>
/// <returns>Vector of updated optimal inputs</returns>
vector<series> output_reference_update_RS_one_resource(int K, long T, series beta, series G[], series z_prime[], vector<series> x_A_opt, bool verbose)
{
    if (verbose) cout << "Resource sharing with a single resource and output-reference update at T = " << T << ":" << endl;

    unsigned int iteration = 0;
    vector<series> u_opt_prime = vector<series>(K); // vector of optimal updated inputs to be returned
    vector<series> L_A = vector<series>(K); // L_A^k for 1 <= k <= K
    vector<series> L_R = vector<series>(K); // L_R^k for 1 <= k <= K

    // Investigate if any x_A_opt^k is the epsilon series, needed in case "RS_one_resource" encounters problems
    for (int i = 0; i < x_A_opt.size(); i++)
    {
        if (x_A_opt[i] == series::Epsilon())  // Check if x_A_opt^k is epsilon
        {
            // The problem has the solution equal to the epsilon series for S^i
            if (verbose) cout << "Not possible because " << "x_A_opt^" << (i + 1) << " is eps!" << endl;
            return u_opt_prime; // return vector of epsilon series for S^k with k >= i
        }
    }
    
    // Initialize H_A, H_R and last elements of L_A, L_R with gd(0, infinity)
    series H_A = gd(0, infinit);
    series H_R = gd(0, infinit);
    L_A[K - 1] = gd(0, infinit);
    L_R[K - 1] = gd(0, infinit);
    
    // Output the last elements of L_A and L_R
    if (verbose) {
		cout << "L_A_" << K << " = " << L_A[K - 1] << endl;
		cout << "L_R_" << K << " = " << L_R[K - 1] << endl;
    }

    // Calculate L_A^k and L_R^k for all other k
    for (int k = K - 2; k >= 0; k--)
    {
        series r = r_T_res(T, x_A_opt[k + 1]);
        L_A[k] = hadamard_prod(L_A[k + 1], r);
        L_R[k] = hadamard_prod(L_R[k + 1], G[k + 1] * r);
        if (verbose) {
            cout << "L_A_" << (k + 1) << " = " << L_A[k] << endl;
            cout << "L_R_" << (k + 1) << " = " << L_R[k] << endl;
        }
    }

    for (int k = 0; k < K; k++) // iteration for subsystem S^k
    {
        iteration = 0; // reset counter for iterations
        series x_0 = series::Top(); // top series (placeholder)
        series a = series::Epsilon(); // start of iteration for least fixed point: epsilon series

        if (verbose) cout << "Iterations for the least fixed point of Y_" << (k + 1) << ":" << endl;

        series HA_LA = hadamard_prod(H_A, L_A[k]); // Hadamard product of H_A^k and L_A^k
        series HR_LR = hadamard_prod(H_R, L_R[k]); // Hadamard product of H_R^k and L_R^k
        series rT_xA = r_T(T, x_A_opt[k]); // r_T(x_A,opt^k)
        
        // Calculate the least fixed point of Y^k
        while (x_0 != a)
        {
            // starting value of the current interation = value from the last iteration
            // (or the Epsilon series if this is the first iteration)
            x_0 = a;

            a = hadamard_prod(HR_LR, G[k] * x_0);
            a = hadamard_dualres(beta * a, HA_LA);
            a = a + rT_xA + x_0;
            if (verbose) cout << "    Iteration " << (1 + iteration++) << ": " << a << endl; // output result of the current iteration
        }
        
        // Now a = x_0 is the least fixed point of Y^k
        
        // This will either be z^k' or z^k'' (needed in the calculation of Psi^k(x) or Psi_(z^k'')^k(x), respectively)
        series z;
        series Gk_x0 = G[k] * x_0;
        
        // Check if the set F^k is empty
        if (Gk_x0.operator<=(z_prime[k])) // set F^k is not empty
        {
            z = z_prime[k]; // use z^k' as z
            if (verbose) cout << "z' used in Gamma_" << (k+1) << ": " << z << endl;
        }

        else // set F^k is empty
        {
            series z_k_ii = z_prime[k] + Gk_x0; // calculate z^k''
            z = z_k_ii; // use z^k'' as z
            if (verbose) cout << "z'' used in Gamma_" << (k+1) << ": " << z << endl;
        }
        
        x_0 = series::Epsilon();
        a = series::Top(); // start of iteration for greatest fixed point

        if (verbose) cout << "Iterations for the greatest fixed point of Gamma_" << (k + 1) << ":" << endl;
        iteration = 0;

        // Calculate the greatest fixed point of Gamma^k (or Gamma_(z^k'')^k, depending on F^k)
        while (x_0 != a)
        {
            // starting value of the current interation = value from the last iteration
            // (or the Top series if this is the first iteration)
            x_0 = a;

            // calculate the value of Psi^k(x_0) (or Psi_(z^k'')^k(x_0), depending on F^k)
            series Psi = (hadamard_prod(HA_LA, x_0)).lfrac(beta);
            Psi = inf(z, hadamard_res(Psi, HR_LR));
            a = inf(x_0, inf(Psi.lfrac(G[k]), r_T_res(T, x_A_opt[k])));
            
            if (verbose) cout << "    Iteration " << (1 + iteration++) << ": " << a << endl; // output result of current iteration
        }
        
        // Now a = x_0 is the greatest fixed point of Gamma^k (or Gamma_(z^k'')^k, depending on F^k)
        // and therefore our new optimal input x_A_opt^k'
        u_opt_prime[k] = x_0;

        // Update H_A, H_R for the next iteration/subsystem
        if (k < K - 1) // not necessary after the last subsystem
        {
            H_A = hadamard_prod(H_A, x_0);
            H_R = hadamard_prod(H_R, G[k] * x_0);
            
            if (verbose) {
                cout << "\nH_A_" << (k + 2) << " = " << H_A << endl;
                cout << "H_R_" << (k + 2) << " = " << H_R << endl;
            }
        }
    }
    
    for (int k = 0; k < u_opt_prime.size(); k++)
    {
        if (verbose) {
            cout << "\nSubsystem " << (k + 1) << ":" << endl; // subsystem number
            cout << "u'_opt_" << (k + 1) << ": " << u_opt_prime[k] << endl; // optimal input
            cout << "y'_opt_" << (k + 1) << ": " << (G[k] * u_opt_prime[k]) << endl; // optimal output
        }
    }

    return u_opt_prime; // return vector of new optimal inputs
}

/// <summary>
/// Example from Section 4 of 2022 WODES paper 
/// </summary>
void train_station_example_WODES()
{
    matrix<series> A1(3, 3), B1(3, 1), C1(1, 3), A2(2, 2), B2(2, 1), C2(1, 2), A3(3, 3), B3(3, 1), C3(1, 3); // matrices
    series beta = gd(2, 3); // resource
    bool verbose = true;

    // Subsystem 1
    A1(0, 1) = gd(1, 1); A1(1, 0) = gd(0, 4); A1(2, 1) = gd(0, 2);
    B1(0, 0) = gd();
    C1(0, 2) = gd();
    
    // Subsystem 2
    A2(1, 0) = gd(0, 4);
    B2(0, 0) = gd(); C2(0, 1) = gd();

    // Subsystem 3
    A3(1, 0) = gd(0, 4); A3(1, 1) = gd(1, 2); A3(2, 1) = gd(0, 3);
    B3(0, 0) = gd();
    C3(0, 2) = gd();

    // Transfer functions
    series H1 = C1 * A1.star() * B1;
    series H2 = C2 * A2.star() * B2;
    series H3 = C3 * A3.star() * B3;

    series G1 = H1 * (beta * H1).star();
    series G2 = H2 * (beta * H2).star();
    series G3 = H3 * (beta * H3).star();

    // Console output (transfer functions)
    cout << "Train Station Example (Section 4):" << endl;
    cout << "beta = " << beta << endl;
    cout << "G1 = " << G1 << endl;
    cout << "G2 = " << G2 << endl;
    cout << "G3 = " << G3 << endl;

    // Output references
    series z1 = gd(0, 19) + gd(1, 27) + gd(2, 59) + gd(4, infinit);
    series z2 = gd(0, 24) + gd(1, 40) + gd(2, 52) + gd(3, infinit);
    series z3 = gd(0, 47) + gd(2, infinit);

    // Transfer functions and output references as arrays
    series G[] = { G1, G2, G3 };
    series z[] = { z1, z2, z3 };

    // Compute the optimal inputs of the resource sharing problem
    vector<series> x_A_opt = RS_one_resource(3, G, z, beta, verbose);

    // Output-reference update
    int T = 30; // time of the update
    
    // New output-references
    series z_prime_1 = gd(0, 19) + gd(1, 27) + gd(2, 59) + gd(5, infinit);
    series z_prime_2 = z2;
    series z_prime_3 = z3;

    series z_prime[] = { z_prime_1, z_prime_2, z_prime_3 }; // output-references as an array

    // Solve the output-reference update
    output_reference_update_RS_one_resource(3, T, beta, G, z_prime, x_A_opt, verbose);
}

/// <summary>
/// Performance evaluation of the toolbox
/// </summary>
void performance_evaluation() {
    unsigned int m_max = 40;
    unsigned int K_max = 40;

    vector<series> H(K_max); // dynamics of subsystems excluding resource
    vector<series> G(K_max); // dynamics of subsystems including resource
    vector<series> z(K_max); // output-reference signals of subsystems
    vector<series> z_prime(K_max); // output-reference updates of subsystems
    series beta;
    int max_g = 1;
    int min_d = 1;
    int max_d = 20;
    int T = 20;
    bool verbose = false;
    int tk, tauk, omegak1, omegak2, Tk, Tkprime, Omegak1, Omegak2;

    // save computational time
    std::ofstream myfile;
    myfile.open ("results.csv");
    myfile << "K,m,time\n";

    for (int K = 1; K <= K_max; K++) { // number of subsystems
        // uniform distribution U(min,max) -> min + (rand() % (int)(max - min + 1))

        tk      = min_d + (rand() % (int)(max_d - min_d + 1));
        tauk    = min_d + (rand() % (int)(max_d - min_d + 1));
        omegak1 = min_d + (rand() % (int)(max_d - min_d + 1));
        omegak2 = min_d + (rand() % (int)(max_d - min_d + 1));
        Tk      = min_d + (rand() % (int)(max_d - min_d + 1));
        Tkprime = min_d + (rand() % (int)(max_d - min_d + 1));
        Omegak1 = min_d + (rand() % (int)(max_d - min_d + 1));
        Omegak2 = min_d + (rand() % (int)(max_d - min_d + 1));

        H[K - 1] = series(gd(0, tk) + gd(1, tk + omegak1), gd(2, tk + omegak1 + omegak2), gd(1, tauk));
        z[K - 1] = gd(0, Tk) + gd(1, infinit);
        z_prime[K - 1] = gd(0, Tkprime) + gd(1, Tkprime + Omegak1) + gd(2, Tkprime + Omegak1 + Omegak2) + gd(3, infinit);

        for (int m = 1; m <= m_max; m++) { // number of resources
            beta = gd(m, 1);
            for (int kk = 1; kk <= K; kk++) {
				G[kk - 1] = H[kk - 1] * (beta * H[kk - 1]).star();
            }
            cout << "m = " << m << ", K = " << K << endl;
			std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
		    vector<series> x_A_opt = RS_one_resource(K, &G[0], &z[0], beta, verbose);           
			output_reference_update_RS_one_resource(K, T, beta, &G[0], &z_prime[0], x_A_opt, verbose);
			std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
            
            myfile << K << "," << m << "," << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() / 1000.0 << "\n";
        }
    }
	myfile.close();
}

int main()
{

    // Example from Section 4 of 2022 WODES paper
    train_station_example_WODES();

    // Performance evaluation from Section 5 of 2022 WODES paper
    // performance_evaluation();

    getchar();
}

