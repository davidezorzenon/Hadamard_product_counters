/*****************************************************************************************/
/********* Classe serie ******************************************************************/
/*****************************************************************************************/
#ifndef __SERIE_H__
#define __SERIE_H__
/*****************************************************************************************/
/********* Classe serie ******************************************************************/
/*****************************************************************************************/

#include "poly.h"

namespace mmgd
{
	class serie {
	private:
		poly p;
		poly q;
		gd r;
		int canonise;
		void affecte(const poly&, const  poly&, const gd&, int); //affectation avec 2 polynomes et un monome
		void fail(char *msg) { std::cout << msg << "\n"; }
	public:
		serie(void);// constructeur 0 : serie = epsilon + epsilon.(epsilon)*
		serie(const serie &);// constructuer 1 : serie initialisee avec un objet serie
		serie(const poly& p1, const poly& q1, gd& r1);
		//constructeur 2 : initialise avec p1,q1, r1
		serie(poly& p);//constructeur 2 bis : initialis�avec un poyn�e
		serie(gd& gd1);//constructeur 2 bis : initialis�avec un monome
		serie(unsigned int np1, unsigned int nq1, gd* p1, gd* q1, gd& r1);
		// constructeur 3 : initialise avec p1, q1, r1
		~serie(void); // destructeur
		poly&  getp(void) { return p; }
		poly&  getq(void) { return q; }
		gd&  getr(void) { return r; }

		serie&  operator =(const serie& serie1); //surdefinition du =, permet d'initialiser avec une autre s�ie
		serie& operator=(const gd& gd1);	  // initialise avec un monome cast monome->serie
		serie& operator=(const poly& p1);	  // initialise avec un polynome cast polynome->serie


		void init(poly& p1, poly& q1, gd& r1); //init avec p1 , q1, r1
		void init(unsigned int, unsigned int, gd*, gd*, gd&); // initialise avec 2 vecteurs de monomes et d'1 monome
		void init(gd& pgd1, gd & qgd1, gd& r1); // initialise avec 3 monomes
		void init(poly& p1, gd& qgd1, gd& r1); // initialise avec 1 polyn�e 1 monome 1 monome
		void init(gd& pgd1, poly& q1, gd& r1); // initialise avec 1 mon�e 1 polynome 1 monome
		void canon();	// mise sous forme canonique de la serie

		int operator==(serie &);

		friend std::ostream&  operator<<(std::ostream &flot, serie &serie1);//surdef. de <<

		friend std::fstream&  operator<<(std::fstream &flot, serie &serie1);//surdef. de << fichier

		friend serie oplus(serie &, serie &); //somme de 2 series p�iodiques
		friend serie oplus(poly&, serie&);
		friend serie oplus(serie&, poly&);
		friend serie oplus(gd&, serie&);
		friend serie oplus(serie&, gd&);

		friend serie otimes(serie &, serie &); //produit de 2 series p�iodiques
		friend serie otimes(poly &pol1, serie &s2);
		friend serie otimes(serie &s2, poly &pol1);
		friend serie otimes(gd &gd1, serie &s2);
		friend serie otimes(serie &s2, gd &gd1);

		friend serie star(poly  poly1); // �oile de polyn�e
		friend serie star(gd & r1);		// �oile de monome
		friend serie star(serie&  s1); //�oile de s�ie


		friend serie inf(serie & s1, serie & s2);
		friend serie inf(serie& s1, poly& p2);
		friend serie inf(poly& p1, serie& s2);
		friend serie inf(gd&, serie&);
		friend serie inf(serie&, gd&);

		friend serie frac(serie   & s1, serie & s2); // residuation de deux s�ies
		friend serie frac(serie   & s1, gd & gd2); //residuation d'une s�ie par un monome
		friend serie frac(serie  & s1, poly & poly1); // residuation d'une s�ie par un polyn�e

		friend serie odot(serie &, serie &);
		friend serie odot(serie& s1, poly& p2);
		friend serie odot(poly& p1, serie& s2);
		friend serie fracodotsharp(serie &, serie &);
		friend serie fracodotflat(serie &, serie &);

		friend serie Dualfrac(serie  & s1, gd & gd2);
		friend serie prcaus(serie &);

		// |===================================================================|
        // | Hadamard product on series                                        |
        // |===================================================================|
        // | Description:													   |
        // | New version of Hadamard product, residuation and dual residuation |
        // | of the Hadamard product on series.           					   |
        // | Added by Davide Zorzenon (07/03/2020)							   |
        // |-------------------------------------------------------------------|

        friend serie hadamard_prod(serie &s1,serie &s2);
        // Hadamard product of 2 series
        //
        // Inputs:
        //			s1 (serie&): series in M_in^ax[[g,d]]
        //			s2 (serie&): series in M_in^ax[[g,d]]
        //
        // Output:
        //			s_result (serie): series in M_in^ax[[g,d]]

        friend serie hadamard_res(serie &s1,serie &s2);
        // Residual of the Hadamard product of 2 series
        //
        // Inputs:
        //			s1 (serie&): series in M_in^ax[[g,d]]
        //			s2 (serie&): series in M_in^ax[[g,d]]
        //
        // Output:
        //			s_result (serie): series in M_in^ax[[g,d]]

        friend serie hadamard_dualres(serie &s1,serie &s2);
        // Dual residual of the Hadamard product of 2 series
        //
        // Inputs:
        //			s1 (serie&): series in M_in^ax[[g,d]]
        //			s2 (serie&): series in M_in^ax[[g,d]]
        //
        // Output:
        //			s_result (serie): series in M_in^ax[[g,d]]

		// Variations of the same functions for monomials / series, polynomial / series
		//friend serie hadamard_prod(serie& s1, gd& gd2);
		//friend serie hadamard_prod(gd& gd1, serie& s2);
		//friend serie hadamard_prod(serie& s1, poly& poly2);
		//friend serie hadamard_prod(poly& poly1, serie& s2);

		//friend serie hadamard_res(serie& s1, gd& gd2);
		//friend serie hadamard_res(gd& gd1, serie& s2);
		//friend serie hadamard_res(serie& s1, poly& poly2);
		//friend serie hadamard_res(poly& poly1, serie& s2);

		//friend serie hadamard_dualres(serie& s1, gd& gd2);
		//friend serie hadamard_dualres(gd& gd1, serie& s2);
		//friend serie hadamard_dualres(serie& s1, poly& poly2);
		//friend serie hadamard_dualres(poly& poly1, serie& s2);
	};
	
	serie fracodotsharp(serie &, serie &);
	serie fracodotflat(serie &, serie &);

}//fin namespace mmgd

#endif

