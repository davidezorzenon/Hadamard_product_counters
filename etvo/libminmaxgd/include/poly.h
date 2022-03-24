#ifndef __POLY_H__
#define __POLY_H__

#include "gd.h"

#define taille 1600
#define taille_max_polynome 128000 // size mx polynom
#define C_LIMIT_SIZE 128000  //size max polynom too

//int forcage=0; definie dans vars.h

namespace mmgd
{
	void sort_gd(gd *, const int *);

	class poly {



	private:
		gd *data;	// pointeur sur des objets monomes
		unsigned int n; // nombre d'��ents du polyn�e
		unsigned int nblock; // nombre de blocks de (taille*sizeof(gd)) allou� au polyn�e
		unsigned int simple; // vaut 1 lorsque le polyn�e est sous forme minimale

		void fail(char *); // pour les messages en cas de pb d'allocation
		//void affecte(unsigned int , const gd* ,unsigned int propre); // affectation avec 1 vecteur de monome

	public:
		poly(void);	// constructeur 0 : poly= (+00,-00) epsilon
		poly(const poly &);  // constructuer 1 : serie initialisee avec un objet poly
		poly(const gd&);
		poly(long g, long d);
		poly(unsigned int, gd *); // constructeur 2 : initialise avec 1 vecteur de monome
		~poly(void); // destructeur


		poly& operator=(const poly &); // initialise avec un objet polynome

		poly& operator ()(long g, long d); //initialisation avec deux monomes



		void init(unsigned int, gd*, int); // initialise avec 1 vecteur de monomes

		poly&  operator=(const gd& gd1);	  // initialise avec un monome cast monome->polynome
		poly&  init(long g, long d);	 // initialise 2 entiers cast monome->polynome



		void affecte(unsigned int, const gd*, unsigned int propre); // affectation avec 1 vecteur de monome

		gd&  getpol(int i) const
		{
			return data[i];

			/*** version pour le d�eloppement
				 if(i<n) {
				 return data[i];
			 }
			 else {
				 std::cout<<"Erreur index polynome (see getpol()) \n";exit(1);}
				 *****/
		} // pour acceder aux elements de data


		unsigned int getn() const { return n; }
		void setsimple() { simple = 1; }
		gd * getdata() { return data; }
		void  popj(unsigned int j); // supprime l'��ent j
		void pop();    // supprime le dernier ��ent du polynome
		void  add(const gd& m1);  // ajoute un ��ent �la fin
		void  simpli(); // tri et simplification du polynome
		void  onlysimpli(); // simplification du polynome

        friend bool mycompgd( gd  pr1,  gd  pr2);
		friend int compgd(const void * p1, const void * p2);
		void swapgd(gd& a, gd& b);

		int partitionner(gd *tab, int debut, int dernier, int pivot, int comp(const void *, const void*));
		friend void qsort_gd(gd *adtab, int premier, int dernier, int comp(const void *, const void*));

		//void sort_gd(void);

		int operator==(const poly&);

		friend  poly oplus(poly &, poly&); // somme de 2 polynomes, retourne un nouveau polynome

		friend  poly oplus(gd&, gd&);     // somme de deux monomes -> un polynome
		friend  poly oplus(poly&, gd&); // somme d'1 polynome et d'un monome
		friend  poly oplus(gd&, poly&); // somme d'un monome et d'1 polynome
		friend  poly oplus(poly &, poly&, poly&); // somme de 3 polynomes, retourne un nouveau polynome
		friend  poly oplus(poly &, poly&, poly&, poly&); // somme de 4 polynomes, retourne un nouveau polynome

		friend poly  otimes(poly &poly1, poly &poly2); // produit de polynome
		friend poly  otimes(poly& poly1, gd& gd2);  // produit d'un polynome par un monome
		friend poly  otimes(gd& gd1, poly& poly2); // produit d'un monome par un polynome

		friend poly inf(poly& poly1, poly& poly2);  // inf de polynome
		friend poly inf(poly& poly1, gd& gd2);      // inf d'1 polynome et d'1 monome
		friend poly inf(gd& gd1, poly& poly2);      // inf d'1 monome  et d'1 polynome

		friend poly frac(poly& poly1, gd& gd2);    // residuation d'1 polynome par 1 monome
		friend poly frac(poly& poly1, poly& poly2); //residuation de poly1/poly2
		friend poly frac(gd& gd1, poly& poly2); 	//residuation d'un monome par un polynome

		friend poly prcaus(poly &);





		friend std::ostream& operator<<(std::ostream &, poly &); // surdefinition de <<
		friend std::fstream& operator<<(std::fstream &, poly &); // surdefinition de << sur fichier


		// Append from 17/04/2015, for Soraia
		friend poly odot(const poly& poly1, const poly& poly2);  // Hadamard de polynome
		friend poly fracodotsharp(poly& poly1, poly& poly2); // residue Hadamard de polynome, retourne un nouveau polynome
															// poly1 >> odot(result,poly2)
		friend poly fracodotflat(poly& poly1, poly& poly2); // residue dual Hadamard de polynome, retourne un nouveau polynome
															// poly1 << odot(result,poly2) Hypothese poly2>>poly1 sinon on retourne Top

		// |=====================================================================|
		// | Hadamard product on polynomials                                     |
		// |=====================================================================|
		// | Description:														 |
		// | New version of Hadamard product, residuation and dual residuation   |
		// | of the Hadamard product on polynomials.   							 |
		// | Added by Davide Zorzenon (07/03/2020)								 |
		// |---------------------------------------------------------------------|

		friend poly hadamard_prod(poly& poly1, poly& poly2); 
		// Hadamard product of 2 polynomials
		//
		// Inputs:
		//			poly1 (poly&): polynomial in M_in^ax[[g,d]]
		//			poly2 (poly&): polynomial in M_in^ax[[g,d]]
		//
		// Output:
		//			poly_result (poly): polynomial in M_in^ax[[g,d]]
		//
		// Description:
		//          Vanilla form, does not use any trick to fasten the computation

		friend poly hadamard_res(poly& poly1, poly& poly2); 
		// Residual of the Hadamard product of 2 polynomials
		//
		// Inputs:
		//			poly1 (poly&): polynomial in M_in^ax[[g,d]]
		//			poly2 (poly&): polynomial in M_in^ax[[g,d]]
		//
		// Output:
		//			poly_result (poly): polynomial in M_in^ax[[g,d]]

		friend poly hadamard_dualres(poly& poly1, poly& poly2); 
		// Dual residual of the Hadamard product of 2 polynomials
		//
		// Inputs:
		//			poly1 (poly&): polynomial in M_in^ax[[g,d]]
		//			poly2 (poly&): polynomial in M_in^ax[[g,d]]
		//
		// Output:
		//			poly_result (poly): polynomial in M_in^ax[[g,d]]
		//
		// Exception:
		//			an exception is returned when there is a time t such that
		//			(poly2(t) == +infinit or poly2(t) == -infinit) and	
		//			poly1(t) != +infinit, since in this case the operation is not 
		//			defined. The output returned in this case is g-inf.d+inf 
	};

}//fin namespace mmgd
#endif

