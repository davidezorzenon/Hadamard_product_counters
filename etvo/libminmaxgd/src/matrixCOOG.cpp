#include "matrixCOO.h"
#define MAX_COL 200
#define MAX_TERMS 200

namespace mmgd
{

	void matrixCOO::affecte(matrixCOO &list)
	{
		int i = 0;

		this->row = list.row;
		this->col = list.col;
		this->size = list.size;
		if (this->capacity < list.size)
		{
			capacity = list.capacity;

			if (this->Data != NULL)
			{
				delete[] Data;

			}

			Data = new Ttriplet[capacity];
		}
		if (this->Data == NULL)
		{
			mem_limite  l(15);   throw(l);
		}



		for (i = 0; i < size; i++)
		{
			this->Data[i].i = list.Data[i].i;
			this->Data[i].j = list.Data[i].j;
			this->Data[i].s = list.Data[i].s;
		}

	}


	// constructeur par defaut de la classe smatrix (matrice 1x1 contenant
	// epsilon)
	matrixCOO::matrixCOO(void)
	{
		this->row = 0;
		this->col = 0;
		this->size = 0;
		this->capacity = 0;
		this->Data = NULL;

	}



	matrixCOO::matrixCOO(int i, int j) // constructeur initialisant
	{
		if ((i < 0) || (j < 0))
		{
			taille_incorrecte number(1);
			throw(number);
		}
		this->row = i;
		this->col = j;
		this->size = 0;
		this->capacity = 0; // par défaut on prend une matrice de capcité 25%
		this->Data = NULL;
	}


	matrixCOO::matrixCOO(const matrixCOO & a)	// constructeur initialisation par une autre matrice
	{
		affecte((matrixCOO &)a);
	}



	matrixCOO::matrixCOO(const serie & a)	// constructeur initialisation par une serie
	{
		this->row = 1;
		this->col = 1;
		this->size = 1;
		this->capacity = 0;
		Ttriplet TripletSerie;
		TripletSerie.i = 1;
		TripletSerie.j = 1;
		TripletSerie.s = a;
		this->pushback(TripletSerie);
	}

	matrixCOO::matrixCOO(poly & a)	// constructeur initialisation par un polyn�e
	{
		this->row = 1;
		this->col = 1;
		this->size = 1;
		this->capacity = 0;
		Ttriplet TripletPoly;
		TripletPoly.i = 1;
		TripletPoly.j = 1;
		TripletPoly.s = a;
		this->pushback(TripletPoly);

	}

	matrixCOO::matrixCOO(gd & a)	// constructeur initialisation par un monome
	{
		this->row = 1;
		this->col = 1;
		this->size = 1;
		this->capacity = 0;
		Ttriplet TripletGd;
		TripletGd.i = 1;
		TripletGd.j = 1;
		TripletGd.s = a;
		this->pushback(TripletGd);

	}

	matrixCOO :: ~matrixCOO()	// destructeur
	{
		delete[] Data;
		row = 0;
		col = 0;
		size = 0;
		capacity = 0;
		Data = NULL;
	}

	int matrixCOO::matrixCOO::geti(int k)
	{
		return Data[k].i;
	}
	int matrixCOO::getj(int k)
	{
		return Data[k].j;
	}
	int matrixCOO::getcapacity()
	{
		return capacity;
	}
	int matrixCOO::comp(int ai, int aj, int bi, int bj)
	{

		if (ai > bi) return 1;
		else
		{
			if (ai < bi) return -1;
			else
			{
				if (aj > bj) return 1;
				else
				{
					if (aj < bj) return -1;
					else return 0;
				}
			}
		}

	}
	/*
	void matrixCOO :: pushback(Ttriplet & newdata)
	{
		Ttriplet * newvect;
		int oldsize=this->size;
		size++;
		   if(size>capacity)
			{    capacity=capacity+(row*col);
			std::cout<<"capacity"<<capacity<<std::endl;
				 newvect=new Ttriplet[capacity];

			if (newvect==NULL)
			{ mem_limite  l(15);   throw(l); }

		  //for(k=0;k<oldsize;k++)
		  // newvect[k]=this->Data[k]; //modification
			delete [] Data;
			Data=newvect;
			}
		  Data[size-1].j=newdata.j;
		  Data[size-1].i=newdata.i;
		  Data[size-1].s=newdata.s;
	   */   /* push_back */

	void matrixCOO::pushback(Ttriplet & newdata)
	{
		Ttriplet * newvect;
		int oldsize = this->size;
		int k = 1;
		this->size++;
		if (size > capacity)
		{
			this->capacity = this->capacity + (row*col);
			std::cout << "capacity" << capacity << std::endl;
			newvect = new Ttriplet[capacity];

			if (newvect == NULL)
			{
				mem_limite  l(15);   throw(l);
			}

			for (k = 0; k <= oldsize; k++)
			{
				// newvect[k].i;
				 //this->geti(k);
				 //newvect[k].j=this->getj(k);
				//  newvect[k].s=this->Data[k].s;
				// newvect[k]=Data[k];

			}
			delete[] Data;
			Data = newvect;

		}


		this->Data[size - 1].j = newdata.j;
		this->Data[size - 1].i = newdata.i;
		this->Data[size - 1].s = newdata.s;
		/* std::cout<<this->Data[size-1].i<<std::endl;
		 std::cout<<this->Data[size-1].j<<std::endl;
		 std::cout<<this->Data[size-1].s<<std::endl;
		 std::cout<<this->Data[size].i<<std::endl;
		 std::cout<<this->Data[size].j<<std::endl;
		 std::cout<<this->Data[size].s<<std::endl;*/
	}


	int matrixCOO::find(int i, int j)
	{
		int imax = size - 1;
		int imin = 0;
		int imid;
		while (imax >= imin)
		{
			/* calculate the midpoint for roughly equal partition */
			imid = (imin + imax) / 2;

			// determine which subarray to search
			if (Data[imid].i < i)
				// change min index to search upper subarray
				imin = imid + 1;
			else
				if (Data[imid].i > i)
					// change max index to search lower subarray
					imax = imid - 1;
				else
					// we have to look for column
				{
					if (Data[imid].j < j)
						// change min index to search upper subarray
						imin = imid + 1;
					else
						if (Data[imid].j > j)
							imax = imid - 1;
						else
							// we have found
						{
							return imid;
						}
				}
		}
		// key not found
		return -1;

	}
	matrixCOO& matrixCOO ::  operator =(const matrixCOO& a)
		// initialise avec un objet smatrixCOO, surdefinition du =
	{

		if (&a == this) return *this;// si a est = de la matrice courante


		affecte((matrixCOO&)a);
		return *this;
	}
	matrixCOO& matrixCOO ::  operator =(smatrix& a)
		// initialise avec une matrice de serie, la matrice destination sera détruite si elle existait déja
	{
		serie eps;
		Ttriplet aij;
		aij.i = 0;
		aij.j = 0;
		aij.s = eps;
		int i = 0, j = 0;

		this->row = a.getrow();
		this->col = a.getcol();
		this->size = 0;

		for (i = 0; i < a.getrow(); i++)
		{
			for (j = 0; j < getcol(); j++)
			{

				if (!(a(i, j) == eps))
				{
					aij.i = i;
					aij.j = j;
					aij.s = a(i, j);
					//    std::cout<<*this<<std::endl;
					this->pushback(aij);

					//  std::cout<<*this<<std::endl;

				}
			}
		}
		// size=;


	}

	matrixCOO& matrixCOO :: operator =(serie& a) //surdefinition du =, permet d'initialiser avec une serie cast serei matrice
	{
		Ttriplet aij;
		this->row = 1;
		this->col = 1;
		this->size = 1;
		aij.i = 1;
		aij.j = 1;
		aij.s = a;
		this->pushback(aij);
	}

	matrixCOO& matrixCOO :: operator =(poly& p1)	  // initialise avec un polynome cast polynome->matrice
	{
		Ttriplet aij;
		this->row = 1;
		this->col = 1;
		this->size = 1;
		aij.i = 1;
		aij.j = 1;
		aij.s = p1;
		this->pushback(aij);
	}




	matrixCOO& matrixCOO :: operator =(gd& gd1)	  // initialise avec un monome cast monome->matrice
	{
		Ttriplet aij;
		this->row = 1;
		this->col = 1;
		this->size = 1;
		aij.i = 1;
		aij.j = 1;
		aij.s = gd1;
		this->pushback(aij);

	}

	serie & matrixCOO::operator()(int i, int j)
	{
		serie eps;
		int index;
		if ((i > row) || (j > col) || (i < 0) || (j < 0))
		{
			taille_incorrecte number(1);
			throw(number);
		}
		else {

			//Recherche Dichotomique
			index = find(i, j);

			// it doesn't exist, we have to inseret a series, but the problem now, we have some epsilon in the matrix
			if (index == -1) {
				return(eps);
			}/// modification

			return Data[index].s;
		}
	}

	int matrixCOO::operator==(const matrixCOO & M)
	{
		int k;

		if (M.col != this->col || M.row != this->row)
		{
			taille_incorrecte number(1);
			throw(number);
		}

		if (M.size != this->size)
		{
			printf("matrice pas de la bonne taille");
			return 0;
		}

		for (k = 0; k != this->size; k++)
		{
			if (!((this->Data[k].i) == (M.Data[k].i))) {

				return 0;
			}

			if (!((this->Data[k].j) == (M.Data[k].j)))
			{

				return 0;
			}

			if (!(this->Data[k].s == M.Data[k].s))
			{
				return 0;
			}

		}

		return 1;
	}


	int matrixCOO::operator!=(const matrixCOO & M)
	{
		int k = 0;


		if (M.col != col || M.row != row)
		{
			taille_incorrecte number(1);
			throw(number);
		}

		if (M.size != size) return 1;



		for (k = 0; k != this->size; k++)
		{
			if (this->Data[k].i != M.Data[k].i || this->Data[k].j != M.Data[k].j)
			{
				return 1;
			}
			if (!(this->Data[k].s == M.Data[k].s))
			{
				return 1;
			}

		}

		return 0;
	}




	std::ostream&  operator<<(std::ostream &flot, matrixCOO &a)
		// surdefinition de <<
		// affichage
	{
		int k = 0;
		for (k = 0; k < a.size; k++)
		{
			flot << "[" << a.Data[k].i << "," << a.Data[k].j << "] = " << a.Data[k].s << "\n";
		}
		return flot;
	}

	std::fstream&  operator<<(std::fstream &flot, matrixCOO &a)
		// surdefinition de <<
		// pour fichier texte
	{
		int k = 0;
		for (k = 0; k < a.size; k++)
		{
			flot << "[" << a.Data[k].i << "," << a.Data[k].j << "] = " << a.Data[k].s << "\n";
		}

		return flot;

	}

	matrixCOO oplus(matrixCOO& a, matrixCOO& b)
	{
		int i = 0, j = 0, index = 0;
		Ttriplet temp;
		matrixCOO result;
		result.row = a.getrow();
		result.col = a.getcol();
		result.size = 0;
		if ((a.col == b.col) && (a.row == b.row))
		{
			while ((i != a.size) && (j != b.size))
			{
				index = a.comp(a.geti(i), a.getj(i), b.geti(j), b.getj(j));

				if (index == 0)
				{
					temp.s = oplus(a.Data[i].s, b.Data[j].s);
					temp.i = a.geti(i);
					temp.j = a.getj(i);
					result.pushback(temp);
					i++;
					j++;
				}
				else
				{
					if (index == -1)
					{
						temp.s = a.Data[i].s;
						temp.i = a.geti(i);
						temp.j = a.getj(i);
						result.pushback(temp);

						i++;


					}
					else
					{

						temp.s = b.Data[j].s;
						temp.i = b.geti(j);
						temp.j = b.getj(j);
						result.pushback(temp);

						j++;
					}
				}

			}
			while (i != a.size) // il ne reste plus que des A
			{
				temp.s = a.Data[i].s;
				temp.i = a.geti(i);
				temp.j = a.getj(i);
				result.pushback(temp);

				i++;
			}
			while (j != b.size) // il ne reste plus que des B
			{

				temp.s = b.Data[j].s;
				temp.i = b.geti(j);
				temp.j = b.getj(j);
				result.pushback(temp);

				j++;

			}

			return (result);

		}
		else
		{
			mem_limite  l(27);   throw(l);
		}
	}


	matrixCOO inf(matrixCOO& a, matrixCOO& b)
	{
		int i = 0, j = 0, index = 0;
		Ttriplet temp;
		matrixCOO result;
		result.row = a.getrow();
		result.col = a.getcol();
		result.size = 0;
		if ((a.col == b.col) && (a.row == b.row))
		{
			while ((i != a.size) && (j != b.size))
			{
				index = a.comp(a.geti(i), a.getj(i), b.geti(j), b.getj(j));

				if (index == 0)
				{
					temp.s = inf(a.Data[i].s, b.Data[j].s);
					temp.i = a.geti(i);
					temp.j = a.getj(i);

					result.pushback(temp);

					i++;
					j++;

				}
				else
				{
					if (index == -1)
					{
						temp.s = a.Data[i].s;
						temp.i = a.geti(i);
						temp.j = a.getj(i);
						result.pushback(temp);

						i++;


					}
					else
					{

						temp.s = b.Data[j].s;
						temp.i = b.geti(j);
						temp.j = b.getj(j);
						result.pushback(temp);

						j++;
					}
				}

			}
			while (i != a.size) // il ne reste plus que des A
			{
				temp.s = a.Data[i].s;
				temp.i = a.geti(i);
				temp.j = a.getj(i);
				result.pushback(temp);

				i++;
			}
			while (j != b.size) // il ne reste plus que des B
			{

				temp.s = b.Data[j].s;
				temp.i = b.geti(j);
				temp.j = b.getj(j);
				result.pushback(temp);

				j++;
			}

			return (result);

		}
		else
		{
			mem_limite  l(27);   throw(l);
		}
	}

	void transpose(matrixCOO& a, matrixCOO& b)
	{
		int n = 0, i = 0, j = 0, currentb = 0;
		n = a.getsize();
		b.row = a.getcol();
		b.col = a.getrow();
		serie seps;
		seps.init(epsilon, epsilon, e);
		Ttriplet temp;
		b.size = n;
		if (n > 0)
		{
			currentb = 1;
			for (i = 0; i < a.col; i++)
			{
				for (j = 1; j <= n; j++)
				{
					if (a.Data[j].j == i)
					{
						temp.i = a.getj(j);
						temp.j = a.geti(j);
						temp.s = a.Data[j].s;
						if (!((temp.s == seps) || (a(i, j) == seps)))
						{

							b.pushback(temp);

						}
						currentb++;
					}
				}
			}
		}
	}

	void fast_transpose(matrixCOO & a, matrixCOO& b)
	{

		int row_terms[MAX_COL], starting_pos[MAX_COL];
		int i = 0, j = 0, num_cols = a.col, num_terms = a.size;
		b.row = num_cols; b.col = a.row;
		b.size = num_terms;
		if (num_terms > 0)
		{
			for (i = 0; i < num_cols; i++)
			{
				row_terms[i] = 0;
			}

			for (i = 0; i < num_terms; i++)
			{
				row_terms[a.Data[i].j]++;
				starting_pos[0] = 1;
			}

			for (i = 0; i < num_cols; i++)
			{
				starting_pos[i] = starting_pos[i - 1] + row_terms[i - 1];
			}
			for (i = 0; i < num_terms; i++)
			{
				j = starting_pos[a.Data[i].j]++;
				b.Data[j].i = a.Data[i].j; b.Data[j].j = a.Data[i].i;
				b.Data[j].s = a.Data[i].s;
			}

		}

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

	matrixCOO otimes(matrixCOO& a, matrixCOO& b)
	{
		matrixCOO d;
		int i, j, column, totalb = b.size, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.size;
		int cols_b = b.col;
		int row_begin = 1, row = a.Data[1].i;
		serie sum, temp;
		matrixCOO new_b;
		if (cols_a != b.row)
		{
			printf("incompatible matrices");
			exit(1);
		}
		fast_transpose(b, new_b);
		a.Data[totala + 1].i = rows_a;
		new_b.Data[totalb + 1].i = cols_b;
		new_b.Data[totalb + 1].j = 0;
		for (i = 1; i <= totala; )
		{
			column = new_b.Data[1].i;
			for (j = 1; j <= totalb + 1;)
			{
				if (a.Data[i].i != row)
				{
					storesum(d, &totald, row, column, &sum);
					i = row_begin;
					for (; new_b.Data[j].i == column; j++)
						;
					column = new_b.Data[j].i;
				}
				else if (new_b.Data[j].i != column)
				{
					storesum(d, &totald, row, column, &sum);
					i = row_begin;
					column = new_b.Data[j].i;
				}
				else switch (compare_multi(a.Data[i].j, new_b.Data[j].j))
				{
				case -1: i++;
					break;
				case 0:
					temp = otimes(a.Data[i++].s, new_b.Data[j++].s);
					sum = oplus(sum, temp);
					break;
				case 1: j++;
				}
			}
			for (; a.Data[i].i == row; i++)
				;
			row_begin = i; row = a.Data[i].i;
		}

		d.row = rows_a;
		d.col = cols_b;
		d.size = totald;
		return d;
	}
	void storesum(matrixCOO d, int *totald, int row, int column, serie * sum)
	{
		serie seps;
		seps.init(epsilon, epsilon, e);
		if (!(*sum == seps))
		{
			if (*totald < MAX_TERMS)
			{
				d.Data[++*totald].i = row;
				d.Data[*totald].j = column;
				d.Data[++*totald].s = *sum;
				*sum = seps;

			}
		}
	}
	/*
	matrixCOO lfrac(matrixCOO& a,matrixCOO& b) //residuation a gauche de 2 matrices de series p�iodiques b\a
	{
		gd e(0,0);
		serie temp;
		serie * adtemp;
		temp=e;
		adtemp=&temp;
		matrixCOO d;
		matrixCOO * new_b;
		std::COO<ind,serie>::iterator itListA;
		std::COO<ind,serie>::iterator itListB;
		itListA=a.aData->begin();
		int i, j, column, totalb = b.value, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.value ;
		int cols_b = b.col;
		int row_begin = 1 , row = itListA->first.first;
	   ind const_pairij (i,j);
	   ind const_pairji (j,i);
	   ind const_pairi0 (i,0);
	   ind const_pairj0 (j,0);

		ind const_pair_row_col(row,column);

		serie sum; /// QUE METTRE POUR SUM ...
		new_b = new matrixCOO(); //int new_b[MAX_TERMS][3];
		if(cols_a != b.row)
		{
			printf("Incompatible matrices\n");
			mem_limite  l(42);   throw(l);
		}
		*new_b = transpose(b);
		itListB=new_b->aData->begin();

		// condition de frontière
	   /// a[totala+1].row = rows_a;    new_b[totalb+1].row = cols_b;    new_b[totalb+1].col = 0;//
		for(i=1;i<= totala;)
		{
			column = itListB->first.first; //column=new_b[1].row;
			for(j=1;j<= totalb+1;)
			{
				//multiplie ligne de a par colonne de b
				if(itListA->first.first!=row)// if(a[i].row != row)
				{
					if(!(sum==*adtemp))
					{
						d.aData->insert(std::make_pair(const_pair_row_col,frac(a.aData->find(const_pairi0)->second,b.aData->find(const_pairj0)->second)));
					}//storesum(d,&totald, row, column, &sum);
					i = row_begin;
					for(;new_b->aData->find(const_pairij)->first.first==column; j++)
					//for(;new_b[j].row==column; j++)
					;
					column = new_b->aData->find(const_pairij)->first.first; // column = new_b[j].row;
				}
				else if(itListB->first.first!=column) //if(new_b[j].row != column)
						{
						 if(!(sum==*adtemp))
							{
							  d.aData->erase(const_pair_row_col);
							  d.aData->insert(std::make_pair(const_pair_row_col,frac(a.aData->find(const_pairi0)->second,b.aData->find(const_pairj0)->second)));
						}     //storesum(d,&totald, row, column, &sum);
							i = row_begin;
					column = new_b->aData->find(const_pairij)->first.first; //column = new_b[j].row;
						}
				else switch (compare_multi(a.aData->find(const_pairij)->first.second, new_b->aData->find(const_pairji)->first.second))
			   //else switch (Compare((a[i].col, new_b[j].col))
						{
						   case -1: // aller au terme suivant dans a
						   i++;
						   itListA++;
							break;

						   case 0: //ajouter termes, aller au prochain terme dans a et b
						   temp=frac(itListA->second,itListB->second);
						   sum=inf(sum,temp);
							//a.aData->find(const_pairik)->second,b.aData->find(const_pairlj)->second));
						   // sum += (a[i++].value * new_b[j++].value);
							break;
						   case 1: //aller au prochain terme dans b
						   j++;
						   itListB++;
						}
			} //fin de for j<=totalb+1
			for(; itListA->first.first==row;i++)
			;
			row_begin = i; row = itListA->first.first;
		}// fin de for i <= totala
		d.row = rows_a;
		d.col = cols_b;
		d.value = totald;

	   int i,j,k;
		ind const_pair (i,j);
	   ind const_pairki (k,i);
	   ind const_pairkj (k,j);
	   ind const_pair0i (0,i);
	   ind const_pair0j (0,j);
	   matrixCOO result(b.col,a.col);
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

	}


	matrixCOO rfrac(matrixCOO& a,matrixCOO& b) //residuation a droite de 2 matrices de series p�iodiques a/b
	{

		gd e(0,0);
		serie temp;
		serie * adtemp;
		temp=e;
		adtemp=&temp;
		matrixCOO d;
		matrixCOO * new_b;
		std::COO<ind,serie>::iterator itListA;
		std::COO<ind,serie>::iterator itListB;
		itListA=a.aData->begin();
		int i, j, k , l, column, totalb = b.value, totald = 0;
		int rows_a = a.row, cols_a = a.col, totala = a.value ;
		int cols_b = b.col;
		int row_begin = 1 , row = itListA->first.first;
	   ind const_pairij (i,j);
	   ind const_pair0i (0,i);
	   ind const_pair0j (0,j);

		ind const_pair_row_col(row,column);

		serie sum; /// QUE METTRE POUR SUM ...
		new_b = new matrixCOO(); //int new_b[MAX_TERMS][3];
		if(cols_a != b.row)
		{
			printf("Incompatible matrices\n");
			mem_limite  l(42);   throw(l);
		}
		*new_b = transpose(b);
		itListB=new_b->aData->begin();

		// condition de frontière
	   // a[totala+1].row = rows_a;    new_b[totalb+1].row = cols_b;    new_b[totalb+1].col = 0;//
		for(i=1;i<= totala;)
		{
			column = itListB->first.first; //column=new_b[1].row;
			for(j=1;j<= totalb+1;)
			{
				//multiplie ligne de a par colonne de b
				if(itListA->first.first!=row)// if(a[i].row != row)
				{
					if(!(sum==*adtemp))
					{
						d.aData->insert(std::make_pair(const_pair_row_col,frac(a.aData->find(const_pair0j)->second,b.aData->find(const_pair0i)->second)));
					}//storesum(d,&totald, row, column, &sum);
					i = row_begin;
					for(;new_b->aData->find(const_pairij)->first.first==column; j++)
					//for(;new_b[j].row==column; j++)
					;
					column = new_b->aData->find(const_pairij)->first.first; // column = new_b[j].row;
				}
				else if(itListB->first.first!=column) //if(new_b[j].row != column)
						{
						 if(!(sum==*adtemp))
							{
							  d.aData->erase(const_pair_row_col);
							  d.aData->insert(std::make_pair(const_pair_row_col,frac(a.aData->find(const_pair0j)->second,b.aData->find(const_pair0i)->second)));
						}     //storesum(d,&totald, row, column, &sum);
							i = row_begin;
					column = new_b->aData->find(const_pairij)->first.first; //column = new_b[j].row;
						}
			   else switch (compare_multi(a.aData->find(const_pairij)->first.second, new_b->aData->find(const_pairij)->first.second))
			   //else switch (Compare((a[i].col, new_b[j].col))
						{
						   case -1: // aller au terme suivant dans a
						   i++;
						   itListA++;
							break;

						   case 0: //ajouter termes, aller au prochain terme dans a et b
							temp=frac(itListA->second,itListB->second);
							sum=inf(sum,temp);
							//a.aData->find(const_pairik)->second,b.aData->find(const_pairlj)->second));
						   // sum += (a[i++].value * new_b[j++].value);
							break;
						   case 1: //aller au prochain terme dans b
						   j++;
						   itListB++;
						}
			} //fin de for j<=totalb+1
			for(; itListA->first.first==row;i++)
			;
			row_begin = i; row = itListA->first.first;
		}// fin de for i <= totala
		d.row = rows_a;
		d.col = cols_b;
		d.value = totald;


	   int i,j,k;
	   ind const_pair (i,j);
	   ind const_pairik (i,k);
	   ind const_pairjk (j,k);
	   ind const_pairi0 (i,0);
	   ind const_pairj0 (j,0);
	   matrixCOO result(a.row,b.row);
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

	}

	matrixCOO star(matrixCOO ak_1)
	{
	  int i,j,k;
	  serie akkstar,temp,akktemp;
	  gd e(0,0);
	  matrixCOO a(ak_1.row,ak_1.col);
	  ind const_pairkj (k,j);
	  ind const_pairik (i,k);
	  ind const_pairkk (k,k);
	  ind const_pairij (i,j);

		for (k=0;k<a.row;k++)
		{
			akkstar=star(ak_1(k,k));

			for (i=0;i<a.row;i++)
			{
				for (j=0;j<a.col;j++)

				{
					akktemp=otimes(akkstar,ak_1.aData->find(const_pairkj)->second);
					akktemp=otimes(ak_1.aData->find(const_pairik)->second,akktemp);
					a.aData->insert(std::make_pair(const_pairij,oplus(ak_1.aData->find(const_pairij)->second,akktemp)));
				}
			}

			 ak_1=a;

		}

		for (k=0;k<a.row;k++)
		{
			 a.aData->insert(std::make_pair(const_pairkk,oplus(e,a.aData->find(const_pairkk)->second)));

		}
		return(a);
	}


	matrixCOO prcaus(matrixCOO & s)
	{
		matrixCOO local(s.row,s.col);

		int i=0;
		int j=0;
		serie SerieS;
		s=s(i,j);
		for(i=0;i<s.row;i++) for(j=0;j<s.col;j++) local(i,j)=prcaus(SerieS);

		return local;
	}
	*/

}//fin namespace mmgd
