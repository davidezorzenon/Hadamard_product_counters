#ifndef _WIN32
#include "../include/smatrix.h"
#else
#include "..\include\smatrix.h"
#endif

namespace mmgd
{
	void smatrix::affecte(const serie ** tab, int ligne, int colonne)
	{
		int i, j, n;


		if (row > 0 && col > 0)
		{
			for (n = 0; n < row; n++)
				delete[] data[n];

			delete[] data;
			row = 0;
			col = 0;
		}


		row = ligne;
		col = colonne;

		if (row > 0 && col > 0)
		{
			data = new serie*[row];
			if (data == NULL) { mem_limite  l(15);   throw(l); }
			for (i = 0; i < row; i++)
			{
				data[i] = new serie[col];
				if (data[i] == NULL) { mem_limite  l(16);   throw(l); }

				for (j = 0; j < col; j++)	  data[i][j] = tab[i][j];

			}
		}
		else {
			data = NULL;
			row = 0;
			col = 0;
		}
	}


	// constructeur par defaut de la classe smatrix (matrice 1x1 contenant
	// epsilon)
	smatrix::smatrix(void)
	{
		serie eps;
		gd r;
		gd epsilon;

		r.init(0, 0);
		eps.init(epsilon, epsilon, r);

		row = 1;
		col = 1;
		data = new serie*[row];
		if (data == NULL) { mem_limite  l(17);   throw(l); }
		data[0] = new serie[col];
		if (data[0] == NULL) { mem_limite  l(18);   throw(l); }
		data[0][0].init(epsilon, epsilon, r);

	}



	smatrix::smatrix(int i, int j) // constructeur initialisant
	{
		int n;
		if (i > 0 && j > 0) {
			row = i; col = j;
			data = new serie*[row];
			if (data == NULL) { mem_limite  l(19);   throw(l); }
			for (n = 0; n < row; n++)
			{
				data[n] = new serie[col];
				if (data[n] == NULL) { mem_limite  l(20);   throw(l); }
			}

		}
		else {
			data = NULL;
			row = 0;
			col = 0;
		}
	}

	smatrix::smatrix(const smatrix & a)	// constructeur initialisation par une autre matrice
	{
		row = 0;
		col = 0;
		affecte((const serie**)a.data, a.row, a.col);

	}

	smatrix::smatrix(const serie & a)	// constructeur initialisation par une serie
	{
		const serie * b = &a;
		affecte((const serie**)&b, 1, 1);

	}

	smatrix::smatrix(poly & a)	// constructeur initialisation par un polyn�e
	{
		serie temp;
		serie * adtemp;
		temp = a;
		adtemp = &temp;
		affecte((const serie**)&adtemp, 1, 1);

	}

	smatrix::smatrix(gd & a)	// constructeur initialisation par un monome
	{
		serie temp;
		serie *adtemp;
		temp = a;
		adtemp = &temp;
		affecte((const serie**)&adtemp, 1, 1);
	}

	smatrix :: ~smatrix()	// destructeur
	{
		int n;
		if (row > 0 && col > 0)
		{
			for (n = 0; n < row; n++)
				delete[] data[n];

			delete[] data;
		}
		row = 0;
		col = 0;
	}



	smatrix& smatrix ::  operator =(const smatrix& a)
		// initialise avec un objet smatrix, surdefinition du =
	{
		if (&a == this) return *this;// si a est = de la matrice courante

		affecte((const serie**)a.data, a.row, a.col);
		return *this;
	}


	smatrix& smatrix :: operator =(serie& a) //surdefinition du =, permet d'initialiser avec une serie cast serei matrice
	{
		serie  * b = &a;
		affecte((const serie**)&b, 1, 1);
		return *this;
	}

	smatrix& smatrix :: operator =(poly& p1)	  // initialise avec un polynome cast polynome->matrice
	{
		serie temp;
		serie * adtemp;
		temp = p1;
		adtemp = &temp;
		affecte((const serie**)&adtemp, 1, 1);
		return *this;

	}

	smatrix& smatrix :: operator =(gd& gd1)	  // initialise avec un monome cast monome->matrice
	{
		serie temp;
		serie * adtemp;
		temp = gd1;
		adtemp = &temp;
		affecte((const serie**)&adtemp, 1, 1);
		return *this;
	}


	int smatrix::operator==(const smatrix & M)
	{
		int i, j;

		for (i = 0; i < row; i++)
			for (j = 0; j < col; j++)
				if (!(data[i][j] == M.data[i][j]))
					return 0;

		return 1;
	}



	std::ostream&  operator<<(std::ostream &flot, smatrix &a)
		// surdefinition de <<
		// affichage
	{
		int i, j;
		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				flot << "[" << i << "," << j << "] = " << a.data[i][j] << "\n";
			}
		}
		return flot;
	}


	std::fstream&  operator<<(std::fstream &flot, smatrix &a)
		// surdefinition de <<
		// pour fichier texte
	{
		int i, j;
		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				flot << "[";
				flot << i;
				flot << ",";
				flot << j;
				flot << "] = ";
				flot << a.data[i][j] << std::endl;
			}
		}
		return flot;
	}

	smatrix oplus(smatrix& a, smatrix& b)
	{
		int i, j;
		smatrix result(a.row, b.col);

		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				result.data[i][j] = oplus(a.data[i][j], b.data[i][j]);
			}
		}
		return(result);
	}

	smatrix inf(smatrix& a, smatrix& b)
	{
		int i, j;
		smatrix result(a.row, b.col);

		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				result.data[i][j] = inf(a.data[i][j], b.data[i][j]);
			}
		}
		return(result);
	}


	smatrix otimes(smatrix& a, smatrix& b)
	{
		int i, j, k;
		serie temp;
		gd epsilon;
		smatrix result(a.row, b.col);

		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < b.col; j++)
			{
				result.data[i][j] = epsilon;
				for (k = 0; k < a.col; k++)
					result.data[i][j] = oplus(result.data[i][j], temp = otimes(a.data[i][k], b.data[k][j]));
			}
		}
		return(result);
	}



	smatrix odot(smatrix& a, smatrix& b)
	{
		int i, j, k;
		serie temp;

		smatrix result(a.row, b.col);

		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < b.col; j++)
			{

				result(i, j) = gd(_infinit, infinit);

				for (k = 0; k < a.col; k++)
					result(i, j) = inf(result(i, j), temp = odot(a(i, k), b(k, j)));


			}
		}
		return(result);
	}




	smatrix lfrac(smatrix& a, smatrix& b) //residuation a gauche de 2 matrices de series p�iodiques b\a
	{
		int i, j, k;
		smatrix result(b.col, a.col);
		serie tampon;

		for (i = 0; i < b.col; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				result(i, j) = frac(a(0, j), b(0, i));
				for (k = 1; k < b.row; k++)
				{
					tampon = frac(a(k, j), b(k, i));
					result(i, j) = inf(result(i, j), tampon);
				}
			}
		}

		return(result);
	}

	smatrix rfrac(smatrix& a, smatrix& b) //residuation a droite de 2 matrices de series p�iodiques a/b
	{
		int i, j, k;
		serie temporaire;
		smatrix result(a.row, b.row);

		for (i = 0; i < a.row; i++)
		{
			for (j = 0; j < b.row; j++)
			{
				result(i, j) = frac(a(i, 0), b(j, 0));
				for (k = 1; k < b.col; k++)
				{
					temporaire = frac(a(i, k), b(j, k));
					result(i, j) = inf(result(i, j), temporaire);
				}
			}
		}

		return(result);
	}


	smatrix Duallfrac(smatrix& a, smatrix& b) //residuation a gauche de 2 matrices de series p�iodiques b\a
	{
		int i, j, k;
		smatrix result(b.col, a.col);
		serie tampon;
		gd mtemp;

		for (i = 0; i < b.col; i++)
		{
			for (j = 0; j < a.col; j++)
			{
				mtemp = b(0, i).getq().getpol(0);
				result(i, j) = Dualfrac(a(0, j), mtemp);
				for (k = 1; k < b.row; k++)
				{
					mtemp = b(k, i).getq().getpol(0);
					tampon = Dualfrac(a(k, j), mtemp);
					result(i, j) = oplus(result(i, j), tampon);
				}
			}
		}

		return(result);
	}
	smatrix transpose(smatrix &P)
	{
		int i, j;
		smatrix PT(P.col, P.row);
		for (i = 0; i < P.col; i++)
		{
			for (j = 0; j < P.row; j++)
			{
				PT(i, j) = P(j, i);
			}
		}
		return PT;
	}
	/// Essai 2013 june, is it possible to reduce complexity by permuting row of A ? the test leads to an ambiguoys answer

	typedef struct
	{
		double p;
		int g;
		int index;
	}TpenteIndex;
	/// this function define the criterion to sort the row, the smallest slope before, if two slpoes equal the one with
	/// the smallest gamma exponent
	int comppente(const void* pt1, const void*pt2)
	{
		TpenteIndex* p1 = (TpenteIndex*)pt1;
		TpenteIndex*p2 = (TpenteIndex*)pt2;
		if (p1->p < p2->p) { return -1; }
		if (p1->p > p2->p) { return 1; }
		if (p1->p == p2->p) {
			if (p1->g < p2->g) return 1;
			if (p1->g > p2->g) return -1;

			else

				return 0;
		}
	}

	/// Essai 2013 june, is it possible to reduce complexity by permuting row of A, result is not so obvious
	smatrix permutation(smatrix &a)
	{
		gd *temp;
		int * perm;
		int i, j;
		double pentetemp;
		double pentek;
		int indexk, k;
		TpenteIndex *pente;
		smatrix P(a.row, a.row);
		smatrix PT(a.row, a.row);
		temp = (new gd[a.row]);
		perm = (new int[a.row]);
		pente = (new TpenteIndex[a.row]);


		for (i = 0; i < a.row; i++)
		{
			pente[i].p = (double)infinit;
			pente[i].g = (double)_infinit;
			for (j = 0; j < a(i, i).getp().getn(); j++)
			{
				if (a(i, i).getp().getpol(j).getd() != 0 && a(i, i).getp().getpol(j) != epsilon)
				{
					pentetemp = (double)a(i, i).getp().getpol(j).getg() / a(i, i).getp().getpol(j).getd();

					if (pente[i].p > pentetemp)
					{
						pente[i].p = pentetemp;
						pente[i].g = a(i, i).getp().getpol(j).getg();
					}
				}
			}
			for (j = 0; j < a(i, i).getq().getn(); j++)
			{
				if (a(i, i).getq().getpol(j).getd() != 0 && a(i, i).getq().getpol(j) != epsilon)
				{
					pentetemp = (double)a(i, i).getq().getpol(j).getg() / a(i, i).getq().getpol(j).getd();


					if (pente[i].p > pentetemp)
					{
						pente[i].p = pentetemp;
						pente[i].g = a(i, i).getp().getpol(j).getg();

					}
				}
			}
			if (a(i, i).getr().getd() != 0)
			{
				pentetemp = (double)a(i, i).getr().getg() / a(i, i).getr().getd();

				if (pente[i].p >= pentetemp)
				{
					pente[i].p = pentetemp;
					pente[i].g = a(i, i).getr().getg();

				}
			}

			pente[i].index = i;
		}

		/* for(i=0;i<a.row;i++)
		   {cout<<"pente "<<i<<" = "<<pente[i].p<<" index i "<<pente[i].index<<endl;
			cout<<"a("<<i<<","<<i<<"="<<a(i,i)<<endl;
		   }
		   */

		qsort(pente, a.row, sizeof(TpenteIndex), comppente);
		// cout<<"a.row"<<a.row<<endl;
	   /*   for(i=0;i<a.row;i++)
		 {cout<<"pente "<<i<<" = "<<pente[i].p<<" index i "<<pente[i].index<<endl;
		  cout<<"a("<<i<<","<<i<<"="<<a(i,i)<<endl;
		 }*/
		smatrix Pt(a.row, a.row);
		for (i = 0; i < a.row; i++)
		{

			P(i, pente[i].index).init(epsilon, e, e);
			Pt(pente[i].index, i).init(epsilon, e, e);
		}
		//cout<<"P"<<P<<endl;
		//cout<<"a"<<a<<endl;
		smatrix atemp;
		atemp = otimes(P, a);
		// cout<<"temp"<<atemp<<endl;
		atemp = otimes(atemp, Pt);
		/* if (atemp==a) cout<<"*********** OK ***********"<<endl;
		 else
		 cout<<"atemp"<<atemp<<endl;
		 system("pause");*/
		a = atemp;
		return P;
	}


	smatrix star(smatrix ak_1)
	{
		serie akkstar, temp, akktemp;
		gd e(0, 0);
		smatrix a(ak_1.row, ak_1.col);
		serie s;
		int i, j, k;
		int score = 0, scoremax = 0;

		for (k = 0; k < a.row; k++)
		{

			akkstar = star(ak_1(k, k));

			//system("cls");
			//score=0;
			//cout<<k<<"\n";


			for (i = 0; i < a.row; i++)
			{

				for (j = 0; j < a.col; j++)

				{

					akktemp = otimes(akkstar, ak_1(k, j));

					akktemp = otimes(ak_1(i, k), akktemp);

					a.data[i][j] = oplus(ak_1(i, j), akktemp);
					//score=score+a.data[i][j].getp().getn()+a.data[i][j].getq().getn();
				 //  cout<<" "<<a.data[i][j].getp().getn()+a.data[i][j].getq().getn()<<" ";
				//  cout<<"k"<<k<<"i"<<i<<"j"<<j<<"akij"<< a.data[i][j]<<endl;
				}
			}

			ak_1 = a;
			// cout<<"\n";
	   //if(score>scoremax) scoremax=score;

	  // cout<<" k "<<k<<" a"<<k<<"="<<ak_1<<endl;
		}

		for (k = 0; k < a.row; k++)
		{
			a.data[k][k] = oplus(e, a(k, k));

		}
		//	cout<<"scoremax"<<scoremax<<endl;
			//system("pause");
		return(a);
	}


	smatrix prcaus(smatrix & s)
	{
		smatrix local(s.row, s.col);

		int i, j;

		for (i = 0; i < s.row; i++) for (j = 0; j < s.col; j++) local(i, j) = prcaus(s(i, j));

		return local;
	}

} //fin namespace mmgd

