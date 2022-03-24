#include "..\include\matrixMap.h"

namespace mmgd
{
	void matrixMap::affecte(std::map<ind, serie> & liste_affecte, int ligne, int colonne, int valeur)
	{


		if (this->row > 0 && this->col > 0)
		{
			aData->clear();

		}
		else
		{
			aData = new std::map<ind, serie>;
			if (this->aData == NULL)
			{
				mem_limite  l(15);   throw(l);
			}
		}

		*aData = liste_affecte;


		this->value = this->aData->size();
		this->row = ligne;
		this->col = colonne;

	}


	// constructeur par defaut de la classe smatrix (matrice 1x1 contenant
	// epsilon)
	matrixMap::matrixMap(void)
	{
		row = 0;
		col = 0;
		value = 0;

		this->aData = new std::map<std::pair<int, int>, serie>;

		if (this->aData == NULL)
		{
			mem_limite  l(15);   throw(l);
		}

	}



	matrixMap::matrixMap(int i, int j) // constructeur initialisant
	{
		if (i > 0 && j > 0) {
			row = i;
			col = j;
			value = 0;
			this->aData = new std::map<ind, serie>;

			if (this->aData == NULL) { mem_limite  l(19);   throw(l); }

		}
		else { mem_limite  l(19);   throw(l); }
	}

	matrixMap::matrixMap(const matrixMap & a)	// constructeur initialisation par une autre matrice
	{
		row = 0;
		col = 0;
		value = 0;

		affecte(*(a.aData), a.row, a.col, a.value);
	}



	matrixMap::matrixMap(const serie & a)	// constructeur initialisation par une serie
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		serie temp = a;
		this->row = 1;
		this->col = 1;
		this->aData = new std::map<ind, serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }

		if (!(temp == s_epsilon))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), temp));

		}


	}

	matrixMap::matrixMap(poly & a)	// constructeur initialisation par un polyn�e
	{
		serie seps;

		seps.init(epsilon, epsilon, e);
		serie temp = a;
		this->row = 1;
		this->col = 1;
		this->aData = new std::map<ind, serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }

		if (!(temp == seps))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), temp));

		}

	}

	matrixMap::matrixMap(gd & a)	// constructeur initialisation par un monome
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		serie temp = a;
		this->row = 1;
		this->col = 1;
		this->aData = new std::map<ind, serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }

		if (!(temp == seps))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), temp));

		}

	}

	matrixMap :: ~matrixMap()	// destructeur
	{

		if (row > 0 && col > 0)
		{
			aData->clear();
			row = 0;
			col = 0;
			value = 0;
		}
		delete aData;

	}



	matrixMap& matrixMap ::  operator =(const matrixMap& a)
		// initialise avec un objet smatrixMap, surdefinition du =
	{

		if (&a == this) return *this;// si a est = de la matrice courante


		affecte(*(a.aData), a.row, a.col, a.value);
		return *this;
	}
	matrixMap& matrixMap ::  operator =(smatrix& a)
		// initialise avec une matrice de serie, la matrice destination sera détruite si elle existait déja
	{
		serie eps;

		int i, j;
		std::map<ind, serie>::iterator it;

		if (row > 0 || col > 0) aData->clear();

		row = a.getrow();
		col = a.getcol();
		value = 0;

		it = aData->begin();
		for (i = 0; i < a.getrow(); i++)
		{
			for (j = 0; j < getcol(); j++)
			{
				if (!(a(i, j) == eps))
				{
					aData->insert(it, std::make_pair(std::make_pair(i, j), a(i, j)));
					it++;
					value++;
				}
			}
		}

	}

	matrixMap& matrixMap :: operator =(serie& a) //surdefinition du =, permet d'initialiser avec une serie cast serei matrice
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		serie temp = a;
		this->row = 1;
		this->col = 1;
		//this->aData = new std::map<ind,serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }
		aData->clear();
		if (!(temp == seps))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), a));

		}

		return *this;
	}

	matrixMap& matrixMap :: operator =(poly& p1)	  // initialise avec un polynome cast polynome->matrice
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		serie temp = p1;
		this->row = 1;
		this->col = 1;
		//this->aData = new std::map<ind,serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }
		aData->clear();
		if (!(temp == seps))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), temp));

		}

		return *this;

	}




	matrixMap& matrixMap :: operator =(gd& gd1)	  // initialise avec un monome cast monome->matrice
	{
		serie seps;

		serie temp = gd1;
		this->row = 1;
		this->col = 1;
		//this->aData = new std::map<ind,serie>;

		if (this->aData == NULL) { mem_limite  l(19);   throw(l); }
		aData->clear();
		if (!(temp == seps))
		{
			this->value = 1;
			this->aData->insert(std::make_pair(std::make_pair(0, 0), temp));

		}

		return *this;
	}

	serie & matrixMap::operator()(int i, int j)
	{
		serie eps;
		std::map<ind, serie>::iterator it;
		ind pairij(i, j);
		if (i >= row || j >= col || i < 0 || j < 0)
		{
			taille_incorrecte number(1);
			throw(number);
		}

		it = this->aData->find(pairij);
		if (it == this->aData->end())
			// it doesn't exist, we have to inseret a series, but the problem now, we have some epsilon in the matrix
		{
			this->aData->insert(std::make_pair(pairij, eps));
			it = this->aData->find(pairij);

		}

		return it->second;


	}


	int matrixMap::operator==(const matrixMap & M)
	{
		std::map<ind, serie>::iterator itMapClasse;
		std::map<ind, serie>::iterator itMapM;

		if (M.col != this->col || M.row != this->row)
		{
			taille_incorrecte number(1);
			throw(number);
		}

		if (M.value != this->value) return 0;

		itMapM = M.aData->begin();

		for (itMapClasse = aData->begin(); itMapClasse != aData->end(); itMapClasse++)
		{
			if (itMapClasse->first != itMapM->first)
			{
				return 0;
			}
			if (!((itMapClasse->second) == (itMapM->second)))
			{
				return 0;
			}
			itMapM++;
		}

		return 1;
	}


	int matrixMap::operator!=(const matrixMap & M)
	{
		std::map<ind, serie>::iterator itMapClasse;
		std::map<ind, serie>::iterator itMapM;
		if (M.col != this->col || M.row != this->row)
		{
			taille_incorrecte number(1);
			throw(number);
		}
		if (M.value != this->value) return 1;

		itMapM = M.aData->begin();

		for (itMapClasse = aData->begin(); itMapClasse != aData->end(); itMapClasse++)
		{ //  return this->aData->find(const_pair)->second;
			if (itMapClasse->first != itMapM->first)
			{
				return 1;
			}
			if (!((itMapClasse->second) == (itMapM->second)))
			{
				return 1;
			}
			itMapM++;
		}

		return 0;
	}



	std::ostream&  operator<<(std::ostream &flot, matrixMap &a)
		// surdefinition de <<
		// affichage
	{
		int i, j;
		serie lSerie;
		std::map<ind, serie>::iterator itList;
		for (itList = a.aData->begin(); itList != a.aData->end(); itList++)
		{
			i = (*itList).first.first;
			j = (*itList).first.second;
			lSerie = (*itList).second;

			flot << "[" << i << "," << j << "] = " << lSerie << "\n";
		}

		return flot;
	}

	std::fstream&  operator<<(std::fstream &flot, matrixMap &a)
		// surdefinition de <<
		// pour fichier texte
	{
		int i, j;
		serie lSerie;
		std::map<ind, serie>::iterator itList;
		for (itList = a.aData->begin(); itList != a.aData->end(); itList++)
		{
			i = (*itList).first.first;
			j = (*itList).first.second;
			lSerie = (*itList).second;

			flot << "[";
			flot << i;
			flot << ",";
			flot << j;
			flot << "] = ";
			flot << lSerie << std::endl;
		}

		return flot;
	}

	matrixMap oplus(matrixMap& a, matrixMap& b)
	{
		if ((a.col == b.col) && (a.row == b.row))
		{

			std::map<ind, serie>::iterator itListA;
			std::map<ind, serie>::iterator itListB;
			matrixMap result(a.row, b.col);
			itListA = a.aData->begin();
			itListB = b.aData->begin();
			while ((itListA != a.aData->end()) && (itListB != b.aData->end()))
			{

				if (itListA->first == itListB->first)
				{
					result.aData->insert(std::make_pair(itListA->first, oplus(itListA->second, itListB->second)));

					itListA++;
					itListB++;

				}
				else
				{
					if ((itListA->first) > (itListB->first))
					{
						result.aData->insert(std::make_pair(itListB->first, itListB->second));
						itListB++;
					}
					else
					{
						result.aData->insert(std::make_pair(itListA->first, itListA->second));
						itListA++;
					}
				}

			}
			while (itListA != a.aData->end()) // il ne reste plus que des A
			{
				result.aData->insert(std::make_pair(itListA->first, itListA->second));
				itListA++;
			}
			while (itListB != b.aData->end()) // il ne reste plus que des B
			{
				result.aData->insert(std::make_pair(itListB->first, itListB->second));
				itListB++;
			}

			return (result);
		}
		else
		{
			mem_limite  l(27);   throw(l);
		}
	}


	matrixMap inf(matrixMap& a, matrixMap& b)
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		if ((a.col == b.col) && (a.row == b.row))
		{

			std::map<ind, serie>::iterator itListA;
			std::map<ind, serie>::iterator itListB;
			matrixMap result(a.row, b.col);
			itListA = a.aData->begin();
			itListB = b.aData->begin();
			while ((itListA != a.aData->end()) && (itListB != b.aData->end()))
			{

				if (itListA->first == itListB->first)
				{
					result.aData->insert(std::make_pair(itListA->first, inf(itListA->second, itListB->second)));

					itListA++;
					itListB++;

				}
				else
				{
					if ((itListA->first) > (itListB->first))
					{

						itListB++;
					}
					else
					{

						itListA++;
					}
				}

			}


			return (result);
		}
		else
		{
			mem_limite  l(27);   throw(l);
		}
	}

	matrixMap  transpose(matrixMap& a)
	{
		matrixMap b(a.col, a.row);
		std::map<ind, serie>::iterator itList;



		for (itList = a.aData->begin(); itList != a.aData->end(); itList++)
		{

			b.aData->insert(make_pair(make_pair(itList->first.second, itList->first.first), itList->second));
		}

		b.row = a.col;
		b.col = a.row;
		b.value = a.value;
		return b;

	}


	int compare_multi(int a, int b)
	{
		if (a < b)
		{
			return -1;
		}
		else if (a == b)
		{
			return 0;
		}
		else if (a > b)
		{
			return 1;
		}

	}

	matrixMap otimes(matrixMap& a, matrixMap& b)
	{
		gd e(0, 0);
		serie temp;
		serie * adtemp;
		temp = e;
		adtemp = &temp;
		matrixMap d;
		matrixMap * new_b;
		std::map<ind, serie>::iterator itListA;
		std::map<ind, serie>::iterator itListB;
		itListA = a.aData->begin();
		int i, j, column, totalb = b.value, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.value;
		int cols_b = b.col;
		int row_begin = 1, row = itListA->first.first;
		ind const_pairij(i, j);
		ind const_pairji(j, i);

		ind const_pair_row_col(row, column);

		serie sum; /// QUE METTRE POUR SUM ...
		new_b = new matrixMap(); //int new_b[MAX_TERMS][3];
		if (cols_a != b.row)
		{
			printf("Incompatible matrices\n");
			mem_limite  l(42);   throw(l);
		}
		*new_b = transpose(b);
		itListB = new_b->aData->begin();

		/* condition de frontière */
	   ///* a[totala+1].row = rows_a;    new_b[totalb+1].row = cols_b;    new_b[totalb+1].col = 0;*///
		for (i = 1; i <= totala;)
		{
			column = itListB->first.first; //column=new_b[1].row;
			for (j = 1; j <= totalb + 1;)
			{
				/*multiplie ligne de a par colonne de b*/
				if (itListA->first.first != row)// if(a[i].row != row)
				{
					if (!(sum == *adtemp))
					{
						d.aData->erase(const_pair_row_col);
						d.aData->insert(std::make_pair(const_pair_row_col, sum));
					}//storesum(d,&totald, row, column, &sum);
					i = row_begin;
					for (; new_b->aData->find(const_pairij)->first.first == column; j++)
						//for(;new_b[j].row==column; j++)
						;
					column = new_b->aData->find(const_pairij)->first.first; // column = new_b[j].row;
				}
				else if (itListB->first.first != column) //if(new_b[j].row != column)
				{
					if (!(sum == *adtemp))
					{
						d.aData->erase(const_pair_row_col);
						d.aData->insert(std::make_pair(const_pair_row_col, sum));
					}     //storesum(d,&totald, row, column, &sum);
					i = row_begin;
					column = new_b->aData->find(const_pairij)->first.first; //column = new_b[j].row;
				}
				else switch (compare_multi(a.aData->find(const_pairij)->first.second, new_b->aData->find(const_pairij)->first.second))
					//else switch (Compare((a[i].col, new_b[j].col))
				{
				case -1: /* aller au terme suivant dans a */
					i++;
					itListA++;
					break;

				case 0: /* ajouter termes, aller au prochain terme dans a et b*/
					temp = otimes(itListA->second, itListB->second);
					sum = oplus(sum, temp);
					//a.aData->find(const_pairik)->second,b.aData->find(const_pairlj)->second));
				   // sum += (a[i++].value * new_b[j++].value);
					break;
				case 1: /*aller au prochain terme dans b*/
					j++;
					itListB++;
				}
			} /*fin de for j<=totalb+1*/
			for (; itListA->first.first == row; i++)
				;
			row_begin = i; row = itListA->first.first;
		}/* fin de for i <= totala */
		d.row = rows_a;
		d.col = cols_b;
		d.value = totald;

	}

	/*
	otimes O(n^3)
	matrixMap result(a.row,b.col);
		 if(a.row==b.col)
	{
		int i,j,k,cmpt;
	 serie temp;
	 gd epsilon;
	 ind const_pairij (i,j);
	ind const_pairik (i,k);
	ind const_pairkj (k,j);
	 for (i=0;i<a.row;i++)
		{
			for (j=0;j<b.col;j++)
			{
				temp=epsilon;
				result.aData->insert(std::make_pair(const_pairij,temp));
				for (k=0;k<a.col;k++)
					{

						if((a.aData->find(const_pairik)!=(a.aData->end())) && (b.aData->find(const_pairkj)!=(b.aData->end())))
						{
						  temp=otimes(a.aData->find(const_pairik)->second,b.aData->find(const_pairkj)->second);
						  result.aData->insert(std::make_pair(const_pairij,oplus(result.aData->find(const_pairij)->second,temp)));
						  cmpt++;
						}
						else
						{
							result.aData->erase(const_pairij);
						}
					}
				if(cmpt==0)
				{
					result.aData->erase(const_pairij);
				}
				else cmpt=0;
			}
		}
		return(result);
	}
	printf("Erreur otimes");
	return(result);
	}
	*/

	matrixMap lfrac(matrixMap& a, matrixMap& b) //residuation a gauche de 2 matrices de series p�iodiques b\a
	{
		gd e(0, 0);
		serie temp;
		serie * adtemp;
		temp = e;
		adtemp = &temp;
		matrixMap d;
		matrixMap * new_b;
		std::map<ind, serie>::iterator itListA;
		std::map<ind, serie>::iterator itListB;
		itListA = a.aData->begin();
		int i, j, column, totalb = b.value, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.value;
		int cols_b = b.col;
		int row_begin = 1, row = itListA->first.first;
		ind const_pairij(i, j);
		ind const_pairji(j, i);
		ind const_pairi0(i, 0);
		ind const_pairj0(j, 0);

		ind const_pair_row_col(row, column);

		serie sum; /// QUE METTRE POUR SUM ...
		new_b = new matrixMap(); //int new_b[MAX_TERMS][3];
		if (cols_a != b.row)
		{
			printf("Incompatible matrices\n");
			mem_limite  l(42);   throw(l);
		}
		*new_b = transpose(b);
		itListB = new_b->aData->begin();

		/* condition de frontière */
	   ///* a[totala+1].row = rows_a;    new_b[totalb+1].row = cols_b;    new_b[totalb+1].col = 0;*///
		for (i = 1; i <= totala;)
		{
			column = itListB->first.first; //column=new_b[1].row;
			for (j = 1; j <= totalb + 1;)
			{
				/*multiplie ligne de a par colonne de b*/
				if (itListA->first.first != row)// if(a[i].row != row)
				{
					if (!(sum == *adtemp))
					{
						d.aData->insert(std::make_pair(const_pair_row_col, frac(a.aData->find(const_pairi0)->second, b.aData->find(const_pairj0)->second)));
					}//storesum(d,&totald, row, column, &sum);
					i = row_begin;
					for (; new_b->aData->find(const_pairij)->first.first == column; j++)
						//for(;new_b[j].row==column; j++)
						;
					column = new_b->aData->find(const_pairij)->first.first; // column = new_b[j].row;
				}
				else if (itListB->first.first != column) //if(new_b[j].row != column)
				{
					if (!(sum == *adtemp))
					{
						d.aData->erase(const_pair_row_col);
						d.aData->insert(std::make_pair(const_pair_row_col, frac(a.aData->find(const_pairi0)->second, b.aData->find(const_pairj0)->second)));
					}     //storesum(d,&totald, row, column, &sum);
					i = row_begin;
					column = new_b->aData->find(const_pairij)->first.first; //column = new_b[j].row;
				}
				else switch (compare_multi(a.aData->find(const_pairij)->first.second, new_b->aData->find(const_pairji)->first.second))
					//else switch (Compare((a[i].col, new_b[j].col))
				{
				case -1: /* aller au terme suivant dans a */
					i++;
					itListA++;
					break;

				case 0: /* ajouter termes, aller au prochain terme dans a et b*/
					temp = frac(itListA->second, itListB->second);
					sum = inf(sum, temp);
					//a.aData->find(const_pairik)->second,b.aData->find(const_pairlj)->second));
				   // sum += (a[i++].value * new_b[j++].value);
					break;
				case 1: /*aller au prochain terme dans b*/
					j++;
					itListB++;
				}
			} /*fin de for j<=totalb+1*/
			for (; itListA->first.first == row; i++)
				;
			row_begin = i; row = itListA->first.first;
		}/* fin de for i <= totala */
		d.row = rows_a;
		d.col = cols_b;
		d.value = totald;

		/*    int i,j,k;
			ind const_pair (i,j);
		   ind const_pairki (k,i);
		   ind const_pairkj (k,j);
		   ind const_pair0i (0,i);
		   ind const_pair0j (0,j);
		   matrixMap result(b.col,a.col);
		   serie tampon;

			for (i=0;i<b.col;i++)
			{
				for(j=0;j<a.col;j++)
				{
					 result.aData->insert(std::make_pair(const_pair,frac(a.aData->find(const_pair0j)->second,b.aData->find(const_pair0i)->second)));
					for (k=1;k<b.row;k++)
					{
						 tampon=frac(a.aData->find(const_pairkj)->second,b.aData->find(const_pairki)->second);
						 result.aData->insert(std::make_pair(const_pair,inf(result.aData->find(const_pair)->second,tampon)));
					}
				}
			}

			return(result);
		*/
	}


	matrixMap rfrac(matrixMap& a, matrixMap& b) //residuation a droite de 2 matrices de series p�iodiques a/b
	{

		gd e(0, 0);
		serie temp;
		serie * adtemp;
		temp = e;
		adtemp = &temp;
		matrixMap d;
		matrixMap * new_b;
		std::map<ind, serie>::iterator itListA;
		std::map<ind, serie>::iterator itListB;
		itListA = a.aData->begin();
		int i, j, k, l, column, totalb = b.value, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.value;
		int cols_b = b.col;
		int row_begin = 1, row = itListA->first.first;
		ind const_pairij(i, j);
		ind const_pair0i(0, i);
		ind const_pair0j(0, j);

		ind const_pair_row_col(row, column);

		serie sum; /// QUE METTRE POUR SUM ...
		new_b = new matrixMap(); //int new_b[MAX_TERMS][3];
		if (cols_a != b.row)
		{
			printf("Incompatible matrices\n");
			mem_limite  l(42);   throw(l);
		}
		*new_b = transpose(b);
		itListB = new_b->aData->begin();

		/* condition de frontière */
	   ///* a[totala+1].row = rows_a;    new_b[totalb+1].row = cols_b;    new_b[totalb+1].col = 0;*///
		for (i = 1; i <= totala;)
		{
			column = itListB->first.first; //column=new_b[1].row;
			for (j = 1; j <= totalb + 1;)
			{
				/*multiplie ligne de a par colonne de b*/
				if (itListA->first.first != row)// if(a[i].row != row)
				{
					if (!(sum == *adtemp))
					{
						d.aData->insert(std::make_pair(const_pair_row_col, frac(a.aData->find(const_pair0j)->second, b.aData->find(const_pair0i)->second)));
					}//storesum(d,&totald, row, column, &sum);
					i = row_begin;
					for (; new_b->aData->find(const_pairij)->first.first == column; j++)
						//for(;new_b[j].row==column; j++)
						;
					column = new_b->aData->find(const_pairij)->first.first; // column = new_b[j].row;
				}
				else if (itListB->first.first != column) //if(new_b[j].row != column)
				{
					if (!(sum == *adtemp))
					{
						d.aData->erase(const_pair_row_col);
						d.aData->insert(std::make_pair(const_pair_row_col, frac(a.aData->find(const_pair0j)->second, b.aData->find(const_pair0i)->second)));
					}     //storesum(d,&totald, row, column, &sum);
					i = row_begin;
					column = new_b->aData->find(const_pairij)->first.first; //column = new_b[j].row;
				}
				else switch (compare_multi(a.aData->find(const_pairij)->first.second, new_b->aData->find(const_pairij)->first.second))
					//else switch (Compare((a[i].col, new_b[j].col))
				{
				case -1: /* aller au terme suivant dans a */
					i++;
					itListA++;
					break;

				case 0: /* ajouter termes, aller au prochain terme dans a et b*/
					temp = frac(itListA->second, itListB->second);
					sum = inf(sum, temp);
					//a.aData->find(const_pairik)->second,b.aData->find(const_pairlj)->second));
				   // sum += (a[i++].value * new_b[j++].value);
					break;
				case 1: /*aller au prochain terme dans b*/
					j++;
					itListB++;
				}
			} /*fin de for j<=totalb+1*/
			for (; itListA->first.first == row; i++)
				;
			row_begin = i; row = itListA->first.first;
		}/* fin de for i <= totala */
		d.row = rows_a;
		d.col = cols_b;
		d.value = totald;

		/*
	   int i,j,k;
	   ind const_pair (i,j);
	   ind const_pairik (i,k);
	   ind const_pairjk (j,k);
	   ind const_pairi0 (i,0);
	   ind const_pairj0 (j,0);
	   matrixMap result(a.row,b.row);
	   serie tampon;

		for (i=0;i<a.row;i++)
		{
			for(j=0;j<b.row;j++)
			{
				result.aData->insert(std::make_pair(const_pair,frac(a.aData->find(const_pairi0)->second,b.aData->find(const_pairj0)->second)));
				result(i,j)=frac(a(i,0),b(j,0));
				for (k=1;k<b.col;k++)
				{
					 tampon=frac(a.aData->find(const_pairik)->second,b.aData->find(const_pairjk)->second);
					 result.aData->insert(std::make_pair(const_pair,inf(result.aData->find(const_pair)->second,tampon)));
				}
			}
		}

		return(result);
		*/
	}

	matrixMap star(matrixMap ak_1)
	{
		int i, j, k;
		serie akkstar, temp, akktemp;
		gd e(0, 0);
		matrixMap a(ak_1.row, ak_1.col);
		ind const_pairkj(k, j);
		ind const_pairik(i, k);
		ind const_pairkk(k, k);
		ind const_pairij(i, j);

		for (k = 0; k < a.row; k++)
		{
			akkstar = star(ak_1(k, k));

			for (i = 0; i < a.row; i++)
			{
				for (j = 0; j < a.col; j++)

				{
					akktemp = otimes(akkstar, ak_1.aData->find(const_pairkj)->second);
					akktemp = otimes(ak_1.aData->find(const_pairik)->second, akktemp);
					a.aData->insert(std::make_pair(const_pairij, oplus(ak_1.aData->find(const_pairij)->second, akktemp)));
				}
			}

			ak_1 = a;

		}

		for (k = 0; k < a.row; k++)
		{
			a.aData->insert(std::make_pair(const_pairkk, oplus(e, a.aData->find(const_pairkk)->second)));

		}
		return(a);
	}


	matrixMap prcaus(matrixMap & s)
	{
		matrixMap local(s.row, s.col);

		int i = 0;
		int j = 0;
		serie SerieS;
		s = s(i, j);
		for (i = 0; i < s.row; i++) for (j = 0; j < s.col; j++) local(i, j) = prcaus(SerieS);

		return local;
	}

}//fin namespace mmgd