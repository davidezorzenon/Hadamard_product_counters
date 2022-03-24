#ifndef MATRIXMAP_H
#define MATRIXMAP_H


#include <map>
#include <utility>
#include "serie.h"

namespace mmgd
{

	serie s_epsilon;
	typedef std::pair<int, int> ind;
	/*************************************************************************************/
	/*************************************************************************************/

	class matrixMap {
	private:
		int col, row;
		unsigned int value;

		std::map<std::pair<int, int>, serie> * aData;
		//        void affecte(std::map<std::pair<int,int>,serie>); //affectation d'un ��ent avec un tableau de series
		void affecte(std::map<std::pair<int, int>, serie> & list_data, int ligne, int colonne, int valeur);

	public:
		matrixMap(void);
		matrixMap(int, int);// constructeur 0 : matrice = epsilon + epsilon.(epsilon)*
		matrixMap(const matrixMap &);// constructuer 1 : matrice initialisee avec un objet matrice

		matrixMap(const serie &);// constructuer 2 : matrice initialisee avec un objet serie
		matrixMap(poly &);// constructuer 3 : matrice initialisee avec un objet poly
		matrixMap(gd &);// constructuer 4 : matrice initialisee avec un objet monome


		~matrixMap(void); // destructeur

		int  getrow(void) { return row; }
		int getcol(void) { return col; }
		int getvalue(void) { return value; }


		matrixMap&  operator =(const matrixMap& a); //surdefinition du =, permet d'initialiser avec une autre matrice
		int  operator !=(const matrixMap& a); //surdefinition du =, permet d'initialiser avec une autre matrice
		matrixMap&  operator =(smatrix& a);

		matrixMap&  operator =(serie& a); //surdefinition du =, permet d'initialiser avec une serie cast serei matrice
		matrixMap& operator =(gd& gd1);	  // initialise avec un monome cast monome->matrice
		matrixMap& operator =(poly& p1);	  // initialise avec un polynome cast polynome->matrice

		serie& operator()(int i, int j);


		int operator==(const matrixMap & M); // surdefiniton de l'�alit�de matrice

		friend std::ostream &  operator<<(std::ostream &flot, matrixMap &);//surdef. de <<
		friend std::fstream &  operator<<(std::fstream &flot, matrixMap &); // surdef de >> pour fichier

		friend matrixMap oplus(matrixMap&, matrixMap&); //somme de 2 matrices de series p�iodiques


		friend matrixMap transpose(matrixMap& a);

		friend matrixMap inf(matrixMap& a, matrixMap& b); // inf de 2 matrices de s�ies p�iodiques

		friend matrixMap otimes(matrixMap&, matrixMap&); //produit de 2 matrices de series p�iodiques

		friend matrixMap lfrac(matrixMap&, matrixMap&); //residuation a gauche de 2 matrices de series p�iodiques b\a

		friend matrixMap rfrac(matrixMap& a, matrixMap& b);  // residuation �droite de 2 matrices de series p�iodiques a/b

		friend matrixMap star(matrixMap ak_1);

		friend matrixMap prcaus(matrixMap &);

		friend int compare_multi(int a, int b);



	};

}//fin namespace mmgd
#endif // matrixMapMAP_H
