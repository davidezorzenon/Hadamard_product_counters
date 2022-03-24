#ifndef _WIN32
#include "../include/serie.h"
#else
#include "..\include\serie.h"
#endif

#define MAX(a,b)	(( (a)>(b))?(a):(b))
#define MIN(a,b)	(( (a)<(b))?(a):(b))

namespace mmgd
{
#ifndef _WIN32
#include "../include/serie.h"
#else
#include "..\include\serie.h"
#endif

#define MAX(a,b)	(( (a)>(b))?(a):(b))
#define MIN(a,b)	(( (a)<(b))?(a):(b))



 void serie :: affecte(const poly& p1,const poly& q1,const gd& r1,int can)
 // initialise la serie avec p1,q1,r1
  { if (&p!=&p1) p=p1;
    if (&q!=&q1) q=q1;
    if (&r!=&r1) r=r1;
	canonise=can;
    }

 serie :: serie(void)
 // constructeur 0 : serie = epsilon + epsilon (0,0)*
 { r.init(0,0);
   canonise=0;	}  // on ne considere que des etoiles de monomes causaux

 serie ::  serie(const serie &serie1 )
   // constructuer 1 : serie initialisee avec un objet serie
 {
  affecte(serie1.p,serie1.q,serie1.r,serie1.canonise);

   }


 serie ::  serie(const poly& p1, const poly& q1 , gd& r1)
 // constructuer 2 : serie initialisee avec deux polynomes et un monome
 { if (r1.getd()<0 || r1.getg()<0)
 { taille_incorrecte number(0);
  throw(number);
 }
   affecte(p1,q1,r1,0);
  }

serie ::  serie(poly &p )
 // constructuer 2bis : serie initialisee avec un objet polyn�e
{ serie temp;

  p.simpli();
  temp.p=p;

  temp.q=p.getpol(p.getn()-1);
  temp.p.pop();
  temp.r.init(0,0);
  temp.canonise=1;
  affecte(temp.p,temp.q,temp.r,temp.canonise);
}

serie ::  serie( gd &gd1 )
 // constructuer 2bis : serie initialisee avec un objet monome
{ serie temp;
    temp.p.init(infinit,_infinit);
  temp.q.init(gd1.getg(),gd1.getd());
  temp.r.init(0,0);
  temp.canonise=1;
  affecte(temp.p,temp.q,temp.r,temp.canonise);
}

 serie ::  serie(unsigned int np1,unsigned int nq1, gd* p1, gd* q1 , gd& r1)
 // constructeur 3 : initialise avec des tableaux de monomes p, q, r
 { if (r1.getd()<0 || r1.getg()<0)
 { taille_incorrecte number(0);
  throw(number);}

   p.init(np1,p1,0);
   q.init(nq1,q1,0);
   r=r1;
   canonise=0;
   canon();
    }

 serie :: ~serie(void)
 // destructeur
  {}



serie&  serie :: operator =(const serie& serie1)
// initialise avec un objet serie, surdefinition du =
 { if (&serie1!=this) // si serie1 est != de la serie courante
  affecte(serie1.p,serie1.q,serie1.r,serie1.canonise);
  return *this;
  }

serie& serie :: operator=(const poly& p1)	  // initialise avec un polynome cast polynome->serie
{
  p=p1;
  p.simpli();
  q=p.getpol(p.getn()-1);
  p.pop();
  if (q.getpol(q.getn()-1).getd()!=infinit) r.init(0,0);
  else r.init(0,infinit);
  canonise=1;
  return *this;
}

serie& serie :: operator=(const gd& gd1)	  // initialise avec un monome cast monome->serie
{ p.init(infinit,_infinit);
  q=gd1;
  r.init(0,0);
  canonise=1;
return *this;
}



void serie ::  init( poly& p1, poly& q1 , gd& r1)
 //  serie initialisee avec deux polynomes et un monome
 { if (r1.getd()<0 || r1.getg()<0)

{ taille_incorrecte number(0);
  throw(number);}

    affecte(p1,q1,r1,0);
	canon();
  }

void serie ::  init( gd& pgd1, gd& qgd1 , gd& r1)
 //  serie initialisee avec trois monomes
 { poly p1(pgd1),q1(qgd1);
	if (r1.getd()<0 || r1.getg()<0)
	{ taille_incorrecte number(0);
     throw(number);}
    affecte(p1,q1,r1,0);
	canon();
  }

void serie ::  init( gd& pgd1, poly& q1 , gd& r1)
 //  serie initialisee avec 1 monome 1 polynome 1 monome
 { poly p1(pgd1);
	if (r1.getd()<0 || r1.getg()<0)
	{ taille_incorrecte number(0);
      throw(number);}
    affecte(p1,q1,r1,0);
	canon();
  }

void serie ::  init( poly& p1, gd& qgd1 ,gd& r1)
 //  serie initialisee avec 1 polynome 1 monome 1 monome
 { poly q1(qgd1);
	if (r1.getd()<0 || r1.getg()<0)
	{ taille_incorrecte number(0);
      throw(number);}

	affecte(p1,q1,r1,0);
	canon();
  }

void serie ::  init(unsigned int np1,unsigned int nq1, gd* p1, gd* q1,gd& r1)
// initialise avec une formulation p1, q1, r1
 { if (r1.getd()<0 || r1.getg()<0)
	{ taille_incorrecte number(0);
      throw(number);}
   p.init(np1,p1,0);
   q.init(nq1,q1,0);
   r=r1;
   canonise=0;
   canon();
    }


void serie :: canon()
// mise sous forme canonique de la serie
{   poly accu,nouveau, etendu,temp,ptemp;
	gd *transitoire=NULL;
	gd *periodique;
	gd nutau;
	unsigned int i,n,nbcoups,egaux,domine,nb_max;
	int k,j;

	long nb_g,indice,nu,tau;
    gd epsilon;

	gd Top(_infinit,infinit);

	if (canonise==1) return;	// deja sous forme canonique


	p.simpli();


	q.simpli();

// cas ou p=T ou q=T
if (p.getpol(0)==Top || q.getpol(0)==Top) // la s�ie vaut top
{	p=epsilon;
	q=Top;
	r.init(0,0);
	canonise=1;
return;
}

// cas ou q=epsilon
if (q.getpol(0)==epsilon) // on a�un polyn�e
{					q=p.getpol(p.getn()-1); // on met le dernier point du polynome
					p.pop(); // et on l'ote de p
                    r.init(0,0);
					canonise=1;
		return;
}

// cas ou p ou q est une trajectoire
if (q.getpol(q.getn()-1).getd()==infinit || p.getpol(p.getn()-1).getd()==infinit )
{ p=oplus(p,q);

  q=p.getpol(p.getn()-1); // on met le dernier point de p dasn q
  p.pop(); // et on l'ote de p
  r.init(0,infinit);
  canonise=1;
  return;
}

// Les cas degeneres
/**********************************/
if (r.getg()==infinit ||  r.getd()==0)
				  { p=oplus(p,q);
					q=p.getpol(p.getn()-1);
					p.pop();
                    r.init(0,0);
					canonise=1;
                    return; }

if (r.getg()>0 && r.getd()==infinit )	{

						p=oplus(p,q);
                        q=otimes(accu=q.getpol(0),r);
						if (q.getpol(0).getg()<= p.getpol(p.getn()-1).getg())
						// si degg de q < degg de p
						{p=oplus(p,q);
						 p.pop();	// ote le dernier ��ent du polynome s'il y en a  2
						}
						r.init(0,infinit);
						canonise=1;
                        return;}

if (r.getd()>0 && r.getg()== 0 )
						{ r.init(0,infinit);
						q=otimes(q.getpol(0),r);
						p=oplus(p,q);
						p.pop();
						canonise=1;
						return;}


/***********************************************************************************************/
// Le cas non degenere
/*****  Mise sous forme propre du periodique ***************************************************/
/* c'est a dire que le motif tient dans le p�iodique				****************************/


j=q.getn()-1;

// on ote les ��ents du polynome q qui serait domine par d'autre apr� d�eloppemnt
while (j>0) {
			i=0;
				while(i<j)
				{

					k= (int) (( q.getpol(j).getg()-q.getpol(i).getg() )/r.getg() ); //arrondi par en dessous
					if  ( (k>= 1) && ( (q.getpol(i).getd()+(int)k*r.getd()) >= q.getpol(j).getd() ) )
					{ q.popj(j);
					  j--;
                	  		i=0;
					}
					else i++;
				}
				j--;
			}

// on reduit la taille du motif pour qu'elle soit incluse r
 j=q.getn()-1; // indice du dernier ��ent
 nb_g= q.getpol(j).getg() -   q.getpol(0).getg() ; // nombre de gamma dans le motif periodique -1



 if (( nb_g >= r.getg() ) || ( ( q.getpol(j).getd() -   q.getpol(0).getd() ) >= r.getd() ) )
 {
	 periodique = new gd[q.getn()];
	 if (periodique==NULL) { mem_limite  l(11);   throw(l); }
	 periodique[0]=q.getpol(j);	// le 1er est le dernier

     nb_max=1+ (int) ( q.getpol(j).getg() -	q.getpol(0).getg() ) / r.getg() ;	// nombre max de point �ajouter au transitoire
	 transitoire=new gd[nb_max*q.getn()];	//nb_max*j correspond �une borne sup du nombre d'��ents qui seront �ajouter au transitoire
	 if (transitoire==NULL) {mem_limite  l(12);   throw(l); }
	 k=0;
     for (i=0;i<j;i++)					// pour tous les points du motif sauf le dernier
	 {  transitoire[k]=q.getpol(i);			// on place le point i
	    nbcoups= (int)  ( q.getpol(j).getg() -	q.getpol(i).getg() -1) / r.getg() ;	// combien de point �ajouter pour d�asser le dernier

       for (n=1;n<=nbcoups;n++) transitoire[k+n]=otimes(transitoire[k+n-1],r);	// ajout des nbcoups points
	   k=k+nbcoups;   // on replace l'indice

	   periodique[i+1]=otimes(transitoire[k],r);	// ajout du point d�assant le dernier dans le nouveau motif
       k++;
     }

	// for (i=0;i<k;i++) p.add(transitoire[i]); //on place les monomes en fin de polyn�e
	// p.simpli();	// on simplifie
	 ptemp.init(k,transitoire,0); // au lieu d'utiliser add, on créé un poly ptemp, déjà trié seulement la simplifiaction
     p=oplus(p,ptemp);               // puis on somme, un simple merge

	 q.init(q.getn(),periodique,0);		// on reinitialise avec le nouveau periodique

	 delete(transitoire);
	 delete(periodique);
 }

/***** Reduction du r et donc de q			************************/
if (r.getg()<=r.getd()) {
	indice=r.getg(); // recherche du plus grand diviseur possible
}
else {
indice=r.getd();
}

while(indice>=2 && q.getn()>1)								// 2 le plus petit diviseur
{
	// est ce que indice divise r.getg() et r.getd()
	if ( (r.getg()%indice)==0 && (r.getd()%indice)==0 )
    	{  // calcul du nouveau nu  et le nouveau tau
		nu=r.getg()/indice;
		tau=r.getd()/indice;
       // calcul du suppos�motif
        	nouveau=q.getpol(0);
		i=1;

	 	while( i<q.getn()-1 && (q.getpol(i).getg()-q.getpol(0).getg())<nu && (q.getpol(i).getd()-q.getpol(0).getd())<tau )
	 	{
			nouveau.add(q.getpol(i));
	    		i++;
	 	}
	  // on l'�end pour comparaison avec q
        nouveau.setsimple(); // pas la peine de simplifier
	  	etendu=nouveau;
     		for (i=1;(int) i<indice;i++)
	 	{
			nutau.init(nu*i,tau*i);
			etendu=oplus(etendu,temp=otimes(nouveau,nutau));
	 	}
	 // on compare etendu et q s'ils sont �aux on a r�uit la taille du p�iodique
	 // sinon il faut reprendre avec un indice plus petit
     		egaux=0;
	 	if (etendu.getn()==q.getn()) // si ils ont la meme taille
	 	{
			i=nouveau.getn();	// les n premiers points sont forcement egaux pas necessaire de les tester
			egaux=1;
			while (egaux==1 && ((unsigned int)i)<q.getn() )
			{
				if (etendu.getpol(i)!=q.getpol(i))
				{
					egaux=0;
				}
				i++;
			}
	 	}

		if (egaux==1) {
			q=nouveau;				// on reduit le p�iodique
			r.init(nu,tau);
			if (r.getg()<=r.getd()) {
				indice=r.getg();
			}
			else{
				indice=r.getd();
			}
		}
		else {
			indice--;
		}  // indice �ait diviseur commun mais il n'y pas �alit�
	}

		else {
		indice--;	  // pas diviseur commun
	     }
	}
/******************************************* r�uction du transitoire *****************/
/*** 1er : des points du transitoire ne seraient-ils pas au dela du p�iodique ********/
/* les derniers points du transitoire ne seraient ils pas domin� par le p�iodique ***/
i=p.getn()-1;

do
{ domine=0;
  j=0;
	do {// on teste si le denier ��ent du transitoire est domin�par un ��ent du p�iodique
		if (p.getpol(i)<=q.getpol(j) && p.getpol(i)!=epsilon) //p dif�ent de epsilon
									{	p.pop();		// si oui on l'ote
										i=p.getn()-1;	// on pointe sur le nouveau dernier
										domine=1;
										}
		else j++;
	}while( ((unsigned int)j)<q.getn() && domine==0 );

}while (domine==1);

/* le dernier point du transitoire ne domine-t-il pas le periodique ***/
i=p.getn()-1;
if (p.getpol(i)!=epsilon)
{ temp=epsilon;
while( (p.getpol(i).getg()>=q.getpol(0).getg()) || (p.getpol(i).getd()>=q.getpol(0).getd()) )
{ // il faut d�aller le p�iodique autant que n��saire pour rendre la partie transitoire propre
	for (j=0;j<q.getn();j++)	 temp.add(q.getpol(j));
	q=otimes(q,r);
}
   p=oplus(temp,p);
}
/*** On ram�e autant que possible le p�iodqiue sur le transitoire ****/

while( q.getpol(q.getn()-1)==otimes(p.getpol(p.getn()-1),r) )
{
    for (i=(q.getn()-1);i>0;i--) q.getpol(i)=q.getpol(i-1); // on decale les element vers la queue
	q.getpol(0)=p.getpol(p.getn()-1); // on place le dernier element de p en tete
	p.pop(); // on ote le dernier element de p
}
/*** voila la serie doit �re sous forme canonique ***/
canonise=1;
}



int serie::operator == (serie & s)
{
	if((s.p==p) && (s.q==q) && (s.r==r)) return 1;
	else
		return 0;
}




// mon operateur d'affichage de serie (il evite de mettre le p==epsilon)
std::ostream&  operator<<(std::ostream &flot,serie &serie1)
// surdefinition de <<
// affichage
{ gd epsilon;

	if(!(serie1.p==epsilon)) flot << serie1.p << "+";
	if(!(serie1.q==epsilon)) flot <<"("<<serie1.q<< ")["<<serie1.r<<"]*";
	else flot<<"eps";
	return flot;
 }

std::fstream&  operator<<(std::fstream &flot,serie &serie1)
// surdefinition de <<
// affichage
  {gd epsilon;

	if(!(serie1.p==epsilon))
	{
		flot << serie1.p;
		flot<< "+";
	}
	if(!(serie1.q==epsilon))
	{
		flot <<"(";
		flot<<serie1.q;
		flot<< ")[";
		flot<<serie1.r;
		flot<<"]*";
	}
	else flot<<"eps";
	return flot;
 }



serie oplus(poly & pol1,  serie &s2)
{ serie s1;
 s1.p=pol1;
 s1.q=s1.p.getpol(s1.p.getn()-1);
 s1.p.pop();
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(oplus(s1,s2));
}

serie oplus(serie &s2,poly &pol1)
{ serie s1;
 s1.p=pol1;
 s1.q=s1.p.getpol(s1.p.getn()-1);
 s1.p.pop();
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(oplus(s1,s2));
}

serie oplus( gd &gd1, serie &s2)
{ serie s1;
 s1.p.init(infinit,_infinit);
 s1.q.init(gd1.getg(),gd1.getd());
 s1.r.init(0,0);
/* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(oplus(s1,s2));
}

serie oplus(serie &s2, gd &gd1)
{ serie s1;
 s1.p.init(infinit,_infinit);
 s1.q.init(gd1.getg(),gd1.getd());
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(oplus(s1,s2));
}


serie oplus(serie  & s1,serie  & s2)
{

	serie *ads1=&s1;
	serie *ads2=&s2;


	unsigned int j;
	serie result;
	serie tampon;
	gd monome;
	double pente1, pente2;

	int i;
	long k1,k2,k,t2;
	poly p,q,temp;
	gd r,epsilon;


   	//gd e(0,0);
	gd Top(_infinit,infinit);



if (s1.canonise==0) s1.canon();
if (s2.canonise==0) s2.canon();

//  ** si l'une des s�ies vaut Top **/

  if (s1.q.getpol(0).getg()==_infinit || s2.q.getpol(0).getg()==_infinit)
  { result.p=epsilon;
    result.q=Top;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }

  //  ** si l'une des s�ies vaut epsilon  **/

  if (s1.q.getpol(0).getg()==infinit)   return(s2);
  if (s2.q.getpol(0).getg()==infinit)   return(s1);




/***** Test des cas d����	********************************/
	if (s1.r.getd()==0 && s2.r.getd()==0)  // p=p1+q1+p2+q2, q=dernier point du polyn�e r=0,0
	{ result.p=oplus(s1.p,s1.q,s2.p,s2.q);
	  result=result.p;		// op�ation de cast polyn�e en serie
	  result.canonise=1;
	  return(result);
	}

	if (s1.r.getd()==0 && s2.r.getd()!=0) // on permute s1 et s2
	{
	 ads2=&s1;
	 ads1=&s2;
	}

	if ((*ads1).r.getd()!=0 && (*ads2).r.getd()==0)
	{ if ((*ads1).r.getg()==0 ) // p=p1+p2+q2+q1*(0,infinit) q=dernier point du polyn�e r=0,0
	   {
			monome.init((*ads1).q.getpol(0).getg(),infinit); // normalement pas necessaire
			result.p=monome;
 			result.p=oplus((*ads1).p,(*ads2).p,(*ads2).q,result.p);
			result=result.p; //cast poly -> serie
			result.canonise=1;

		}
	  else	// p=p1+p2+q2 q=q1 r=r1
	  { result.p=oplus((*ads1).p,(*ads2).p,(*ads2).q);
		result.q=(*ads1).q;
		result.r=(*ads1).r;
		result.canon();


      }
			return(result);
    }



	if (s1.r.getd()!=0 && s2.r.getd()!=0 && s1.r.getg()==0 && s2.r.getg()==0)
	{	// p=p1+p2+q1*(0,infinit)+q2*(o,infinit)
		monome.init(s1.q.getpol(0).getg(),infinit); // normalement pas necessaire
		result.p=monome;
	    result.p=oplus(result.p,s1.p,s2.p);
		monome.init(s2.q.getpol(0).getg(),infinit);	// normalement pas necessaire
		result.p=oplus(monome,result.p);
		result=result.p;
		result.canonise=1;

		return(result);

    }



	if (s1.r.getd()!=0 && s2.r.getd()!=0 && s1.r.getg()!=0 && s2.r.getg()==0)
    {// p=p2+q2*(0,infinit)+p1+q1*(r1)*

	// on etend q1 au dela du premier point de q2
		result.p=s1.q;
		i=1;
	  while( result.p.getpol(result.p.getn()-1).getg()<=s2.q.getpol(0).getg() )
	  {	  monome.init(s1.r.getg()*i,s1.r.getd()*i);
	  temp=otimes(s1.q,monome);
		  result.p=oplus(result.p,temp);
		  i++;
	  }
	   monome.init(s2.q.getpol(0).getg(),infinit); //normalemnt pas necessaire
	   result.p=oplus(temp=oplus(s2.p,s1.p,result.p),monome);
	   result=result.p;
	   result.r.init(0,infinit);	//normalement pas necessaire
	   result.canonise=1;

	   return(result);
	}

	if (s1.r.getd()!=0 && s2.r.getd()!=0 && s1.r.getg()==0 && s2.r.getg()!=0)
	{ // p=p1+q1*(0,infinit)+p2+q2*(r2)*

	// on etend q2 au dela du premier point de q1
		result.p=s2.q;
		i=1;
	  while( result.p.getpol(result.p.getn()-1).getg()<=s1.q.getpol(0).getg() )
	  {	  monome.init(s2.r.getg()*i,s2.r.getd()*i);
		  result.p=oplus(result.p,temp=otimes(s2.q,monome));
		  i++;
	  }
	   monome.init(s1.q.getpol(0).getg(),infinit); //normalemnt pas necessaire
	   result.p=oplus(temp=oplus(s1.p,s2.p,result.p),monome);
	   result=result.p;
	   result.r.init(0,infinit);	//normalement pas necessaire
	   result.canonise=1;

	   return(result);
	}


/************************ Les cas non d���� ***********************/
   pente1=((double)s1.r.getg()/s1.r.getd());
   pente2 =((double)s2.r.getg()/s2.r.getd());
	if( pente1==pente2)
	{  // series de m�e pente
		//initialisation de p = p1 + p2
		p = oplus(s1.p,s2.p);


		r.init(lcm(s1.r.getg(),s2.r.getg()),lcm(s1.r.getd(),s2.r.getd()));

		//Calcul de k1 et k2


		k1 = r.getg() / s1.r.getg();
		k2 = r.getg() / s2.r.getg();

		//Calcul de q

		q=s1.q;

		for(i=1;i <= k1-1 ; i++)
			for(j=0 ; j < s1.q.getn() ; j++)
			{
				monome.init(i * s1.r.getg(),i*s1.r.getd());
				monome=otimes(monome,s1.q.getpol(j));
				q.add(monome);
			}


		for(i=0 ; i <= k2 - 1 ; i++)
			for(j=0 ; j < s2.q.getn() ; j++)
			{
				monome.init(s2.q.getpol(j).getg() + i * s2.r.getg() , s2.q.getpol(j).getd() + i * s2.r.getd());
				q.add(monome);
			}

		result.affecte(p,q,r,0);

		result.canon();


	}
	else
	{
		//  series de pentes diff�entes
		// La pente de r2 doit etre inferieure a celle de r1
		// si ce n'est pas le cas, on permute les 2 series

		if( pente1>pente2)
		{
			ads1=&s2;
			ads2=&s1;

		}


		//lemme de domination

		t2=(*ads2).q.getpol((*ads2).q.getn()-1).getd();

		k1 = (*ads1).r.getg()*(t2-(*ads1).q.getpol(0).getd()+(*ads1).r.getd()) + (*ads1).r.getd()*((*ads1).q.getpol(0).getg()-(*ads2).q.getpol(0).getg());

		k2 = (*ads1).r.getd()*(*ads2).r.getg()-(*ads1).r.getg()*(*ads2).r.getd();
		k =  MAX( MAX((int)ceil((double)k1/k2),0) ,(int)ceil( (double)((*ads1).q.getpol(0).getg()-(*ads2).q.getpol(0).getg())/(*ads2).r.getg() ) );


		//initialisation de p = p1 + p2

		p = oplus((*ads1).p,(*ads2).p);


		for(i=0; i < k ; i++)
			for(j=0 ; j < (*ads2).q.getn() ; j++)
			{
				monome.init((*ads2).q.getpol(j).getg() + i*(*ads2).r.getg(),(*ads2).q.getpol(j).getd() + i*(*ads2).r.getd());

				p.add(monome);

			}


		// Calcul du polynome q et du monome r
		q = (*ads1).q;
		r = (*ads1).r;

		result.affecte(p,q,r,0);

		result.canon();

	}


	return(result);

}

serie otimes( poly &pol1,serie &s2)
{ serie s1;
 s1.p=pol1;
 s1.q=s1.p.getpol(s1.p.getn()-1);
 s1.p.pop();
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;

 return(otimes(s1,s2));
}

serie otimes( serie &s2, poly &pol1)
{ serie s1;
 s1.p=pol1;
 s1.q=s1.p.getpol(s1.p.getn()-1);
 s1.p.pop();
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(otimes(s1,s2));
}

serie otimes(gd &gd1,serie &s2)
{ serie s1;
 s1.p.init(infinit,_infinit);
 s1.q.init(gd1.getg(),gd1.getd());
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(otimes(s1,s2));
}

serie otimes( serie & s2,  gd &gd1)
{ serie s1;
 s1.p.init(infinit,_infinit);
 s1.q.init(gd1.getg(),gd1.getd());
 s1.r.init(0,0);
 /* 13/02/2014  je supprime ça
 if (pol1.simple==1) s1.canonise=1;
 else s1.canonise=0;
   et remplace par ci-dessou */

    s1.canonise=0;
 return(otimes(s1,s2));
}

serie otimes(serie &  s1,serie & s2)
{ serie * ads1=&s1;
 serie  * ads2=&s2;

	 gd monome;
   poly p1,q1;
   poly p2;
   int i,j;
   long int a;
   long k1,k2,teta;
   double pente1,pente2,test1,test2;
   double tau;
  serie temp1,result,tampon;
    gd epsilon;

	gd Top(_infinit,infinit);



if (s1.canonise==0) s1.canon();
if (s2.canonise==0) s2.canon();

//** si l'une des s�ies vaut epsilon

if (s1.q.getpol(0).getg()==infinit || s2.q.getpol(0).getg()==infinit)
  { result.p=epsilon;
    result.q=epsilon;
	result.r.init(0,0);


	result.canonise=1;
	return(result);
  }


//** si l'une des s�ies vaut Top

if (s1.q.getpol(0).getg()==_infinit || s2.q.getpol(0).getg()==_infinit)
  { result.p=epsilon;
    result.q=Top;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }






  //(p1 + q1r1*)(p2 + q2r2*)=p1p2 +p1 q2 r2* + p2 q1 r1* + q1 q2 r1* r2 *
	result.canonise=0;
	result.p=otimes(s1.p,s2.p); // p1 p2

	result.q=otimes(s1.p,s2.q); // p1 q2
	result.r=s2.r;				// r2
	result.canon();

	temp1.q=otimes(s2.p,s1.q);	// p2 q1
	temp1.p.init(infinit,_infinit);
	temp1.r=s1.r;				// r1
	temp1.canon();

	result=oplus(result,temp1); // p1p2 +p1 q2 r2* + p2 q1 r1*

//*****		Traitement de q1 q2 r1* r2*				*****//
		temp1.canonise=0;
		temp1.q=otimes(s1.q,s2.q);		// q1 q2
//********* r1 * r2 * *******************//
		/**** Les cas dégénérés  *******/
	if (s1.r.getd()==0 && s2.r.getd()==0)
	{ result=oplus(result,temp1);
	  return(result); }

	if( ( s1.r.getg()==0 && s1.r.getd()==infinit ) ||( s2.r.getg()==0 && s2.r.getd()==infinit ) )
	{   //monome.init(0,infinit);
		//temp1.q.add(monome);
		//	temp1.q.simpli();
		temp1.p.init(infinit,_infinit);
		temp1.r.init(0,infinit);
		result=oplus(result,temp1);
	  return(result); }

	if (s1.r.getd()==0 && s1.r.getg()==0 && s2.r.getg()!=0 && s2.r.getd()!=0 && s2.r.getd()!=infinit)
    {// inversion pour traitement symetrique apr�
		ads1=&s2;
		ads2=&s1;
	}


	if ((*ads2).r.getd()==0 && (*ads2).r.getg()==0 && (*ads1).r.getg()!=0 && (*ads1).r.getd()!=0 && (*ads1).r.getd()!=infinit)
		{
			temp1.r=(*ads1).r;
			temp1.p.init(infinit,_infinit);
			temp1.canon();
			result=oplus(result,temp1);

			return(result);
		}

/**** le cas non degenere ****/
	pente1=(double)s1.r.getg()/s1.r.getd();
	pente2=(double)s2.r.getg()/s2.r.getd();

	if( pente1 == pente2) // pente identique
	{



		k1=gcd(s1.r.getg(),s2.r.getg());
		k2=gcd(s1.r.getd(),s2.r.getd());



		temp1.r.init(k1,k2); // la pente de r1* . r2*


		tau=(double)k1/k2;

		k1=(long) ( (double) (s1.r.getg()-k1)*(s2.r.getg()-k1) )/k1;

		k2=(long) ((double) (s1.r.getd()-k2)*(s2.r.getd()-k2) )/k2;


		//p1.init(0,0); 25 june 2012, bug fixed
		i=0;
		j=0;



		// teta=s2.r.getd(); 25 june 2012, bug fixed
		 teta=0; //25 june 2012, bug fixed


		while (teta<k2)
		{
			while(teta<k2)
			{ monome.init((long)(tau*teta),teta);
			  p1.add(monome);
			  j++;
			  teta=i*s1.r.getd()+j*s2.r.getd();
			}
           i++;
		   j=0;
		   teta=i*s1.r.getd()+j*s2.r.getd();
		}

	  p1.simpli();	// le transitoire de r1* . r*

	  temp1.p=otimes(p1,temp1.q); // q1*q2 * transitoire de r1*.r2*
	  monome.init(k1,k2);
	  temp1.q=otimes(temp1.q,monome); // q1*q2* motif de r1*.r2*

	  temp1.canon();



	}

else
	{	if ( pente1 > pente2 )
		{
		ads1=&s2;
		ads2=&s1;

		}

	k1=(*ads1).r.getg()*(*ads1).r.getd();
	k2=(*ads1).r.getd()*(*ads2).r.getg()-(*ads1).r.getg()*(*ads2).r.getd();
	k1=MAX((long)ceil((double)k1/k2),0);


    a=(long)floor( ((double)k1*(*ads2).r.getg())/(*ads1).r.getg());
	test1=((*ads1).r.getd()*a);
	test2=((*ads2).r.getd()*k1);
			while(test1>= test2 && k1>0)
			{ k1--;
			  a=(long)floor( ((double)k1*(*ads2).r.getg())/(*ads1).r.getg());
              test1=((*ads1).r.getd()*a);
	          test2=((*ads2).r.getd()*k1);
			}

			k1++;



	q1.init(0,0);
	for(j=1;j<k1;j++)
		{ monome.init((*ads2).r.getg()*j,(*ads2).r.getd()*j);
		  q1.add(monome);
		}

	temp1.q=otimes(temp1.q,q1);
	temp1.p.init(infinit,_infinit);
 	temp1.r=(*ads1).r;
	temp1.canon();
	}


	result=oplus(result,temp1);

	return(result);

}

serie star(gd & r1)
{
	serie result;

	result.p.init(infinit,_infinit);
	result.q.init(0,0);
	result.canonise=1;
// Cas d����
	if (r1.getg()==infinit || r1.getd()==0)
	{ result.r.init(0,0);
		return(result);
	}
	if (r1.getg()==0 && r1.getd()>0)
	{	result.r.init(0,infinit);
		return(result);
	}

	if (r1.getd()==infinit)
	{	result.p.init(0,0);
		result.q.init(r1.getg(),infinit);
		result.r.init(r1.getg(),infinit);
		return(result);
	}
// Cas classique

	result.r.init(r1.getg(),r1.getd());
	return(result);
}
/*
serie starOLD( poly  poly1)
{
	unsigned int i;
	int j,nj,k,nb_pente_inferieure,n;
	long  numax=infinit, k1;
	long gammakmax,gammakmin;
	long  ki,kmin,a;
    int * tabki=NULL;
	gd *tabgd=NULL;

	double pente,pente1,test1,test2;


	gd monome,rtemp;
	poly temp;	// tableau temporaire
    serie result;
    poly qtemp;
	gd epsilon;



  poly1.simpli();
  // Les cas degeneres

 qtemp=prcaus(poly1);
  if (!(qtemp==poly1))
  {
      throw("Star of non causal polynomial is prohibited\n");
  }


//si un element  vaut Top
  if (poly1.getpol(0).getg()==_infinit)
  { result.p.init(infinit,_infinit);
    result.q.init(_infinit,infinit);
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }



	for (i=0;i<poly1.getn();i++) // on ote les elements dont l'etoile vaut e
	{ if (poly1.getpol(i).getg()==infinit || poly1.getpol(i).getd()==0 )
	   { if (poly1.getn()>1) poly1.popj(i);
	     else // le resultat est la serie est : epsilon+ e .(e)*
		 {		// car il n'y qu'un �ement qui est nul dasn le polyn�e
				result.r.init(0,0);
				result.p.init(infinit,_infinit);
				result.q.init(0,0);
				result.canonise=1;
				return(result);  // on retourne (epsilon+ e .(e)*
		 }
		}

		// on regarde si l'�oile d'un des ��ents vaut (delta)*
	 if (poly1.getpol(i).getg()==0 && poly1.getpol(i).getd()>0 )
	   {		result.r.init(0,infinit);
				result.q.init(0,infinit);
				result.p.init(infinit,_infinit);
				result.canonise=1;

				return(result);  // on retourne (delta)*
		}


	 if (poly1.getpol(i).getd()==infinit)  // on sauvegarde le nui associ��un taui=infinit
	 {
		 if (poly1.getpol(i).getg()<numax) numax=poly1.getpol(i).getg();
     }



	}


//// on integre cette boucle dans la précedente 19/06/2013
	for (i=0;i<poly1.getn();i++)
	{
	// on regarde si l'�oile d'un des ��ents vaut (delta)*
	 if (poly1.getpol(i).getg()==0 && poly1.getpol(i).getd()>0 )
	   {		result.r.init(0,infinit);
				result.q.init(0,infinit);
				result.p.init(infinit,_infinit);
				result.canonise=1;

				return(result);  // on retourne (delta)*
		}


	 if (poly1.getpol(i).getd()==infinit)  // on sauvegarde le nui associ��un taui=infinit
	 {
		 if (poly1.getpol(i).getg()<numax) numax=poly1.getpol(i).getg();
     }

	} // fin de la boucle for
/////

  // on traite les cas ou au moins 1 des taui vaut infinit
	if (numax!=infinit)
	{ result.p.init(0,0);

	for (i=0;i<poly1.getn();i++)  // pour chaque ��ent on �end jusqu'�numax si n��saire
	  {	j=1;
	   while( j*poly1.getpol(i).getg() < numax )
	   {   monome.init(j*poly1.getpol(i).getg(),j*poly1.getpol(i).getd());
		   result.p.add(monome);
			j++;
	   }

	  }

	result.p.simpli();
	result.q.init(numax,infinit);
	result.r.init(0,infinit);
	result.canonise=1;
	return(result);

	}

//// ** Le cas non degenreated ****** //// /
	// recherche de la plus petite pente ayant le plus petit nu
	pente=infinit;
	nj=0;
		for (i=0;i<poly1.getn();i++)

		{   pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
			if (	pente1  < pente )
	   {		pente=pente1;

				nj=i;
		}
	}

	// on traite toutes les etoiles dont la pente est inferieure a la pente retenue ci dessus
	rtemp.init(poly1.getpol(nj).getg(),poly1.getpol(nj).getd());

	k1=rtemp.getg()*rtemp.getd();

	// on recherche tout d'abord le kmax qui est une borne sup de l'extension des polyn�es
	// ceci reduit la taille du transitoire r�ultant

	gammakmax=0;

	nb_pente_inferieure=0; //pour savoir combien de monomes ont une pente inf�ieure

	if ( (tabki=new int[poly1.getn()]) == NULL) { mem_limite  l(13);   throw(l); }
		  // on r�erve un tableau pour sauvegerder les ki pour chaque monome de pente < rtemp

	for (i=0;i<poly1.getn();i++)
	{  pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
		if ( pente1 > pente )
		{
			ki=rtemp.getd()*poly1.getpol(i).getg()-rtemp.getg()*poly1.getpol(i).getd();

            kmin=MAX(k1,0);
		    kmin=(long)ceil(((double)kmin)/ki);

			a=(long)floor( ((double)kmin*poly1.getpol(i).getg())/rtemp.getg());
			test1=rtemp.getd()*a;
			test2=poly1.getpol(i).getd()*kmin;
			while(test1>=test2 && kmin>0)
			{ kmin--;
			  a=(long)floor( ((double)kmin*poly1.getpol(i).getg())/rtemp.getg());
            test1=(rtemp.getd()*a);
			test2=(poly1.getpol(i).getd()*kmin);
			}

			kmin++;
            gammakmin=kmin*poly1.getpol(i).getg();

			if (gammakmin>gammakmax)  gammakmax=gammakmin;

			tabki[nb_pente_inferieure]=kmin;
			nb_pente_inferieure++;

		}
	}


	result.p.init(infinit,_infinit);
	result.r=rtemp;
    result.q.init(0,0);

    n=0;  // indice pour tabki
	if( (tabgd=new gd[gammakmax+1]) ==NULL) { mem_limite  l(14);   throw(l); }
	tabgd[0].init(0,0);

	for (i=0;i<poly1.getn();i++) 	// on traite toutes les �oiles dont la pente est inf�ieure �la pente retenue ci dessus

	{  	pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
		if ( pente1 > pente )
		{	// on commence par �endre le polyn�e


			qtemp.init(0,0);

			for(j=1;j<(int)tabki[n];j++) //tabki[n] contient le kmin correspondant
			{	monome.init(poly1.getpol(i).getg()*j,poly1.getpol(i).getd()*j);
				qtemp.add(monome);
			}
          n++;
			// puis on fait le produit jusqu'�gammakmax c'est suffisant

		for(j=0;j<(int)qtemp.getn();j++)
		{
			for (k=0;k<(int)result.q.getn();k++)
			{
				monome=otimes(qtemp.getpol(j),result.q.getpol(k));
				if (monome.getg()< gammakmax )
				{
					if ( monome>=tabgd[monome.getg()] ) tabgd[monome.getg()]=monome;
					else;
				}
				else k=result.q.getn();
			}

		}

		result.q=tabgd[0];

		for(k=1;k<gammakmax;k++)
		{ if (tabgd[k]!=epsilon) result.q.add(tabgd[k]);
		}

        poly1.popj(i); // on ote l'��ent du polyn�e il est trait�		if ((int)i<nj) nj--;	//l'��ent nj est d�lac�si n�essaire
		i--;
		if ((int)i<nj) nj--; // bug fixed june 2012 Rio de Janeiro nj will be used in the next we don't have to lose it
                              // 26/02/2014 on remplce nj--; par    if ((int)i<nj) nj--;

} // fin du if sur la pente
} // fin du for sur i

delete [] tabgd;
delete [] tabki;



           result.q.simpli();









//pente identique, il y a surement mieux  a faire mais...

	    for (i=nj+1;i<poly1.getn();i++) // on commence au dela de nj
		{  	for (k=nj;k<(int)i;k++)
			 {
			 if ( (poly1.getpol(i).getg()%poly1.getpol(k).getg())==0)
				{

				poly1.popj(i); // on ote l'element du polynome car il sera domine				if ((int)i<nj) nj--;	//l'��ent nj est d�lac�				i--;
				k=i; // on sort de la boucle for k
				i--; // On décrémente i, bug fixed june 2012 Rio de janeiro
				}
			 }
		}


	    for (i=nj+1;i<poly1.getn();i++) // on commence au dela de nj
			// Calcul de la pente
		{  	 result.r.init(lcm(result.r.getg(),poly1.getpol(i).getg()) ,
						         lcm(result.r.getd(),poly1.getpol(i).getd()) );
						         cout<<"lcm g"<<lcm(result.r.getg(),poly1.getpol(i).getg())<<"lcm d"<<lcm(result.r.getd(),poly1.getpol(i).getd())<<endl;
		}

		for (i=nj;i<poly1.getn();i++)
		{  	//reste a etendre chacun des elements autant que necesaire

			      qtemp.init(0,0);
				  ki=(long) (result.r.getg()/poly1.getpol(i).getg());

			for(j=1;j<(int)ki;j++)
			{	monome.init(poly1.getpol(i).getg()*j,poly1.getpol(i).getd()*j);
				qtemp.add(monome);
			}
           qtemp.setsimple();
			result.q=otimes(result.q,qtemp);
		}

	result.canon();

	return(result);

}
*/

serie star(poly poly1)
{


	unsigned int i;
	int j,nj,k,nb_pente_inferieure,n;
	long  numax=infinit, k1;
	long gammakmax,gammakmin;
	long  ki,kmin,a;
    int * tabki=NULL;
	gd *tabgd=NULL;

	double pente,pente1,test1,test2;


	gd monome,rtemp;
	poly temp;	// tableau temporaire
    serie result;
    poly qtemp;
	gd epsilon;



  poly1.simpli();

  // Les cas degeneres

  qtemp=prcaus(poly1);
  if (!(qtemp==poly1))
  {
      throw("Star of non causal polynomial is prohibited\n");
  }

//si un element  vaut Top
  if (poly1.getpol(0).getg()==_infinit)
  { result.p.init(infinit,_infinit);
    result.q.init(_infinit,infinit);
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }



	for (i=0;i<poly1.getn();i++) // on ote les elements dont l'etoile vaut e
	{ if (poly1.getpol(i).getg()==infinit || poly1.getpol(i).getd()==0 )
	   { if (poly1.getn()>1) poly1.popj(i);
	     else // le resultat est la serie est : epsilon+ e .(e)*
		 {		// car il n'y qu'un �ement qui est nul dasn le polyn�e
				result.r.init(0,0);
				result.p.init(infinit,_infinit);
				result.q.init(0,0);
				result.canonise=1;
				return(result);  // on retourne (epsilon+ e .(e)*
		 }
		}

		// on regarde si l'�oile d'un des ��ents vaut (delta)*
	 if (poly1.getpol(i).getg()==0 && poly1.getpol(i).getd()>0 )
	   {		result.r.init(0,infinit);
				result.q.init(0,infinit);
				result.p.init(infinit,_infinit);
				result.canonise=1;

				return(result);  // on retourne (delta)*
		}


	 if (poly1.getpol(i).getd()==infinit)  // on sauvegarde le nui associ��un taui=infinit
	 {
		 if (poly1.getpol(i).getg()<numax) numax=poly1.getpol(i).getg();
     }



	}




  // on traite les cas ou au moins 1 des taui vaut infinit
	if (numax!=infinit)
	{ result.p.init(0,0);

	for (i=0;i<poly1.getn();i++)  // pour chaque ��ent on �end jusqu'�numax si n��saire
	  {	j=1;
	   while( j*poly1.getpol(i).getg() < numax )
	   {   monome.init(j*poly1.getpol(i).getg(),j*poly1.getpol(i).getd());
		   result.p.add(monome);
			j++;
	   }

	  }

	result.p.simpli();
	result.q.init(numax,infinit);
	result.r.init(0,infinit);
	result.canonise=1;
	return(result);

	}

/*** The Non  degenereated case ******/

 /// Below a trick to avoid to compute the star of a polynom which is already a star 08/04/2019 Angers
  if(poly1.getpol(0)==e)
  {

  qtemp=otimes(poly1,poly1);
  if(qtemp==poly1) //it is already a star, it is enough
  {
      return(poly1);
  }
  }
  /// End of the added trick 08/04/2019 Angers
	// recherche de la plus petite pente ayant le plus petit nu
	pente=infinit;
	nj=0;
		for (i=0;i<poly1.getn();i++)

		{   pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
			if (	pente1  < pente )
	    {
	            pente=pente1;
				nj=i;
		}
	}

	/************TEST POUR TRAITER D'UN SEUL COUP TOUS LES MONOMES QUI ONT LA MEME PENTE ******
	long int k2;
	 k1=k2=0;
	for (i=nj;i<poly1.getn();i++)
		{   pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
			if (	pente1  == pente )
	    {
	        if(k1==0 && k2==0)
            {
                k1= poly1.getpol(i).getg();
                k2= poly1.getpol(i).getd();
            }
            else
            {
               k1=gcd(k1, poly1.getpol(i).getg());
		       k2=gcd(k2, poly1.getpol(i).getd());
            }

		}
	}
	cout<<" k1 "<<k1<<endl;
	cout<<" k2 "<<k2<<endl;

****/

	/****************************/

	// 30/12/2018 new  algorithm we deal with all the monomials with the slope equal to the smallest slope, it means the slower production rate
  serie stemp;
    result=star(poly1.getpol(nj));
	for (i=nj+1;i<poly1.getn();i++)
	{  pente1=(double)poly1.getpol(i).getg()/poly1.getpol(i).getd();
		if ( pente1 == pente )
		{   stemp.init(epsilon,e,poly1.getpol(i));
		    result=otimes(result,stemp);
            poly1.popj(i); // on ote l'��ent du polyn�e il est trait�		if ((int)i<nj) nj--;	//l'��ent nj est d�lac�si n�essaire
		    i--;

		}
	}

  /* cout<<"result"<<result<<endl;
/// ADD TO TEST 09/04/2019
serie *tabserie;

if( (tabserie=new serie[poly1.getn()]) ==NULL) { mem_limite  l(14);   throw(l); }

/// ADD TO TEST 09/04/2019
	for (i=0;i<poly1.getn();i++)
	{
	stemp.init(epsilon,e,poly1.getpol(i));
    tabserie[i]=otimes(stemp,result);
    cout<<"tabserie["<<i<<"] = "<< tabserie[i]<<endl;
    cout<<"tabserie["<<i<<"].p.getn() = "<< tabserie[i].p.getn()<<endl;
    cout<<"tabserie["<<i<<"].q.getn() = "<< tabserie[i].q.getn()<<endl;
    getchar();
	}
    for (i=0;i<poly1.getn();i++)
        {
        result=otimes(tabserie[i],result);
        cout<<"result"<< result<<endl;
        cout<<"result.p.getn() ="<< result.p.getn()<<endl;
        cout<<"result.q.getn() = "<< result.q.getn()<<endl;
        cout<<" i ="<<i<<endl;
        }
	delete  tabserie;
/// END of THE ADD 09/04/2019
*/
/// on traite toutes les etoiles dont la pente est inferieure a la pente retenue ci dessus
	for (i=0;i<poly1.getn();i++)
	{

	stemp.init(epsilon,e,poly1.getpol(i));
    result=otimes(stemp,result);
	}

	return(result);

}


serie star( serie & s1)
{ serie result,temp;
   gd monome;

   if(s1.canonise==0) s1.canon();
/// Below a trick added to avoid the computation of (s1)* if s1 is already a star Angers 08/04/2019
temp=otimes(s1,s1);
if (temp==s1)
{
    return(s1);
}
/// End of the trick Angers 08/04/2019
   monome.init(0,0);

	result.q=oplus(s1.q,s1.r);		//(q+r)
//cout<<" before (q+r)*"<<endl;
	result=star(result.q);	// (q+r)*

//cout<<" after (q+r)*"<<endl;

	result=oplus(monome,temp=otimes(s1.q,result)); // e + q .(q+r)*
//cout<<" after (e+q(q+r)*"<<endl;
	temp=star(s1.p); // p*
	//cout<<" after p*"<<endl;

	result=otimes(temp,result);
//cout<<" after p*(e+q(q+r)*"<<endl;
	return(result);

}



/*************************************************************************************/
/*************************************************************************************/
/* Inf de 2 s�ies p�iodiques dans MinMax [[gamma,delta]]  */
/*************************************************************************************/
/*************************************************************************************/
/** inf d'une s�ie et d'un polyn�e **/
serie inf(serie &s1, poly &p2)
{ // p1^p2 + q1.r1* ^ p2

	poly temp,temp2;
  serie result;
  gd monome;
  int i,j;
  long b;
    gd epsilon;
   gd e(0,0);



  p2.simpli();

  if(s1.canonise==0) s1.canon();


//*** cas particulier p2=epsilon ou s1=epsilon ***
  if (p2.getpol(0)==epsilon || s1.q.getpol(0).getg()==infinit )
  { result.p=epsilon;
	result.q=epsilon;
	result.r.init(0,0);
	result.canonise=1;
    return(result);
  }
//*** cas particulier p2=Top **
  if (p2.getpol(0).getg()==_infinit)
  { result=s1;
    return(result);
  }
//** si s1 vaut Top

if (s1.q.getpol(0).getg()==_infinit)
{result=p2;
return(result);
}


//*** si s1 est un polyn�e
if (s1.r==e)
{
 result.p=oplus(s1.p,s1.q);
 result.p=inf(result.p,p2);
 result.q=result.p.getpol(result.p.getn()-1);
 result.p.pop();
 result.r.init(0,0);
 result.canonise=1;
 return(result);
}

//*** si s1 est une trajectoire
if (s1.r.getd()==infinit)
{
 result.p=oplus(s1.p,s1.q);
 result.p=inf(result.p,p2);
 result.q=result.p.getpol(result.p.getn()-1);
 result.p.pop();

 if (result.p.getpol(result.p.getn()-1).getd()==infinit) result.r.init(0,infinit); //p2 est �alement une trajectoire
 else result.r.init(0,0);
 result.canonise=1;
 return(result);
}

/*** Calcul de p1^p2 ***/

result.p=inf(s1.p,p2);

// si p2 est une trajectoire

if (p2.getpol(p2.getn()-1).getd() ==infinit)
{
	temp=epsilon;
	i=0;

	while( s1.q.getpol(0).getg()+i*s1.r.getg()< p2.getpol(p2.getn()-1).getg() )
	{
 		monome.init(i*s1.r.getg(),i*s1.r.getd());

		temp=oplus(temp,temp2=otimes(s1.q,monome));
		i++;
	}

	result.p=oplus(result.p,temp2=inf(p2,temp));
	monome.init(i*s1.r.getg(),i*s1.r.getd());
	result.q=otimes(s1.q,monome);
	result.r=s1.r;
	result.canon();
	return(result);
}



//*** s1 est une s�ie  et p2 un polyn�e**

  b=s1.q.getpol(0).getd();

  temp.init(0,0);
  j=1;

  while ( (b+temp.getpol(temp.getn()-1).getd()) <= p2.getpol(p2.getn()-1).getd() )
  {
	  monome.init(s1.r.getg()*j,s1.r.getd()*j);
	  temp.add(monome);
	  j++;
  }
  temp.setsimple();
  temp=otimes(temp,s1.q);
  temp=inf(temp,p2);
  result=oplus(result,temp);
  return (result);
}

serie inf( poly &p2, serie& s1)
{ return(inf(s1,p2)); }

serie inf( gd & gd2, serie& s1)
{   poly p2;
	p2=gd2;
	return(inf(s1,p2)); }

serie inf( serie& s1,  gd & gd2)
{   poly p2;
	p2=gd2;
	return(inf(s1,p2)); }



serie inf(serie   & s1, serie & s2)
{
  long swap;
 int l,g,h,H,i,j,k;
 long k1,k2,t2;
 long a,b,c,d;
 double pente1,pente2;

 serie p4,p5;
 poly p3,temporaire;
 poly temp1,temp2;
 poly p,q;

 gd monome,r;
 serie result,temp;
 serie *ads1=&s1;
 serie *ads2=&s2;
 gd epsilon;



 if(s1.canonise==0) s1.canon();
 if(s2.canonise==0) s2.canon();


//** si l'une des s�ies vaut epsilon

if (s1.q.getpol(0).getg()==infinit || s2.q.getpol(0).getg()==infinit)
  { result.p=epsilon;
    result.q=epsilon;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }


//** si l'une des s�ies vaut Top

  if (s1.q.getpol(0).getg()==_infinit)   return(s2);
  if (s2.q.getpol(0).getg()==_infinit)   return(s1);


// cas d����


if (s1.r.getg()==0 && s2.r.getg()==0)
{ result.p=inf(temp1=oplus(s1.p,s1.q),temp2=oplus(s2.p,s2.q));
	result.q=result.p.getpol(result.p.getn()-1);
	result.p.pop();
    if (s1.r.getd()==infinit && s2.r.getd()==infinit) result.r.init(0,infinit);
	else result.r.init(0,0);
	result.canonise=1;
	return(result);
 }

if (s1.r.getg()==0 )
 {  result.p=oplus(s1.p,s1.q);
	result=inf(s2,result.p);
	return(result);
 }

if (s2.r.getg()==0 )
 {  result.p=oplus(s2.p,s2.q);
	result=inf(s1,result.p);
	return(result);
 }

// Cas non d����
//Calcul de p3=p1 inf p2

 p3=inf(s1.p,s2.p);

//Calcul de p4=p1 inf q2 r2*
 temp.p.init(infinit,_infinit);
 temp.q=s2.q;
 temp.r=s2.r;
 temp.canonise=1;

 p4=inf(temp,s1.p);


//Calcul de p5=p2 inf q1 r1* si p2 n'est pas nul
 temp.p.init(infinit,_infinit);
 temp.q=s1.q;
 temp.r=s1.r;
 temp.canonise=1;
 p5=inf(temp,s2.p);

p4=oplus(p3,p4=oplus(p4,p5));


/*****   q1.r1* ^ q2.r2*       ******/
//1er cas, pentes identiques : r1.gamma / r1  .delta = r2.gamma / r2.delta
	pente1=(double)s1.r.getg()/s1.r.getd();
	pente2=(double)s2.r.getg()/s2.r.getd();
if( pente1 == pente2)
 {
  r.init(lcm(s1.r.getg(),s2.r.getg()),lcm(s1.r.getd(),s2.r.getd()));


  k1 = r.getg() / s1.r.getg();
  k2 = r.getg() / s2.r.getg();
q=epsilon;
for (i=0;i<(int)s1.q.getn();i++)
{
	for (j=0;j<(int)s2.q.getn();j++)
	{
		for (l=0;l<(int)k2;l++)
		{
			for (g=0;g<(int)k1;g++)
			{
 				 a=s1.q.getpol(i).getg()+g*s1.r.getg();
				 c=s1.q.getpol(i).getd()+g*s1.r.getd();
				 b=s2.q.getpol(j).getg()+l*s2.r.getg();
				 d=s2.q.getpol(j).getd()+l*s2.r.getd();

				if (a<b)
				{ swap=a;	  a=b; b=swap;
				  swap=c;     c=d; d=swap;
				}

				H = MAX((int)ceil((double)(-d+c)/(r.getd())), 0);
				for (h=0;h<=H;h++)
				{    monome.init(MAX(a,b + h * r.getg()) , MIN(c, d + h * r.getd()));
					 q.add(monome);
				}
			}
		}
	}
}

q.simpli();
result.p.init(infinit,_infinit);
result.q=q;
result.r=r;


result=oplus(result,p4);
result.canon();

return(result);

 }

//2eme cas, pentes diff�entes : r1.gamma / r1 .delta != r2.gamma / r2.delta
else
{	if( pente1>pente2)
	{	 // la pente de s1 doit etre inferieure �celle de s2, sinon on permute
			ads2=&s1;
			ads1=&s2;
	}

	    t2=(*ads2).q.getpol((*ads2).q.getn()-1).getd();

		k1 = (*ads1).r.getg()*(t2-(*ads1).q.getpol(0).getd()+(*ads1).r.getd()) + (*ads1).r.getd()*((*ads1).q.getpol(0).getg()-(*ads2).q.getpol(0).getg());

		k2 = (*ads1).r.getd()*(*ads2).r.getg()-(*ads1).r.getg()*(*ads2).r.getd();
		k =  MAX( MAX((int)ceil((double)k1/k2),0) ,(int)ceil( (double)((*ads1).q.getpol(0).getg()-(*ads2).q.getpol(0).getg())/(*ads2).r.getg() ) );



	p3.init(0,0);
	for (i=0;i<k;i++)
	{ monome.init(i*(*ads2).r.getg(),i*(*ads2).r.getd());
	  p3.add(monome);
	}
    p3.setsimple();
	monome.init(k*(*ads2).r.getg(),k*(*ads2).r.getd());
	result.q=otimes((*ads2).q,monome);
	result.p.init(infinit,_infinit);
	result.r=(*ads2).r;

	temp.p.init(infinit,_infinit);
 	temp.q=(*ads1).q;
 	temp.r=(*ads1).r;
 	temp.canonise=1;

	temporaire=otimes((*ads2).q,p3);
	temp=inf(temp, temporaire);

	result=oplus(result,temp);
	result=oplus(result,p4);
	result.canon();

	return(result);

}
}

serie frac(serie  & s1,gd & gd2) //residuation d'une s�ie par un monome
{ serie result;
  gd tampon;
  unsigned int k;

  result.p=frac(s1.p.getpol(0),gd2);

  for (k=1;k<s1.p.getn();k++)
  {	tampon=frac(s1.p.getpol(k),gd2);
	result.p.add(tampon);
  }

  result.q=frac(s1.q.getpol(0),gd2);

for (k=1;k<s1.q.getn();k++)
  {	tampon=frac(s1.q.getpol(k),gd2);
	result.q.add(tampon);
  }

  result.r=s1.r;
  result.canon();

  return(result);
}



serie Dualfrac(serie  & s1,gd & gd2) //residuation d'une s�ie par un monome
{ serie result;
  gd tampon;
  unsigned int k;


result.p=Dualfrac(s1.p.getpol(0),gd2);
  for (k=1;k<s1.p.getn();k++)
  {	tampon=Dualfrac(s1.p.getpol(k),gd2);
	result.p.add(tampon);
  }

  result.q=Dualfrac(s1.q.getpol(0),gd2);

for (k=1;k<s1.q.getn();k++)
  {	tampon=Dualfrac(s1.q.getpol(k),gd2);
	result.q.add(tampon);
  }

  result.r=s1.r;
  result.canon();

  return(result);
}

serie frac(serie  & s1,poly & poly1) //residuation d'une s�ie par un polyn�e
{ serie tampon;
  tampon=poly1;
  return(frac(s1,tampon));
}


serie frac(serie   & s1,serie & s2)
{
	serie result,temp,temp1,temp3;
	gd   monome;
	poly tampon,tampon1,tampon2,tampon3,tampon4;
	poly temp2;
	int i,j,k,k1,k2,borne ;
	double pente1,pente2;
	 gd epsilon;

	gd Top(_infinit,infinit);



 if(s1.canonise==0) s1.canon();
 if(s2.canonise==0) s2.canon();


//** si s1 vaut Top ou s2 vaut epsilon, le resultat vaut Top

if (s1.q.getpol(0).getg()==_infinit || s2.q.getpol(0).getg()==infinit)
  { result.p=epsilon;
	result.q=Top;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
  }

//** si s2 vaut Top (et pas s1) ou s1 vaut epsilon (et pas s2), le resultat vaut epsilon;

if (s1.q.getpol(0).getg()==infinit || s2.q.getpol(0).getg()==_infinit)
{ result.p=epsilon;
  result.q=epsilon;
  result.r.init(0,0);
  result.canonise=1;
  return(result);
}


//** si s1 est un polynome et s2 est une trajectoire ou une serie le resultat vaut epsilon

if ( s1.r.getg()==0 && s1.r.getd()==0 && s2.r.getd()!=0)
{ result.p=epsilon;
  result.q=epsilon;
  result.r.init(0,0);
  result.canonise=1;
  return(result);
}


//** si s2 est une trajectoire et s1 une serie classique le resultat vaut epsilon

if (s1.r.getg()>0 && s2.r.getd()==infinit)
{	result.p=epsilon;
	result.q=epsilon;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
}

//** si s2 polyn�e et s1 trajectoire ou polyn�e ou  s2 trajectoire && s1 trajectoire, c'est (p1+q)/p2+q2)
if (s1.r.getg()==0 && s2.r.getg()==0) //suffisant compte tenu de ce qu'il y a avant
{
	tampon1=oplus(s1.p,s1.q);
	tampon2=oplus(s2.p,s2.q);
	result=frac(tampon1,tampon2);
	return(result);
}

//** si s2 est un polyn�e et s1 une serie classique
if (s2.r.getg()==0 && s2.r.getd()==0)
{	tampon2=oplus(s2.p,s2.q);
	monome.init(tampon2.getpol(0).getg(),tampon2.getpol(0).getd());
	result=frac(s1,monome);

	for (k=1;k<(int)tampon2.getn();k++)
	{ monome.init(tampon2.getpol(k).getg(),tampon2.getpol(k).getd());
	  temp=frac(s1,monome);
	   result=inf(result,temp);
	}
	result.canon();
	return(result);
}

//** si s1 est une trajectoire et s2 une serie classique #backward
if (s1.r.getg()==0 && s1.r.getd()==infinit)
{
	tampon2=oplus(s1.p,s1.q);
	tampon=frac(tampon2,s2.p);
	// modification du 6 Juin 2003, suite remarque beber, erreur manifeste c'est tampon2 le numerateur et pas s2.p
	//i=(int) ceil( ( (double)( s1.p.getpol(s1.p.getn()-1).getg()-s1.p.getpol(0).getg() ) )/s2.r.getg() );
	i=(int) ceil( ( (double)( tampon2.getpol(tampon2.getn()-1).getg()-tampon2.getpol(0).getg() ) )/s2.r.getg() );

	tampon1=tampon2;
	for (k=1;k<=i;k++)
	{	monome.init(k*s2.r.getg(),k*s2.r.getd() );
		tampon1=inf(temp2=frac(tampon2,monome),tampon1);
	}


	temp=frac(tampon1,s2.q.getpol(0));

	for (k=1;k<(int)s2.q.getn();k++)
	{	tampon4=frac(tampon1,s2.q.getpol(k));
		temp=inf(temp,tampon4);

	}

	result=inf(temp,tampon);

	result.r.init(0,infinit);
	return(result);
}
//** cas ou 2 series
//** cas ou la pente de s2 est inf�ieur �celle de s1 resultat vaut epsilon
	pente1=(double)s1.r.getg()/s1.r.getd();
	pente2=(double)s2.r.getg()/s2.r.getd();

if ( pente2< pente1 )
{ 	result.p=epsilon;
	result.q=epsilon;
	result.r.init(0,0);
	result.canonise=1;
	return(result);
}
else
{ // calcul de s1/p2

	monome.init(s2.p.getpol(0).getg(),s2.p.getpol(0).getd());
	result=frac(s1,monome);

	for (k=1;k<(int)s2.p.getn();k++)
	{ monome.init(s2.p.getpol(k).getg(),s2.p.getpol(k).getd());
	  temp=frac(s1,monome);
	   result=inf(result,temp);
	}

	// calcul de s1/q2.r2*

	k2=lcm(s1.r.getg(),s2.r.getg())/s2.r.getg();
// modification 04/2011 L. hardouin
    int k11, k12;

     k11=ceil( ((double)(s1.p.getpol(s1.p.getn()-1).getd()-s1.p.getpol(0).getd() )) /s2.r.getd());
     if (s1.p.getpol(0).getg()==infinit ||s1.p.getpol(0).getg()==_infinit)
     k12=0;
     else
     k12=(int) ceil( (  (double)(s1.q.getpol(0).getg()-s1.p.getpol(0).getg())) / s2.r.getg() );
	/*
	k1=MAX( (int) ceil( ((double)(s1.p.getpol(s1.p.getn()-1).getd()-s1.p.getpol(0).getd() )) /s2.r.getd()),
			(int) ceil( (  (double)(s1.q.getpol(0).getg()-s1.p.getpol(0).getg())) / s2.r.getg() ) );
    */
    k1=MAX(k11,k12);
	temp=s1;
	for (j=0;j<k1;j++)
	{ monome.init(-j*s2.r.getg(),-j*s2.r.getd());
	  temp1=otimes(monome,s1);
	  temp=inf(temp,temp1);
	}
	borne=k1+k2;

	temp3.q=s1.q;
	temp3.r=s1.r;
	temp3.p=epsilon;
	temp3.canonise=1;

    for(j=k1;j<borne;j++)
	{ monome.init(-j*s2.r.getg(),-j*s2.r.getd());
	  temp1=otimes(monome,temp3);
	  temp=inf(temp,temp1);
	}

	monome.init(-s2.q.getpol(0).getg(),-s2.q.getpol(0).getd());
	temp3=otimes(monome,temp);
	for(k=1;k<(int)s2.q.getn();k++)
	{ monome.init(-s2.q.getpol(k).getg(),-s2.q.getpol(k).getd());
	  temp1=otimes(monome,temp);
	  temp3=inf(temp3,temp1);
	}
// finalement
	result=inf(result,temp3);
	result.canon();
	return(result);

}

}

/* odot product : dual product .... 09/04/2011 Laurent Hardouin */
serie odot(serie &s1,serie &s2)
{ gd m1;
serie serietop;
if(s1.p.getn()>1 || s1.q.getn()>1 )
{
std::cout<<"odot product is only defined between a monomial and a series"<<std::endl;
std::cout<<"hence the first argument has to be a monomial"<<std::endl;
}
s1.canon();
serietop.q.init(_infinit,infinit);
m1=s1.q.getpol(0);
if (s1==serietop || s2==serietop)
return(serietop);
else return(otimes(s1,s2));
}




serie prcaus(serie & s)
{
	serie result,eps;
	gd r,gdtemp;
	poly tampon1;
	gd e(0,0);
	gd epsilon;

	r.init(0,0);
	eps.init(epsilon,epsilon,r);

    	if(s.canonise==0)
		s.canon();

	result=s;

	// si s==epsilon
	if(result==eps)
	return result;

	// si s est un polynome ou une trajectoire
	if(s.r==e || s.r==gd(0,infinit))
	{
		result=prcaus(tampon1=oplus(s.p,s.q));
		return result;
	}

	// (N0,T0) valuation du premier monome de q
	double N0=s.q.getpol(0).getg();
	double T0=s.q.getpol(0).getd();

	if(N0>=0 && T0>=0)
	{
		result.p=prcaus(result.p);
		result.canonise = 0; // ajout remarque Xavir David-Henriet 12-05-2014
        result.canon(); // ajout remarque Xavir David-Henriet 12-05-2014
		return result;
	}
	else
	{
		int i;
		i=MAX(MAX((int) ceil(-(N0/s.r.getg())),(int) ceil(-(T0/s.r.getd()))),0);
		// q ppv q*gamma^(Nu*i)delta^(Tau*i)
		gdtemp=gd(i*s.r.getg(),i*s.r.getd());
		result.q=otimes(s.q,gdtemp);
		gdtemp=gd((i-1)*s.r.getg(),(i-1)*s.r.getd());
		result.p=otimes(s.q,gdtemp);
		result.p=prcaus(result.p);
		result.canonise=0;
		result.canon();
		return result;
	}

}


// |=========================================================================|
// | Hadamard product on series                                              |
// |=========================================================================|
// | Description:															 |
// | New version of Hadamard product, residuation and dual residuation of the|
// | Hadamard product on series.           									 |
// | Added by Davide Zorzenon (07/03/2020)									 |
// |-------------------------------------------------------------------------|

struct str_expand {	// structure for expanding series
	unsigned int i;	// index
	poly qtemp;		// temporary polynomial
	poly p_result;	// polynomial that contains the expanded series
};

str_expand expand_series(poly& p, poly& q, gd& r, long T, unsigned int ii)
// Expand series p + qr* up to time T, the result is contained in a structure
//
// Inputs:
//			p (poly&): transient part of s
//			q (poly&): periodic part of s
//			r (poly&): period of s
//			T (long): time up which s is expanded
//			ii (unsigned int): index from which we start expanding s
//
// Output:
//			str_result (str_expand): strucutre	i -> final index of ii
//												qtemp -> temporary polynomial
//												p_result -> expanded polynomial
{
	unsigned int i;
	poly qtemp, qtemp1, p_result;
	gd gdtemp;
	long Ti;
	str_expand str_result;

	// Check if the delta-exponent of r is zero (added by Dominik)
	if (r.getd() == 0)
	{
		// The result is just p + q as the series does not change after the transient phase
		str_result.i = ii;
		str_result.qtemp = q;
		str_result.p_result = oplus(p, q);
		return str_result; // return p + q
	}

	// If tau != 0: expand s up to T and save the result in p_result
	p_result = p; // variable for the result
	qtemp = q; // polynomial q
	i = ii; // current index
	gdtemp = qtemp.getpol(i); // current monomial
	Ti = gdtemp.getd(); // delta-exponent of the current monomial

	while (Ti < T) // expanding the series until $T$
	{
		p_result	= oplus(p_result, gdtemp); // add monomial to the result
		if (i == qtemp.getn() - 1) // if the index arrives at the last monomial of q
		{
			// extend q by adding q * r to it
			qtemp1	= otimes(qtemp, r);
			qtemp	= oplus(qtemp, qtemp1);
		}
		i		+= 1; // next index
		gdtemp	= qtemp.getpol(i); // next monomial
		Ti		= gdtemp.getd(); // next delta-exponent
	}

	// save variables of the structure and return the result
	// {{{ Modified by D. Zorzenon in 2022
	gdtemp = gd(gdtemp.getg(), T);
	// }}} Modified by D. Zorzenon in 2022
	p_result = oplus(p_result, gdtemp);
	str_result.i		= i;
	str_result.qtemp	= qtemp;
	str_result.p_result = p_result;
	return(str_result);
}

serie hadamard_prod(serie &s1,serie &s2)
// Hadamard product of 2 series
//
// Inputs:
//			s1 (serie&): series in M_in^ax[[g,d]]
//			s2 (serie&): series in M_in^ax[[g,d]]
//
// Output:
//			s_result (serie): series in M_in^ax[[g,d]]
{
    serie s_result;
    unsigned int i, j;
    poly p1, p2, q1, q2, ptilde1, ptilde2, ptilde, pbar, qbar, qtemp, qtemp1;
    gd r1, r2, gdtemp, rbar;
    long nu, tau, tprime, Ti;
	str_expand str_tilde;

    // Transform s1 and s2 in canonical form

    if(s1.canonise==0)
        s1.canon();
    if(s2.canonise==0)
        s2.canon();
	
	// For checking Epsilon and Top series (see below)
	r1 = gd(0, 0); // placeholder
	serie eps = serie(epsilon, epsilon, r1); // epsilon series
	serie T = serie(epsilon, Top, r1); // top series

    // Extract polynomials p, q, monomial r from s1, s2
	
    p1 = s1.p;
    q1 = s1.q;
    r1 = s1.r;

    p2 = s2.p;
    q2 = s2.q;
    r2 = s2.r;
	
	// Check for epsilon series (absorbing)
	if (s1 == eps || s2 == eps)
		return eps; // one of the series is epsilon -> result is epsilon

	// Check for top series (absorbing if for the other series with p + q r*, q does not contain any epsilon coefficients)
	// A series (not equal to the epsilon series) only contains epsilon coefficients if the
	// last monomial of q has a gamma-coefficient of +infinity or the delta-exponent is not +infinity
	if ((s1 == T && (q2.getpol(q2.getn() - 1).getg() == infinit || q2.getpol(q2.getn() - 1).getd() != infinit)) ||
		(s2 == T && (q1.getpol(q1.getn() - 1).getg() == infinit || q1.getpol(q1.getn() - 1).getd() != infinit)))
		return Top; // one of the series is top (and the other does not contain epsilon) -> result is T

	// Check if s1 and s2 are polynomials

	bool isFinite1	= r1.getd() == 0;
	bool isFinite2	= r2.getd() == 0;
	bool isPoly1	= isFinite1 || r1.getd() == infinit;
	bool isPoly2	= isFinite2 || r2.getd() == infinit;

	if (!isPoly1 && !isPoly2) {
		// s1 and s2 are proper series, compute tprime, tau and nu
		tprime		= max(q1.getpol(0).getd(), q2.getpol(0).getd());
		tau			= lcm(r1.getd(), r2.getd());
		nu			= r1.getg() * tau / r1.getd() + r2.getg() * tau / r2.getd();
		// Expand the series up to tau + tprime - 1
		str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0);
		ptilde1		= str_tilde.p_result;
		str_tilde	= expand_series(p2, q2, r2, tprime + tau - 1, 0);
		ptilde2		= str_tilde.p_result;
	}
	else if (isPoly1 && !isPoly2) {
		// s1 is a polynomial, s2 is a proper series
		ptilde1		= oplus(p1, q1);

		if (isFinite1) // the last delta exponent of ptilde1 is not infinit
		{
			tprime		= ptilde1.getpol(ptilde1.getn() - 1).getd(); // t_m
			str_tilde	= expand_series(p2, q2, r2, tprime, 0); // expand until t_m
			ptilde2		= str_tilde.p_result;
			ptilde		= hadamard_prod(ptilde1, ptilde2);
			s_result	= serie(ptilde);
			return(s_result);
		}
		else // the last delta exponent of ptilde1 is infinit
		{
			tprime		= max(p1.getpol(p1.getn() - 1).getd() + 1, q2.getpol(0).getd()); // t_0 = max(t_{m-1} + 1, T1)
			tau			= r2.getd();
			nu			= r2.getg();
			str_tilde	= expand_series(p2, q2, r2, tprime + tau - 1, 0); // expand until t0 + tau - 1
			ptilde2		= str_tilde.p_result;
		}
	}
	else if (!isPoly1 && isPoly2) {
		// s2 is a polynomial, s1 is a proper series
		ptilde2		= oplus(p2, q2);

		if (isFinite2) // the last delta exponent of ptilde2 is not infinit
		{
			tprime		= ptilde2.getpol(ptilde2.getn() - 1).getd(); // t_m
			str_tilde	= expand_series(p1, q1, r1, tprime, 0); // expand until t_m
			ptilde1		= str_tilde.p_result;
			ptilde		= hadamard_prod(ptilde1, ptilde2);
			s_result	= serie(ptilde);
			return(s_result);
		}
		else // the last delta exponent of ptilde2 is infinit
		{
			tprime		= max(q1.getpol(0).getd(), p2.getpol(p2.getn() - 1).getd() + 1); // t0 = max(T1, t_{m-1}+1)
			tau			= r1.getd();
			nu			= r1.getg();
			str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0);  // expand until t0 + tau - 1
			ptilde1		= str_tilde.p_result;
		}
	}
	else
	{
		// s1 and s2 are polynomials
		ptilde1		= oplus(p1, q1);
		ptilde2		= oplus(p2, q2);
		ptilde		= hadamard_prod(ptilde1, ptilde2);
		s_result	= serie(ptilde);
		return(s_result);
	}

    // Compute ptilde

    ptilde = hadamard_prod(ptilde1,ptilde2);

    // Compute pbar, qbar, rbar, finally s_result = pbar + qbar rbar*

    i			= 0;
    Ti			= ptilde.getpol(i).getd();
	// Distribute the monomials of ptilde among pbar and qbar
    // pbar
    pbar		= gd(infinit,_infinit);
    while (Ti < tprime) {
        pbar	= oplus(pbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
    // qbar
    qbar		= gd(infinit, _infinit);
    while (Ti >= tprime && Ti < tprime + tau) {
        qbar	= oplus(qbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
	if (i < ptilde.getn())
	{
		rbar	= gd(ptilde.getpol(i).getg(), tprime + tau - 1);
		qbar	= oplus(qbar, rbar);
	}
    // rbar
    rbar		= gd(nu, tau);

    // s_result
    s_result.init(pbar, qbar, rbar);
    return(s_result);
}

// Returns the exponent of Gamma for a given Delta exponent
long gammaByDelta(poly p, long delta)
{
	vector<long> v;
	long gamma = infinit;
	v.push_back(_infinit);
	for (int i = 0; i < p.getn(); i++)
		v.push_back(p.getpol(i).getd());
	v.push_back(infinit);

	// Loop through the vector
	for (auto i = v.begin(); i != v.end(); i++)
	{
		if (*i < delta && delta <= *(i + 1))
		{
			auto it = find(v.begin(), v.end(), *(i + 1));
			int index = it - v.begin();

			gamma = p.getpol(index - 1).getg();

			break;
		}
	}

	return gamma;
}

// Compute a' (called kappa in the report)
long compute_aprime(poly p1, poly p2, long t_0, long tau, long nu)
{
	long i = 0, j = 0; // indices for the monomials of p1 and p2
	std::vector<long> v1, v2; // vectors for parts 1 and 2

	gd gd_1;
	gd gd_2;

	// Part 1 (alpha up to t0 - 1)
	do
	{
		gd_1 = p1.getpol(i);
		gd_2 = p2.getpol(j);

		v1.push_back(gd_1.getg() - gd_2.getg());

		// decide which monomials to use next based on the delta-exponents
		if (gd_1.getd() < gd_2.getd())
			i++;
		else if (gd_1.getd() > gd_2.getd())
			j++;
		else if (gd_1.getd() == gd_2.getd() && gd_1.getd() < t_0)
		{
			i++; j++;
		}

	} while (gd_1.getd() < t_0 - 1 || gd_2.getd() < t_0 - 1);

	// Part 2 (t0 up to t0 + tau - 1)
	long threshold = t_0 + tau;

	do
	{
		gd_1 = p1.getpol(i);
		gd_2 = p2.getpol(j);

		v2.push_back(gd_1.getg() - gd_2.getg());

		// decide which monomials to use next based on the delta-exponents
		if (gd_1.getd() < gd_2.getd())
			i++;
		else if (gd_1.getd() > gd_2.getd())
			j++;
		else
		{
			i++; j++;
		}

	} while (gd_1.getd() < threshold - 1 || gd_2.getd() < threshold - 1);

	// determine the maximum of the vectors v1 and v2, respectively
	long max_1 = *std::max_element(v1.begin(), v1.end());
	long max_2 = *std::max_element(v2.begin(), v2.end());
	long a_prime = 1 + ceil(((double)max_1 - max_2) / nu); // compute a'
	a_prime = max(1L, a_prime); // a' = max(1, a')

	// output
	return a_prime;
}

serie hadamard_res(serie &s1,serie &s2)
// Residual of the Hadamard product of 2 series
//
// Inputs:
//			s1 (serie&): series in M_in^ax[[g,d]]
//			s2 (serie&): series in M_in^ax[[g,d]]
//
// Output:
//			s_result (serie): series in M_in^ax[[g,d]]
{
    serie s_result;
    unsigned int i, j, i_memory1, i_memory2;
    poly p1, p2, q1, q2, ptilde1, ptilde2, ptilde, pbar, qbar, qtemp, qtemp1, q_memory1, q_memory2;
    gd r1, r2, gdtemp, rbar;
    long nu, tau, tprime, Ti, aprime;
	str_expand str_tilde;

    // Transform s1 and s2 in canonical form

    if(s1.canonise==0)
        s1.canon();
    if(s2.canonise==0)
        s2.canon();

    // Extract polynomials p, q, monomial r from s1, s2

    p1 = s1.p;
    q1 = s1.q;
    r1 = s1.r;

    p2 = s2.p;
    q2 = s2.q;
    r2 = s2.r;

	// Check if s1 and s2 are polynomials

	bool isFinite1	= r1.getd() == 0;
	bool isFinite2	= r2.getd() == 0;
	bool isPoly1	= isFinite1 || r1.getd() == infinit;
	bool isPoly2	= isFinite2 || r2.getd() == infinit;

	if (!isPoly1 && !isPoly2) {
		// s1 and s2 are proper series, compute tprime, tau and nu
		tprime		= max(q1.getpol(0).getd(), q2.getpol(0).getd()); // In Soraia's thesis this is called t0
		tau			= lcm(r1.getd(), r2.getd());
		nu			= r1.getg() * tau / r1.getd() - r2.getg() * tau / r2.getd();
		// Expand the series up to tau + tprime - 1
		str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0); // expand until t0 + tau - 1
		ptilde1		= str_tilde.p_result;
		q_memory1	= str_tilde.qtemp;
		i_memory1	= str_tilde.i;
		str_tilde	= expand_series(p2, q2, r2, tprime + tau - 1, 0); // expand until t0 + tau - 1
		ptilde2		= str_tilde.p_result;
		q_memory2	= str_tilde.qtemp;
		i_memory2	= str_tilde.i;
	}
	else if (isPoly1 && !isPoly2) {
		// s1 is a polynomial, s2 is a proper series
		ptilde1		= oplus(p1, q1);

		if (isFinite1) // the last delta exponent of ptilde1 is not infinit
		{
			tprime		= ptilde1.getpol(ptilde1.getn() - 1).getd() + 1; // t_m + 1
			str_tilde	= expand_series(p2, q2, r2, tprime, 0); // expand until t_m + 1
			ptilde2		= str_tilde.p_result;
			ptilde		= hadamard_res(ptilde1, ptilde2);
			s_result	= serie(ptilde);
			return(s_result);
		}
		else // the last delta exponent of ptilde1 is infinit
		{
			tprime		= p1.getpol(p1.getn() - 1).getd() + 1; // t_{m-1} + 1
			nu			= 0;
			str_tilde	= expand_series(p2, q2, r2, tprime, 0); // expand until t_{m-1} + 1
			ptilde2		= str_tilde.p_result;
		}
	}
	else if (!isPoly1 && isPoly2) {
		// s2 is a polynomial, s1 is a proper series
		ptilde2 = oplus(p2, q2);

		if (isFinite2) // the last delta exponent of ptilde2 is not infinit
		{
			tprime		= ptilde2.getpol(ptilde2.getn() - 1).getd(); // t_m
			str_tilde	= expand_series(p1, q1, r1, tprime, 0); // expand until t_m
			ptilde1		= str_tilde.p_result;
			ptilde		= hadamard_res(ptilde1, ptilde2);
			s_result	= serie(ptilde);
			return(s_result);
		}
		else // the last delta exponent of ptilde2 is infinit
		{
			tprime		= max(q1.getpol(0).getd(), p2.getpol(p2.getn() - 1).getd() + 1); // t0 = max(T1, t_{m-1} + 1)
			tau			= r1.getd();
			nu			= r1.getg();
			str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0); // expand until t0 + tau - 1
			ptilde1		= str_tilde.p_result;
			q_memory1	= str_tilde.qtemp;
			i_memory1	= str_tilde.i;
			q_memory2	= q2;
			i_memory2	= 0;
		}
	}
	else
	{
		// s1 and s2 are polynomials
		ptilde1		= oplus(p1, q1);
		ptilde2		= oplus(p2, q2);
		ptilde		= hadamard_res(ptilde1, ptilde2);
		s_result	= serie(ptilde);
		return(s_result);
	}

    // Compute ptilde
	
    ptilde = hadamard_res(ptilde1,ptilde2);

    // nu <= 0 => s_result = ptilde d1.g0*

    if (nu <= 0)
    {
        rbar		= gd(ptilde.getpol(ptilde.getn()-1).getg(),infinit);
        pbar		= oplus(ptilde, rbar);

        s_result	= pbar;
        return(s_result);
    }

    // Compute aprime and the new tprime
	
	aprime = compute_aprime(ptilde1, ptilde2, tprime, tau, nu); // new a'
    tprime = tprime + tau * aprime; // this is what Soraia calls tprime

    // Recompute ptilde with the new tprime

    // Compute ptilde1 and ptilde2 by expanding p + qr* up to tprime + tau

	str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0);
	ptilde1		= str_tilde.p_result;
	str_tilde	= expand_series(p2, q2, r2, tprime + tau - 1, 0);
	ptilde2		= str_tilde.p_result;

    // Compute the new ptilde

    ptilde = hadamard_res(ptilde1,ptilde2);

    // Compute pbar, qbar, rbar, finally s_result = pbar + qbar rbar*

    i		= 0;
    Ti		= ptilde.getpol(i).getd();
	
	// Distribute the monomials of ptilde among pbar and qbar
    // pbar
    pbar	= gd(infinit,_infinit);
    while (Ti < tprime)
    {
        pbar	= oplus(pbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
    // qbar
    qbar		= gd(infinit,_infinit);
    while (Ti >= tprime && Ti < tprime + tau)
	{
        qbar	= oplus(qbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
	if (i < ptilde.getn())
	{
		rbar	= gd(ptilde.getpol(i).getg(), tprime + tau - 1);
		qbar	= oplus(qbar, rbar);
	}
    // rbar
    rbar	= gd(nu, tau);

    // s_result
    s_result.init(pbar, qbar, rbar);
    return(s_result);
}

serie hadamard_dualres(serie &s1,serie &s2)
// Dual residual of the Hadamard product of 2 series
//
// Inputs:
//			s1 (serie&): series in M_in^ax[[g,d]]
//			s2 (serie&): series in M_in^ax[[g,d]]
//
// Output:
//			s_result (serie): series in M_in^ax[[g,d]]
//
// Exception:
//			an exception is returned when there is a time t such that
//			(s2(t) == +infinit or s2(t) == -infinit) and s1(t) != +infinit, 
//			since in this case the operation is not defined. The output returned
//			in this case is g-inf.d+inf 
{
    serie s_result;
    unsigned int i, j, i_memory2;
    poly p1, p2, q1, q2, ptilde1, ptilde2, ptilde, pbar, qbar, qtemp, qtemp1, q_memory2;
    gd r1, r2, gdtemp, rbar;
    long nu, tau, tprime, Ti;
	str_expand str_tilde;

    // Transform s1 and s2 in canonical form

    if(s1.canonise==0)
        s1.canon();
    if(s2.canonise==0)
        s2.canon();

    // Extract polynomials p, q, monomial r from s1, s2

    p1 = s1.p;
    q1 = s1.q;
    r1 = s1.r;

    p2 = s2.p;
    q2 = s2.q;
    r2 = s2.r;

	// Check if s1 and s2 are polynomials

	bool isFinite1	= r1.getd() == 0;
	bool isFinite2	= r2.getd() == 0;
	bool isPoly1	= isFinite1 || r1.getd() == infinit;
	bool isPoly2	= isFinite2 || r2.getd() == infinit;

	if (!isPoly1 && !isPoly2) {
		// s1 and s2 are proper series, compute tprime, tau and nu
		tprime		= max(q1.getpol(0).getd(), q2.getpol(0).getd()); // This is called t0 in Soraia's thesis
		tau			= lcm(r1.getd(), r2.getd());
		nu			= r1.getg() * tau / r1.getd() - r2.getg() * tau / r2.getd();
		// nu < 0, s1 - s2 is decreasing => s_result = top
		if (nu < 0)
		{
			s_result = gd(_infinit, infinit);
			return(s_result);
		}
		// Expand the series up to tau + tprime - 1
		str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0);
		ptilde1		= str_tilde.p_result;
		str_tilde	= expand_series(p2, q2, r2, tprime + tau - 1, 0);
		ptilde2		= str_tilde.p_result;
		i_memory2	= str_tilde.i;
		q_memory2	= str_tilde.qtemp;
	}
	else if (isPoly1 && !isPoly2) {
		// s1 is a polynomial, s2 is a proper series
		ptilde1		= oplus(p1, q1);

		if (isFinite1) // the last delta exponent of ptilde1 is not infinit
		{
			tprime		= ptilde1.getpol(ptilde1.getn() - 1).getd(); // t_m
			str_tilde	= expand_series(p2, q2, r2, tprime, 0); // expand until t_m
			ptilde2		= str_tilde.p_result;
			ptilde		= hadamard_dualres(ptilde1, ptilde2);
			s_result	= serie(ptilde);
			return(s_result);
		}
		else // the last delta exponent of ptilde1 is infinit
		{
			// nu < 0, s1 - s2 is decreasing => s_result = top
			s_result	= gd(_infinit, infinit);
			return(s_result);
		}
	}
	else if (!isPoly1 && isPoly2) {
		// s2 is a polynomial, s1 is a proper series
		ptilde2		= oplus(p2, q2);

		if (isFinite2) // the last delta exponent of ptilde2 is not infinit
		{
			std::cout << "hadamard_dualres: invalid series" << std::endl;
			ptilde		= gd(_infinit, infinit);
			s_result	= serie(ptilde);
			return(s_result); // return the top series
		}
		else // the last delta exponent of ptilde2 is infinit
		{
			tprime		= max(q1.getpol(0).getd(), p2.getpol(p2.getn() - 1).getd() + 1); // t0 = max(T1, t_{m-1} + 1)
			tau			= r1.getd();
			nu			= r1.getg();
			str_tilde	= expand_series(p1, q1, r1, tprime + tau - 1, 0); // expand until t0 + tau - 1
			ptilde1		= str_tilde.p_result;
			i_memory2	= 0;
			q_memory2	= q2;
		}
	}
	else
	{
		// s1 and s2 are polynomials
		ptilde1		= oplus(p1, q1);
		ptilde2		= oplus(p2, q2);
		ptilde		= hadamard_dualres(ptilde1, ptilde2);
		s_result	= serie(ptilde);
		return(s_result);
	}
	
    // Compute ptilde

    ptilde = hadamard_dualres(ptilde1,ptilde2);

    // nu == 0 => s_result = ptilde d1.g0*

    if (nu == 0)
    {
        rbar		= gd(ptilde.getpol(ptilde.getn()-1).getg(),infinit);
        pbar		= oplus(ptilde, rbar);

        s_result	= pbar;
        return(s_result);
    }

    // Compute pbar, qbar, rbar, finally s_result = pbar + qbar rbar*

    i = 0;
    Ti = ptilde.getpol(i).getd();

    // pbar
    pbar	= gd(infinit,_infinit);
    while (Ti < tprime)
    {
        pbar	= oplus(pbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
    // qbar
    qbar	= gd(infinit,_infinit);
    while (Ti >= tprime && Ti < tprime + tau)
    {
        qbar	= oplus(qbar, ptilde.getpol(i));
        i		+= 1;
        Ti		= ptilde.getpol(i).getd();
    }
	if (i < ptilde.getn())
	{
		rbar	= gd(ptilde.getpol(i).getg(), tprime + tau - 1);
		qbar	= oplus(qbar, rbar);
	}
    // rbar
    rbar	= gd(nu, tau);

    // s_result
    s_result.init(pbar, qbar, rbar);
    return(s_result);
}

}//fin namespace mmgd



