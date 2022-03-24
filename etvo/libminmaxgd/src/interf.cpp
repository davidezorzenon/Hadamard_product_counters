#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "lminmaxgd.h"

#define Sci_infty HUGE_VAL
#define _Sci_infty -HUGE_VAL

/*Macro pour convertir HUGE_VAL -> infinity et -HUGE_VAL -> _ininity */
#define HUGEtoGD(x)  ( ( x == Sci_infty ) ? infinity : ((x == _Sci_infty ) ? _infinity : x) )
/*Macro pour convertir infinity -> HUGE_VAL et _infinity -> -HUGE_VAL */
#define GDtoHUGE(x)  ( ( x == infinity ) ? Sci_infty : ((x == _infinity) ? _Sci_infty : x)  )

#define MAX(a,b)	(( (a)>(b))?(a):(b))
#define MIN(a,b)	(( (a)<(b))?(a):(b))


namespace mmgd
{

	/********************************************************************************************/
	/* Fonction recevant un type Scilab et renvoyant une matrice de series sous forme canonique */
	/* Version du 13/11/2002								    */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau                               */
	/********************************************************************************************/
	smatrix build_serie(int *Sci_serie)
	{
		int pnt_size;

		int size_p, size_q, i, m, n;
		int *header_size;
		int nbl, nbc;
		poly p, q;
		gd r;
		double *data;
		serie s;

		/* on recupere le nombre de lignes et de colonnes de la matrice */
		nbl = Sci_serie[1];
		nbc = Sci_serie[2];

		/*on d�lare la matrice de sortie de (nbl :lignes et nbc: colonnes) */
		smatrix A(nbl, nbc);

		/* Header_size pointe sur les tailles des p et des q des diff�ents ��ents de la matrice */
		header_size = (int *)&Sci_serie[3];

		/*data pointe vers les donnes des series */
		data = (double *)&Sci_serie[3 + (nbl*nbc) * 2];

		pnt_size = 0;

		for (m = 0; m < nbl; m++)
			for (n = 0; n < nbc; n++)
			{


				size_p = header_size[pnt_size++];
				size_q = header_size[pnt_size++];

				if (size_p > 0)
				{
					p.init((long)HUGEtoGD(data[0]), (long)HUGEtoGD(data[size_p]));
					for (i = 1; i < size_p; i++)
						p((long)HUGEtoGD(data[i]), (long)HUGEtoGD(data[size_p + i]));
				}

				if (size_q > 0)
				{
					q.init((long)HUGEtoGD(data[size_p * 2]), (long)HUGEtoGD(data[size_p * 2 + size_q]));
					for (i = 1; i < size_q; i++)
						q((long)HUGEtoGD(data[(size_p * 2) + i]), (long)HUGEtoGD(data[size_p * 2 + size_q + i]));
				}

				r.init((long)HUGEtoGD(data[(size_p * 2) + (size_q * 2)]), (long)HUGEtoGD(data[(size_p * 2) + (size_q * 2) + 1]));

				/*on fait avancer le pointeur sur les elements suivants */
				data = (double *)&(data[2 * size_p + 2 * size_q + 2]);

				/*on initialise la s�ie, elle est mise automatiquement sous forme canonique*/
				s.init(p, q, r);

				A(m, n) = s;
			}

		//cout << "A=" << A << endl;

		return(A);

	}

	/********************************************************************************************/
	/* Fonction recevant une serie et renvoyant un type Scilab 258				    */
	/* Version du 13/11/2002								    */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau                               */
	/********************************************************************************************/
	int build_typesci(smatrix A, int **Sci_out)
	{
		int size_p, size_q, i;
		double *data_out;
		int m, n, nbc, nbl;
		int *tab_size;
		int pnt_tab_size;
		int size_header;
		int size_type;


		/*maintenant on effectue l'op�ation dans le sens inverse */
		/*Nouvelle taille de p et de q */
		/* on recupere le nombre de lignes et de colonnes de la matrice */
		nbc = A.getcol();
		nbl = A.getrow();

		/* on recupere toutes les tailles des p et q de chacunes des series de la matrice */
		/* que l'on stocke dans un tableau tab_size */

		tab_size = (int *)malloc(2 * nbc*nbl * sizeof(int));

		if (tab_size == NULL)
		{
			printf("Not enough memory\r\n");
			exit(1);
		}


		pnt_tab_size = 0;

		for (m = 0; m < nbl; m++)
			for (n = 0; n < nbc; n++)
			{
				tab_size[pnt_tab_size++] = A(m, n).getp().getn();
				tab_size[pnt_tab_size++] = A(m, n).getq().getn();
			}


		size_header = 0;
		/* on peut maintenant calculer la taille du header  */
		for (i = 0; i < (2 * nbc*nbl); i++)
			size_header += tab_size[i];

		size_type = (3 + 2 * nbc*nbl) * sizeof(int) + size_header * 2 * sizeof(double) + (2 * nbc*nbl) * sizeof(double);

		/* Vecteur de retour dans Scilab */
		*Sci_out = (int *)malloc(size_type);

		(*Sci_out)[0] = 258; /*Numero du type dans Scilab */
		(*Sci_out)[1] = nbl; /*Nb de lignes */
		(*Sci_out)[2] = nbc; /*Nb de colonnes */

		/* on remplit les tailles des polynomes p et q */
		for (i = 0; i < (2 * nbc*nbl); i++)
			(*Sci_out)[3 + i] = tab_size[i];

		data_out = (double *)& ((*Sci_out)[3 + 2 * nbc*nbl]);

		pnt_tab_size = 0;

		for (m = 0; m < nbl; m++)
			for (n = 0; n < nbc; n++)
			{
				size_p = tab_size[pnt_tab_size++];
				size_q = tab_size[pnt_tab_size++];


				/* D'abord les gammas de p */
				for (i = 0; i < size_p; i++)
					data_out[i] = GDtoHUGE((double)A(m, n).getp().getpol(i).getg());   /* Attention l'infini de MinMaxgd est diff�ent de celui de Scilab */

				/* les deltas de p */
				for (i = 0; i < size_p; i++)
					data_out[i + size_p] = GDtoHUGE((double)A(m, n).getp().getpol(i).getd());

				/*Les gammas de q */
				for (i = 0; i < size_q; i++)
					data_out[i + 2 * size_p] = GDtoHUGE((double)A(m, n).getq().getpol(i).getg());

				/*Les deltas de q */
				for (i = 0; i < size_q; i++)
					data_out[i + 2 * size_p + size_q] = GDtoHUGE((double)A(m, n).getq().getpol(i).getd());

				/*le gamma et le delta de r */
				data_out[2 * size_p + 2 * size_q] = GDtoHUGE((double)A(m, n).getr().getg());
				data_out[2 * size_p + 2 * size_q + 1] = GDtoHUGE((double)A(m, n).getr().getd());

				/* on pointe sur les donn�s suivantes */
				data_out = (double *)&data_out[2 * size_p + 2 * size_q + 2];

			}

		/* on libere les variables intermediaires */
		free(tab_size);

		return(size_type);
	}


	/***************************************************************************************/
	/* Somme de deux matrices dans MinMax[[gamma,delta]]								   */
	/* Version du 27/11/2002															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int add_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{

			smatrix m1, m2;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			m = oplus(m1, m2);

			size_out = build_typesci(m, m_out);

			return size_out;

		}
	}

	/***************************************************************************************/
	/* Produit de deux matrices dans MinMax[[gamma,delta]]								   */
	/* Version du 27/11/2002															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int mul_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			smatrix m1, m2;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			m = otimes(m1, m2);

			//cout << "m=" << m << endl;
			//cout << "produit" << endl;

			size_out = build_typesci(m, m_out);

			//	cout << "mul()=" << m << endl;

			return size_out;

		}
	}

	/***************************************************************************************/
	/* Residuation �gauche de deux matrices dans MinMax[[gamma,delta]]			           */
	/* Version du 27/11/2002															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int lfrac_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			smatrix m1, m2;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			// 		cout << "lfrac" << endl;
			// 		cout << "m1= "  << m1 << endl;
			// 		cout << "m2= " << m2 << endl;

			m = lfrac(m1, m2);

			// 		cout << "lfrac : m" << m << endl;


			size_out = build_typesci(m, m_out);

			// 		cout  << "lfrac : size_out " << size_out << endl;

			return size_out;

		}
	}
	/****************************************************************************************/
	/* inf de deux matrices dans MinMax[[gamma,delta]]			                           */
	/* Version du 27/11/2002															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int inf_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			smatrix m1, m2;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			m = inf(m1, m2);

			size_out = build_typesci(m, m_out);

			return size_out;

		}
	}


	/***************************************************************************************/
	/* Residuation �droite de deux matrices dans MinMax[[gamma,delta]]			           */
	/* Version du 27/11/2002															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int rfrac_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			smatrix m1, m2;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			// 		
			// 		cout << "rfrac" << endl;
			// 		cout << "m1= "  << m1 << endl;
			// 		cout << "m2= " << m2 << endl;


			m = rfrac(m1, m2);


			// 		cout << "rfrac : m" << m << endl;

			size_out = build_typesci(m, m_out);

			// 		cout  << "rfrac : size_out " << size_out << endl;

			return size_out;

		}
	}

	/********************************************************************************************/
	/* Fonction construisant un type Scilab 258 canonique					    */
	/* Version du 13/11/2002								    */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau                               */
	/********************************************************************************************/
	extern "C"
	{
		int sci_canon(int *Sci_out, int **Sci_in)
		{
			smatrix m;
			int size;

			/* on construit la serie a partir du type Scilab */
			/* les series de la matrice sont mises sous forme canonique */
			m = build_serie(Sci_out);

			/* Puis on construit le nouveau type Scilab 258 canonique*/
			size = build_typesci(m, Sci_in);

			return(size);

		}
	}

	/***************************************************************************************/
	/* �oile d'une matrice	dans MinMax[[gamma,delta]]									   */
	/* Version du 04/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int stargd_mmgd_mmgd(int *s1, int **m_out)
		{
			smatrix m1;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);

			m = star(m1);

			size_out = build_typesci(m, m_out);

			// 		cout << "stargd()=" << m << endl;

			return size_out;

		}
	}

	/***************************************************************************************/
	/* insertion d'une serie dans une matrice MinMax[[gamma,delta]]						   */
	/* Version du 08/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{

		int inser_mmgd_mmgd(int num_ligne, int num_col, int *header, int *header2, int **m_out)
		{

			smatrix m, t;
			serie s;
			int size_out;
			int nbc, nbl, newnbc, newnbl;
			int i, j;

			/* Serie */
			t = build_serie(header);
			/* Matrice */
			m = build_serie(header2);

			nbc = m.getcol();
			nbl = m.getrow();

			newnbc = MAX(nbc, num_col);
			newnbl = MAX(nbl, num_ligne);


			smatrix mtemp(newnbl, newnbc);


			for (i = 0; i < nbl; i++)
				for (j = 0; j < nbc; j++)
					mtemp(i, j) = m(i, j);

			s = t(0, 0);

			mtemp(num_ligne - 1, num_col - 1) = s;

			size_out = build_typesci(mtemp, m_out);

			// 		cout << "ins_mmgd_mmgd" << endl;

			return size_out;
		}
	}
	/***************************************************************************************/
	/* insertion d'un entier dans une matrice MinMax[[gamma,delta]]						   */
	/* Version du 08/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{

		int inser_mmgd_i(int num_ligne, int num_col, int *header, int **m_out)
		{

			int size_out;
			smatrix t;
			serie s;



			/* Serie */
			t = build_serie(header);


			smatrix mtemp(num_ligne, num_col);

			s = t(0, 0);

			mtemp(num_ligne - 1, num_col - 1) = s;

			size_out = build_typesci(mtemp, m_out);

			// 		cout << "ins_mmgd_i" << endl;


			return size_out;
		}
	}
	/***************************************************************************************/
	/* extraction d'une serie dans une matrice MinMax[[gamma,delta]]					   */
	/* Version du 08/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{

		int extract_mmgd(int num_ligne, int num_col, int *header, int **m_out)
		{

			smatrix t;
			smatrix s;

			int size_out;

			/* Serie */
			t = build_serie(header);

			s = t(num_ligne - 1, num_col - 1);

			size_out = build_typesci(s, m_out);

			return size_out;
		}
	}
	/***************************************************************************************/
	/* Comparaison de Matrices MinMax[[gamma,delta]]                					   */
	/* Version du 11/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int comp_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			int size_out;
			int i, j;
			int ptb;

			smatrix m1;
			smatrix m2;

			smatrix m;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			*m_out = (int *)calloc(m1.getcol()*m1.getrow(), sizeof(int));

			if (m_out == NULL)
			{
				printf("Not enough memory\r\n");
				exit(1);
			}

			ptb = 0;

			for (i = 0; i < m1.getcol(); i++)
				for (j = 0; j < m1.getrow(); j++)
				{
					if (m1(j, i) == m2(j, i))
					{
						(*m_out)[ptb] = 1;
					}
					ptb++;
				}

			size_out = (m1.getcol()*m1.getrow()) * sizeof(int);

			return size_out;

		}
	}

	/***************************************************************************************/
	/* Concatenation (colonnes) de Matrices MinMax[[gamma,delta]]      					   */
	/* Version du 08/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int concac_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			int size_out;
			int nbl, nbc;
			int i, j;

			smatrix m1;
			smatrix m2;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			//cout << "m1=" << m1 << endl;
			//cout << "m2=" << m2 << endl;

			nbl = MAX(m1.getrow(), m2.getrow());
			nbc = m1.getcol() + m2.getcol();

			//cr�tion d'une nouvelle matrice 
			smatrix m(nbl, nbc);
			//recopie de la matrice 1
			for (i = 0; i < m1.getrow(); i++)
				for (j = 0; j < m1.getcol(); j++)
					m(i, j) = m1(i, j);

			for (i = 0; i < m2.getrow(); i++)
				for (j = 0; j < m2.getcol(); j++)
					m(i, j + m1.getcol()) = m2(i, j);

			size_out = build_typesci(m, m_out);
			return size_out;


		}
	}

	/***************************************************************************************/
	/* Concatenation (lignes) de Matrices MinMax[[gamma,delta]]        					   */
	/* Version du 08/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int concal_mmgd_mmgd(int *s1, int *s2, int **m_out)
		{
			int size_out;
			int nbl, nbc;
			int i, j;

			smatrix m1;
			smatrix m2;

			m1 = build_serie(s1);
			m2 = build_serie(s2);

			//cout << "m1=" << m1 << endl;
			//cout << "m2=" << m2 << endl;

			nbl = m1.getrow() + m2.getrow();
			nbc = MAX(m1.getcol(), m2.getcol());

			//cr�tion d'une nouvelle matrice 
			smatrix m(nbl, nbc);
			//recopie de la matrice 1
			for (i = 0; i < m1.getrow(); i++)
				for (j = 0; j < m1.getcol(); j++)
					m(i, j) = m1(i, j);

			for (i = 0; i < m2.getrow(); i++)
				for (j = 0; j < m2.getcol(); j++)
					m(i + m1.getrow(), j) = m2(i, j);

			size_out = build_typesci(m, m_out);
			return size_out;

		}
	}


	/***************************************************************************************/
	/* projection dans les causaux d'une matrice MinMax[[gamma,delta]]					   */
	/* Version du 12/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int prcaus_mmgd_mmgd(int *s1, int **m_out)
		{
			smatrix m1;
			smatrix m;
			int size_out;

			m1 = build_serie(s1);

			m = prcaus(m1);

			size_out = build_typesci(m, m_out);

			return size_out;

		}
	}

	/***************************************************************************************/
	/* transposition de matrice MinMax[[gamma,delta]]	                  				   */
	/* Version du 12/05/2003															   */
	/* Copyright : L.Hardouin, B.Gruet, B.Cottenceau & M.Lhommeau						   */
	/***************************************************************************************/
	extern "C"
	{
		int transp_mmgd_mmgd(int *s1, int **m_out)
		{
			int i, j;
			int size_out;
			smatrix m, n;

			m = build_serie(s1);

			n = smatrix(m.getcol(), m.getrow());

			for (i = 0; i < m.getrow(); i++)
				for (j = 0; j < m.getcol(); j++)
					n(j, i) = m(i, j);

			size_out = build_typesci(n, m_out);

			return size_out;


		}

	}

}//fin namespace mmgd
