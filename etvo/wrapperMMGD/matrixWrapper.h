#ifndef __TmatrixwrapperII_H__
#define __TmatrixwrapperII_H__

#include<iostream>
#include<deque>
#include "../common/etvoException.h"
#include "../common/global.h"

/*!
* \file  matrixWrapper.h
*
* /

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
	/*!
  * \class etvo::matrix<T>
  *
  * \brief Template class to create matrix of semiring elements (series,seriesEd ...)
  *
  *
  * \author BC LH JT LARIS
  * \version 2.0
  */


  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class matrix {
  public:

    operator T()
    {
      return _matrix[0][0];
    }

	/// Initialize a matrix of size li x co
    matrix<T>(unsigned li = 1, unsigned co = 1) : _matrix(li, std::deque<T>(co))
    {
    }

	/// returns the entry (li,co)
    T & operator()(unsigned li, unsigned co)
    {
      if (li < GetRow() && co < GetColumn())	return _matrix[li][co];
      else
      {
        //std::cerr << "Index out of range" << std::endl;
		throw etvoException(100, "Index out of range");
        return _foo;
      }
    }

	/// returns the entry (li,co)
    T  operator()(unsigned li, unsigned co) const
    {
      if (li < GetRow() && co < GetColumn())	return _matrix[li][co];
      else
      {
		throw etvoException(100,"Index out of range");
        return _foo;
      }
    }

	/// returns the sum of two matrices (with the + rule from T)
    matrix<T> operator+(const matrix<T> & mat) const
    {
      return oplusGlobal((*this), mat);
    }

	/// returns the product of two matrices (with the * rule from T)
    matrix<T> operator*(const matrix<T> & mat) const
    {
      return otimesGlobal((*this), mat);
    }

	/// returns the left product residuation of two matrices 
    matrix<T> lfrac(const matrix<T> & mat) const
    {
      return lfracGlobal((*this), mat);
    }

	/// returns the right product residuation of two matrices 
    matrix<T> rfrac(const matrix<T> & mat) const
    {
      return rfracGlobal((*this), mat);
    }
	/// returns the infimum of two matrices (with the rule from T)
    matrix<T> inf(const matrix<T> & mat) const
    {
      return infGlobal((*this), mat);
    }

	/// returns the Kleene star of the current matrix
    matrix<T> star() const
    {	
		//return starMmgdGlobal((*this));
		//return starGaussGlobal((*this));
		switch (global::mat_star_alg)
		{
		case global::mat_star_block:
			return starByBlockGlobal((*this));
			break;
		case global::mat_star_gauss:
			return starGaussGlobal((*this));
			break;
		case global::mat_star_mmgd:
			return starMmgdGlobal((*this));
			break;
		default:
			return starGaussGlobal((*this));
			break;
		}
    }
	/// returns the number of rows
    unsigned int GetRow() const { return (unsigned int)_matrix.size(); }

	/// returns the number of columns
    unsigned int GetColumn() const {
      if (_matrix.size()) return (unsigned int)_matrix[0].size();
      else return 0;
    }

	/// checks equality
    bool operator==(const matrix<T> & m) const
    {
      for (unsigned i = 0; i < GetRow(); i++)
      {
        for (unsigned j = 0; j < GetColumn(); j++)
        {
          if (!((*this)(i, j) == m(i, j))) return false;
        }
      }
      return true;
    }

  private:
    T _foo;
    std::deque<std::deque<T> > _matrix;
  };

  template<class T>
  std::ostream & operator<<(std::ostream & flot, const matrix<T> & m)
  {
	bool oneOut = false;
	unsigned k = 0;
    for (unsigned i = 0; i < m.GetRow(); i++)
    {
      for (unsigned j = 0; j < m.GetColumn(); j++)
      {
        if (!m(i, j).isEpsilon())
        {
		  oneOut = true;
          flot << "[" << i << "," << j << "]=";
		  flot << m(i, j);
		  if(k!=m.GetRow()*m.GetColumn()-1) flot << std::endl;
		  k++;
        }
      }
    }
	if (!oneOut)
	{		
		flot << "eps";
	}
    return flot;
  }

  template<class T>
  matrix<T> oplusGlobal(const matrix<T> & m1, const matrix<T> & m2)
  {
    if (m1.GetRow() == m2.GetRow() && m1.GetColumn() == m2.GetColumn())
    {
      matrix<T> res(m1.GetRow(), m1.GetColumn());

      for (unsigned i = 0; i < m1.GetRow(); i++)
      {
        for (unsigned j = 0; j < m1.GetColumn(); j++)
        {
          res(i, j) = oplus(m1(i, j), m2(i, j));
        }
      }
      return res;
    }
	else
	{
		throw etvoException(100,"The same size required for the sum of matrices");
		return matrix<T>(1, 1);
	}
  }

  template<class T>
  matrix<T> infGlobal(const matrix<T> & m1, const matrix<T> & m2)
  {
    if (m1.GetRow() == m2.GetRow() && m1.GetColumn() == m2.GetColumn())
    {
      matrix<T> res(m1.GetRow(), m1.GetColumn());

      for (unsigned i = 0; i < m1.GetRow(); i++)
      {
        for (unsigned j = 0; j < m1.GetColumn(); j++)
        {
          res(i, j) = inf(m1(i, j), m2(i, j));
        }
      }
      return res;
    }
	else
	{
		throw etvoException(100, "The same size required for the sum of matrices");
		return matrix<T>(1, 1);
	}
  }

  template<class T>
  matrix<T> otimesGlobal(const matrix<T> & m1, const matrix<T> & m2)
  {
    if (m1.GetColumn() == m2.GetRow())
    {
      matrix<T> res(m1.GetRow(), m2.GetColumn());

      for (unsigned i = 0; i < m1.GetRow(); i++)
      {
        for (unsigned j = 0; j < m2.GetColumn(); j++)
        {
          for (unsigned k = 0; k < m1.GetColumn(); k++)
          {
            res(i, j) = oplus(res(i, j), otimes(m1(i, k), m2(k, j)));
          }
        }
      }
      return res;
    }
	else
	{
		throw etvoException(100, "No appropriate size for product of matrices");
		return matrix<T>(1, 1);
	}
  }

  
  /// Matrix x scalar
  template<class T>
  matrix<T> otimesGlobal(const matrix<T> & m1, const T & scal)
  {
	 matrix<T> res(m1.GetRow(), m1.GetColumn());

	 for (unsigned i = 0; i < m1.GetRow(); i++)
	  {
		  for (unsigned j = 0; j < m1.GetColumn(); j++)
		  {
			  res(i, j) = otimes(m1(i, j), scal);				  
		  }
	  }
	  return res;	 
  }

  /// scalar x Matrix
  template<class T>
  matrix<T> otimesGlobal(const T & scal,const matrix<T> & m2)
  {
	  matrix<T> res(m2.GetRow(), m2.GetColumn());

	  for (unsigned i = 0; i < m2.GetRow(); i++)
	  {
		  for (unsigned j = 0; j < m2.GetColumn(); j++)
		  {
			  res(i, j) = otimes(scal,m2(i,j));
		  }
	  }
	  return res;
  }

  
  /// starGlobal (Kleene star algorithm)
  /// Gauss-Jordan Method (Gondran Minoux)
  template<class T>
  matrix<T> starGaussGlobal(const matrix<T> & A)
  {
	  T akktemp;
	  matrix<T> An = A;
	  if (A.GetRow() == A.GetColumn())
	  {
		  matrix<T> Anext(A.GetRow(), A.GetColumn());
		  unsigned int i, j, k;
		  for (k = 0; k < A.GetRow(); k++)
		  {
			  //cout << "An=" << An << endl;
			  Anext(k,k) = star(An(k, k));
			  //cout << "Anext(k,k,)=" << Anext(k, k) << endl;

			  for (i = 0; i < A.GetRow(); i++)
			  {
				  for (j = 0; j < A.GetColumn(); j++)
				  {		
					  if (i != k || j != k)
					  {
						  akktemp = otimes(Anext(k, k), An(k, j));
						  akktemp = otimes(An(i, k), akktemp);
						  Anext(i, j) = oplus(An(i, j), akktemp);
						 // cout << "Anext(i,j)=" << Anext(i, j) << endl;
					  }
				  }
			  }
			  An = Anext;
		  }
		  for (k = 0; k < A.GetRow(); k++) {
			  An(k, k) = oplus(An(k, k),T::E());
		  }
		  return(An);
	  }
	  else
	  {
		  throw etvoException(100, "A square matrix is needed for Kleene star");
		  return matrix<T>(1, 1);
	  }
  }
  
  /// starMmgdGlobal (Kleene star algorithm)
  /// From the LMinMaxGD library
  template<class T>
  matrix<T> starMmgdGlobal(const matrix<T> & Ak)
  {
	  if (Ak.GetRow() == Ak.GetColumn())
	  {
		  matrix<T> ak_1 = Ak;
		  T akkstar, temp, akktemp;
		  //gd e(0, 0);
		  matrix<T> a(ak_1.GetRow(), ak_1.GetColumn());
		  T s;
		  int i, j, k;
		  int score = 0, scoremax = 0;

		  for (k = 0; k < a.GetRow(); k++)
		  {
			 // cout << "-------------------------------" << endl;
			 // cout << "k=" << k << endl;
			  //cout << "-------------------------------" << endl;

			  //cout << "ak_1=" << ak_1 << endl;
			  akkstar = star(ak_1(k, k));
			 // cout << "akkstar=" << akkstar << endl;
			  			  

			  for (i = 0; i < a.GetRow(); i++)
			  {
				  for (j = 0; j < a.GetColumn(); j++)
				  {
					 // cout << "i=" << i;
					 // cout << "j=" << j << endl;
					  akktemp = otimes(akkstar, ak_1(k, j));
					 // cout << "akkstar*ak_1(" <<k <<"," << j << ") =" << akktemp << endl;
					  akktemp = otimes(ak_1(i, k), akktemp);
					 // cout << "ak_1(" << i << "," << k << ")*akktemp =" << akktemp << endl;
					 // BUG oplus(monom,seriesEd) 
					 a(i, j) = oplus(ak_1(i, j), akktemp);
					 // a(i, j) = oplus(akktemp, ak_1(i, j));
					 // cout << "a(" <<i << "," <<j << ") =" << a(i,j) << endl;
				  }
			  }
			  //cout << "a (fin de boucle) = " << a << endl;
			  ak_1 = a;
			  // cout<<"\n";
		 //if(score>scoremax) scoremax=score;

		// cout<<" k "<<k<<" a"<<k<<"="<<ak_1<<endl;
		  }

		  for (k = 0; k < a.GetRow(); k++)
		  {
			  a(k, k) = oplus(T::E(), a(k, k));

		  }
		  //	cout<<"scoremax"<<scoremax<<endl;
			  //system("pause");
		  return(a);
	  }
	  else
	  {
		  throw etvoException(100, "A square matrix is needed for Kleene star");
		  return matrix<T>(1, 1);
	  }
  }


  /*
  // Version of LMinMaxGD re-interpreted by BC
  template<class T>
  matrix<T> starMmgdGlobal(const matrix<T> & ak_1)
  {
	  T akkstar, temp, akktemp;
	  matrix<T> mTak_1 = ak_1;

	  if (mTak_1.GetRow() == mTak_1.GetColumn())
	  {
		  matrix<T> a(mTak_1.GetRow(), mTak_1.GetColumn());

		  unsigned int i, j, k;

		  for (k = 0; k < a.GetRow(); k++)
		  {
			  //cout << mTak_1(k, k) << endl;
			  akkstar = star(mTak_1(k, k));
			  //cout << akkstar << endl;

			  for (i = 0; i < a.GetRow(); i++)
			  {
				  for (j = 0; j < a.GetColumn(); j++)
				  {
					  akktemp = otimes(akkstar, mTak_1(k, j));
					  akktemp = otimes(mTak_1(i, k), akktemp);
					  a(i, j) = oplus(mTak_1(i, j), akktemp);
					  //cout << a(i,j) << endl;
				  }
			  }

			  mTak_1 = a;

		  }

		  for (k = 0; k < a.GetRow(); k++)
		  {
			  a(k, k) = oplus(T::E(), a(k, k));
		  }
		  return(a);
	  }
	  else return matrix<T>(1, 1);
  }  
  */

  /// starByBlockGlobal (Kleene star algorithm from 4.100 BCOQ)
  template<class T>
  matrix<T> starByBlockGlobal(const matrix<T> & ak)
  {	  
	  unsigned int sMat = ak.GetRow();
	  if (sMat == ak.GetColumn())
	  {		  
		  matrix<T> a(sMat,sMat);
		  if (sMat== 0)
		  {
			  return a;
		  }
		  if (sMat == 1)
		  {
			  a(0, 0) = ak(0, 0).star();
			  return a;
		  }
		  if (sMat == 2)  // see 4.100 in BCOQ
		  {
			  T tmpa11s = ak(0, 0).star(); //a11*
			  T tmpb = otimes(ak(1, 0), tmpa11s); // (a21.a11*.a12+a22)*
			  tmpb = oplus(otimes(tmpb, ak(0, 1)), ak(1, 1));
			  tmpb = tmpb.star();
			  a(1, 1) = tmpb;
			  T tmpc = otimes(tmpa11s, ak(0, 1));
			  tmpc = otimes(tmpc, tmpb);
			  a(0, 1) = tmpc;
			  tmpc = otimes(tmpc, ak(1, 0));
			  tmpc = otimes(tmpc, tmpa11s);			 
			  a(0, 0) = oplus(tmpa11s, tmpc);
			  tmpc = otimes(tmpb, ak(1, 0));
			  a(1,0) = otimes(tmpc, tmpa11s);
			  return a;
		  }
		  else  // size >1
		  {
			  T tmpa11s = ak(0, 0).star(); //a11* scalar
			  matrix<T> a12(1, sMat - 1);   // block 12
			  matrix<T> a21(sMat - 1,1);	// block 21
			  matrix<T> a22(sMat - 1, sMat-1); // block 22
			  for (unsigned i = 1; i < sMat; i++)
			  {
				  a12(0, i - 1) = ak(0, i);
				  a21(i - 1, 0) = ak(i, 0);
			  }
			  for (unsigned i = 1; i < sMat; i++)
			  {
				  for (unsigned j = 1; j < sMat; j++) a22(i - 1, j - 1) = ak(i, j);				  
			  }

			  matrix<T> Tmpb = otimesGlobal(a21, tmpa11s); // (a21.a11*.a12+a22)*
			  Tmpb = oplusGlobal(otimesGlobal(Tmpb, a12),a22);
			  Tmpb = starByBlockGlobal(Tmpb);  // recursive
			  // block (a*)22
			  for (unsigned i = 1; i < sMat; i++)
			  {
				  for (unsigned j = 1; j < sMat; j++) a(i, j) = Tmpb(i-1, j-1);
			  }			  			 
			  matrix<T> Tmpc  = otimesGlobal(tmpa11s, a12);
			  Tmpc = otimesGlobal(Tmpc, Tmpb);
			  //block (a*)12
			  for (unsigned i = 1; i < sMat; i++)
			  {
				  a(0, i) = Tmpc(0,i-1);
			  }
			  Tmpc = otimesGlobal(Tmpc, a21);
			  Tmpc = otimesGlobal(Tmpc, tmpa11s);
			  // scalar (a*)11 = 
			  a(0, 0) = oplus(tmpa11s, Tmpc(0,0));

			  Tmpc = otimesGlobal(Tmpb, a21);
			  Tmpc = otimesGlobal(Tmpc, tmpa11s);
			  // (a*)21			  
			  for (unsigned i = 1; i < sMat; i++){
				  a(i,0) = Tmpc(i - 1,0);
			  }
			  return a;
		  }
	  }
	  else
	  {
		  throw etvoException(100, "A square matrix is needed for Kleene star");
		  return matrix<T>(1, 1);
	  }
  }


  template<class T>
  matrix<T> lfracGlobal(const matrix<T> & m1, const matrix<T> & m2)		// m2\m1
  {
    matrix<T> result(m2.GetColumn(), m1.GetColumn());
    T CHtampon;

    if (m1.GetRow() != m2.GetRow())
    {
	  throw etvoException(100, "No appropriate size for lfrac of matrices");
      return matrix<T>(1, 1);

    }
    else
    {
      for (unsigned i = 0; i < m2.GetColumn(); i++)
      {

        for (unsigned j = 0; j < m1.GetColumn(); j++)
        {

          result(i, j) = lfrac(m1(0, j), m2(0, i));

          for (unsigned k = 1; k < m2.GetRow(); k++)
          {

            //cout << m1(k,j) << "/" << m2(k,i) << endl;
            CHtampon = lfrac(m1(k, j), m2(k, i));
            //cout << result(i,j) << "^" << CHtampon << endl;
            result(i, j) = inf(result(i, j), CHtampon);
          }

          //	cout << "[" <<i << "," << j << "]=" <<result(i,j) << endl;
        }
      }
      return result;

    }

  }


  template<class T>
  matrix<T> rfracGlobal(const matrix<T> & m1, const matrix<T> & m2)		// m1/m2
  {
    matrix<T> result(m1.GetRow(), m2.GetRow());
    T CHtampon;

    if (m1.GetColumn() != m2.GetColumn())
    {
	  throw etvoException(100, "No appropriate size for rfrac of matrices");
      return matrix<T>(1, 1);

    }
    else
    {
      for (unsigned i = 0; i < m1.GetRow(); i++)
      {
        for (unsigned j = 0; j < m2.GetRow(); j++)
        {
          result(i, j) = rfrac(m1(i, 0), m2(j, 0));

          for (unsigned k = 1; k < m2.GetColumn(); k++)
          {
            CHtampon = rfrac(m1(i, k), m2(j, k));
            result(i, j) = inf(result(i, j), CHtampon);
          }
        }
      }
      return result;
    }
  }

}
#endif
