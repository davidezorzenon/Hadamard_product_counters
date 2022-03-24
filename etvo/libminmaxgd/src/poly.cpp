#ifndef _WIN32
#include "../include/poly.h"
#else
#include "..\include\poly.h"
#endif
#include <algorithm>
#include <vector>
using namespace std;

namespace mmgd
{
#ifndef _WIN32
#include "../include/poly.h"
#else
#include "..\include\poly.h"
#endif
#include <algorithm>
using namespace std;
/*****************************************************************************************/
/********* Classe Polynome ***************************************************************/
/*****************************************************************************************/
gd * mymerge(gd *first1,gd * last1, gd*first2, gd*last2, gd* temp)
{

while (1) {
    if(first2->getg()<first1->getg())
    {
        if(first2->getd()>temp->getd())
        {  if(first2->getg()<=temp->getg()) *temp=*first2;
            else
                {
                    temp++;
                    *temp=*first2;
                }
        }
        first2++;
    }
    else{
    if(first1->getd()>temp->getd())
        {   if(first1->getg()<=temp->getg()) *temp=*first1;
            else
                {
                    temp++;
                    *temp=*first1;
                }
        }
        first1++;
    }

    if (first1==last1)
    {

        while(!(first2==last2))
    {
        if(first2->getd()>temp->getd())
        {  if(first2->getg()<=temp->getg()) *temp=*first2;
            else
                {
                    temp++;
                    *temp=*first2;
                }
        }
        first2++;
    }
        return ++temp;
    }
    if (first2==last2)
    {
        while(!(first1==last1))
    {
        if(first1->getd()>temp->getd())
        {  if(first1->getg()<=temp->getg()) *temp=*first1;
            else
                {
                    temp++;
                    *temp=*first1;
                }
        }
        first1++;
    }
        return ++temp;

    }
  }

}

bool mycompgd( gd  pr1, gd  pr2)
{

      if (pr1.getg()<pr2.getg()) return 1;
      if (pr1.getg()>pr2.getg()) return 0;
      else
      {
          if(pr1.getd()>pr2.getd())  return 1; ///removed >= Angers 08/04/2019
          else return 0;

      }
}


int compgd(const void * p1, const void * p2)
{ gd * pr1=(gd *)p1;
  gd * pr2=(gd*)p2;
      if (pr1[0].getg()<pr2[0].getg()) return -1;
      if (pr1[0].getg()>pr2[0].getg()) return 1;
      else
      {
          if(pr1[0].getd()>pr2[0].getd())  return -1; ///removed >= Angers 08/04/2019
          else return 0;

      }
}


void swapgd(gd& a,gd& b)
{
    gd temp;

    temp=a;
    a=b;
    b=temp;
}

int partitionner(gd *tab,int debut, int dernier,int pivot, int comp(const void *,const void*))
{int j=debut;
int i;
    swapgd(tab[pivot],tab[dernier]);

    for(i=debut;i<dernier;i++)
    {

        if(comp(&tab[i],&tab[dernier])==-1)
           {

                swapgd(tab[i],tab[j]);
                j++;
          }

    }
    swapgd(tab[j],tab[dernier]);
    return j;
}

void qsort_gd(gd *adtab, int premier,  int dernier,int compgd(const void *,const void*))
{ int pivot;
    if (premier<dernier)
    {
        pivot=premier;
        pivot=partitionner(adtab,premier,dernier,pivot,compgd);
        qsort_gd(adtab,premier,pivot-1,compgd);
        qsort_gd(adtab,pivot+1,dernier,compgd);
    }
}

/* void sort_gd(gd *adtab,const int *n1)
{int j,sorted=0;
 gd min;
  gd *prec;

 //std::vector<gd> data(*n1);



	  std::sort(&(adtab[0]),&( (adtab[*n1]) )); // le dernier pointeur est sur l'element suivant le dernier !!!


}*/


/*****************************************************************************************/
/********* Classe polyn�e ******************************************************************/
/*****************************************************************************************/
void poly :: fail(char *msg)
 // pour les messages en cas de pb d'allocation
{ std::cout << " Memoire insuffisante pour construire "<<msg <<"\n";
   exit(1); }


void poly :: affecte(unsigned int n1,const gd* vect,unsigned int propre)
// affectation avec 1 vecteur de monome
{    unsigned int i,nbb;
extern int forcage;
   if (data!=vect)
   { // si data==vect c'est lui meme
       if(n1>taille_max_polynome && forcage==0)  //gestion d'une exception pour eviter de planter

       { std::cout<<"a polynomial is with more than "<<taille_max_polynome<<" monomials in affecte method, this limit is defined in poly.h"<<endl;
       getchar();
        exit(10);
         mem_limite  l(10);
         throw(l);

       }
       nbb=(int) (n1/taille) +1;
       if (nbb>nblock) { nblock=nbb;
                         delete [] (data);
                         data=(new gd[nblock*taille]);


       }
   n=n1;
   if (n ) { if (data)
               { for (i=0;i<n;i++) data[i]=vect[i];
                  simple=propre;
               }
           else {
               mem_limite  l(1);
               throw(l);
               }
           }
   else  data=NULL;
   }
   }

poly :: poly(void)
   // constructeur 0 : poly= (+00,-00) epsilon
{  n=1;
  nblock=1;
  data=new gd[taille];
  if (data==NULL) { mem_limite  l(2);   throw(l); }
  data->init(infinit,_infinit); // initialisation du monome
  simple=1;
}

poly :: poly(const poly &poly1)
// constructuer 1 : polynome initialise par un autre objet polynome
{ n=0;    // par defaut on initialise le nombre d'elements a 0
  data=NULL;  // et data ne pointe sur rien
  nblock=0;
  affecte(poly1.n,poly1.data,poly1.simple); }

poly :: poly(unsigned int n1,gd* vect)
// constructeur 2 : initialise avec 1 vecteur de monome
{   n=0; data=NULL;nblock=0;
   affecte(n1,vect,0);
   simpli(); // on ne manipule que des polynomes croissants
}

poly :: poly(const gd& gd1)
// constructeur 2 : initialise avec 1 vecteur de monome
{   n=1;
   nblock=1;
   data=new gd[taille];
   if (data==NULL) { mem_limite  l(3);   throw(l); }
   data[0]=gd1;
   simple=1;
}

poly :: poly(long g, long d)
// constructeur 2 : initialise avec 2 entiers
{   n=1; nblock=1;
   data=new gd[taille];
   if (data==NULL) { mem_limite  l(4);   throw(l); }
   data->init(g,d);
   simple=1;
}

poly ::  ~poly(void)
// destructeur
{ if (n) delete [] data; }

poly&  poly :: operator=(const poly & poly1)
 // initialise avec un objet polynome
{  if (&poly1!=this)    affecte(poly1.n,poly1.data,poly1.simple);
   return *this;}

void poly :: init(unsigned int n1 ,gd* vect,int can)
 // initialise avec 1 vecteur de monome
{    //can=0;
   if(n1<1) std::cout<<" problem in poly.init";
   //n1=0;
   affecte(n1,vect,0);
   if (can==0) simpli();     // on trie et on simplifie
   if (can==2) onlysimpli();  // déjà trié on simplifie seulement
   if(can==3) simple=1; // déja simplifié on marque simple
}


poly& poly:: operator=(const gd& gd1)
// initialise avec un monome cast monome->polynome
{ n=1;
  affecte(n,&gd1,1);
  simple=1;
  return *this;}

poly& poly :: init (long g, long  d )     // initialise 2 entiers cast monome->polynome
{    gd monome;
     n=1;
    monome.init(g,d);
    affecte(n,&monome,1);
    simple=1;
    return *this;
}

poly& poly :: operator ()(long g, long d) //initialisation avec deux entiers
{     gd monome;

    monome(g,d);
    add(monome);
   simpli();
    return *this;
}


int poly::operator==(const poly & p1)
{
	unsigned int i=0;

	if(p1.n!=n)	return 0;
	else
		while(i<n)
		{
			if(data[i]!=p1.data[i]) return 0;
			i++;
		}
	return 1;
}


std::ostream& operator<<(std::ostream &flot,poly &poly1)
// surdefinition de <<
// affichage
  {		unsigned int i;
        gd a(0,0);
	   if (poly1.getdata())
		{
		   for (i=0;i<poly1.getn()-1;i++)
			   flot<<poly1.getpol(i) <<"+";

           flot<<poly1.getpol(poly1.getn()-1);
		}
    return flot;
   }

std::fstream&  operator<<(std::fstream &flot,poly &poly1)
// surdefinition de <<
// pour ecriture fichier
  {

	unsigned int i;

   if (poly1.getdata())
   {
	   for (i=0;i<poly1.getn()-1;i++) flot<<poly1.getpol(i)<<"+";
               flot<<poly1.getpol(poly1.getn()-1);
   }
    return flot;
   }



 void poly :: simpli() // simplification du polynome
{
   gd monome;
/*********** SIMPLIFICTAION DU POLYNOME poly *******************************/


   if (simple==1) return;

   if (data) {

        std::vector<gd> myvector (data, data+n);
      //  cout<<" myvector[0]"<<myvector[0]<<endl;
       // cout<<" myvector["<<n-1<<"]"<<myvector[n-1]<<endl;
        std::sort (myvector.begin(), myvector.end(), mycompgd);
        for(int i=0;i<n;i++)
            data[i]=myvector[i];

   //qsort_gd(data,0,n-1,compgd);
   //  qsort_gd(data,(const int *) &n); // on trie suivant gamma,
     onlysimpli();

    }

}


 void poly :: onlysimpli() // simplification du polynome
{  unsigned int i,j;
   gd monome;
/*********** SIMPLIFICTAION DU POLYNOME poly *******************************/

 // poly supposé trie en gamma croissant et delta decroissant, juste ote les monome domine


   if (simple==1) return;

   if (data) {

	i=0;
	for(j=1;j< n;j++)
	{
	    if (data[j].getd()>data[i].getd())
	    {   i++;
	        data[i]=data[j];
	    }

	}

	n=i+1;



	if (data[0].getg()==_infinit)   // on traite le cas ou le polynome commence par g=-00
	{
				if(data[0].getd()!=_infinit) // alors le polynome vaut Top
				{	monome.init(_infinit,infinit);
					affecte(1,&monome,1);
					return;
				}
				else	//les premiers elements valent -oo,-oo <=> +oo,-oo
				{
					while (data[0].getg()==_infinit)	popj(0);
					// on le supprime si ce n'est pas le seul sinon il sera remplace par epsilon
				}
	}


	//si le dernier element vaut epsilon, et qu'il y a plus d'un element on l'ote
	if (data[n-1].getg()==infinit && data[n-1].getd()==_infinit && n>1)
	{

	 popj(n-1);

	}


	// si le dernier element vaut +00,x <=> +00,-oo on l'ote
	if (data[n-1].getg()==infinit && data[n-1].getd()!=_infinit ) popj(n-1);


    // si le premier element vaut (x, -00) <=> +00,-00 on l'ote
	if (data[0].getd()==_infinit && data[0].getg()!=infinit) popj(0);

	simple=1;
    }


}


 void poly :: popj(unsigned int j)
 { unsigned int i;
	 if ( data!=NULL )
	 { if (j<(n-1)) for (i=j;i<(n-1);i++) data[i]=data[i+1]; // si on ne supprime pas le dernier �ement
	   if (j<n) pop();		// indice existant
	 }
  }

 void poly :: pop() // suppression du dernier ��ent du polynome s'il y en a au moins 2
 {

	if (n>1)  n-- ;
	else data->init(infinit,_infinit);
}


void poly :: add( const gd& m1) // ajout d'un element monome au polynome, il n'est plus sous forme propre en sortie

 { gd *temp;
   gd *adlastgd;

	gd r(m1);
	if(r.getg()==infinit && r.getd()==_infinit) return;
 if (n>=(nblock*taille))  // il faut refaire une affectation avec un block de plus
 { nblock++;
     temp=new gd[(nblock)*taille];  // un tampon avec un block de plus
   if (temp==NULL) { std::cout << "poly::add(const gd &)" << std::endl; mem_limite  l(5);   throw(l); }
  std::copy(data,&data[n],temp);
  temp[n]=m1;
  n++;
  delete [] data;
  data=temp;
 }
 else
 {
      data[n]=m1;
      n++;
 }
simple=0;
 }

/**********************************************************************************************/
/************************ fonction externe ****************************************************/
/**********************************************************************************************/
// Old version
 /*poly oplus(const poly &poly1,const poly& poly2)
 // somme de polynome, retour par valeur
 // appel p=oplus(p1,p2); est possible car on a redefini l'operateur =
 {
   gd *temp;	// tableau temporaire
   poly result;
   unsigned int j,nb=poly1.n+poly2.n;

   temp=new gd[nb];
   if (temp==NULL) { mem_limite  l(6);   throw(l); }
   for (j=0;j<poly1.n;j++) temp[j]=poly1.data[j];

   for (j=0;j<poly2.n;j++) temp[j+poly1.n]=poly2.data[j];

   result.init(nb,temp,0);
   result.simpli();
   delete temp;
   return(result);
 }
 */

poly oplus( poly &poly1, poly& poly2)
 // somme de polynome, retour par valeur
 // appel p=oplus(p1,p2); est possible car on a redefini l'operateur =
 {
   gd *temp;	// tableau temporaire
   gd*adlastgd=NULL;
   poly result;
   poly1.simpli();
   poly2.simpli();
   unsigned int nb=poly1.n+poly2.n;

   temp=new gd[nb];
   if (temp==NULL) { std::cout << "poly::oplus(const poly &, poly &)" << std::endl ; mem_limite  l(6);   throw(l); }


  adlastgd =mymerge(&(poly1.data[0]),&(poly1.data[poly1.n]), &(poly2.data[0]),&(poly2.data[poly2.n]), temp) ;
  nb=adlastgd-temp;

   result.init(nb,temp,3); // 3, deja sous forme propre

   delete[] temp;
   return(result);
 }

/*
Old version
 poly oplus(const poly &poly1,const poly& poly2,const  poly& poly3)
 // somme de 3 polynomes, retour par valeur
 // appel p=oplus(p1,p2,p3,p4); est possible car on a redefini l'operateur =
 {
   gd *temp;	// tableau temporaire
   poly result;
   int n;
   unsigned int j,nb=poly1.n+poly2.n+poly3.n;

   temp=new gd[nb];
   if (temp==NULL) { mem_limite  l(7);   throw(l); }
   for (j=0;j<poly1.n;j++) temp[j]=poly1.data[j];
   for (j=0;j<poly2.n;j++) temp[j+poly1.n]=poly2.data[j];
   n=poly1.n+poly2.n;
   for (j=0;j<poly3.n;j++) temp[j+n]=poly3.data[j];

   result.init(nb,temp,0);
   result.simpli();
   delete temp;
   return(result);
 }
*/

poly oplus( poly &poly1, poly& poly2,  poly& poly3)
 // somme de 3 polynomes, retour par valeur
 // appel p=oplus(p1,p2,p3,p4); est possible car on a redefini l'operateur =
 {
   gd *temp;	// tableau temporaire
   gd * temp1;
   gd * adlastgd=NULL;
   gd * adlastgd1=NULL;
   poly result;
   poly1.simpli();
    poly2.simpli();
    poly3.simpli();

   unsigned int nb=poly1.n+poly2.n;


   temp1=new gd[nb];
   if (temp1==NULL) { std::cout << "poly::oplus(const poly &,const poly &,const poly &)" << std::endl; mem_limite  l(7);   throw(l); }
   nb=nb+poly3.n;
   temp=new gd[nb];
   if (temp==NULL) { mem_limite  l(7);   throw(l); }


   adlastgd1 =mymerge(&(poly1.data[0]),&(poly1.data[poly1.n]), &(poly2.data[0]),&(poly2.data[poly2.n]), temp1) ;


  adlastgd =mymerge(&(temp1[0]),adlastgd1, &(poly3.data[0]),&(poly3.data[poly3.n]), temp) ;
  nb=adlastgd-temp;




   result.init(nb,temp,3);


   delete[] temp;
   delete[] temp1;
   return(result);
}
/* Old version
poly oplus(const poly &poly1,const poly& poly2, const poly& poly3,const poly& poly4)
 // somme de 4 polynomes, retour par valeur
 // appel p=oplus(p1,p2,p3,p4); est possible car on a redefini l'operateur =
 {
   gd *temp;	// tableau temporaire
   poly result;
   int n;
   unsigned int j,nb=poly1.n+poly2.n+poly3.n+poly4.n;

   temp=new gd[nb];
   if (temp==NULL) { mem_limite  l(8);   throw(l); }
   for (j=0;j<poly1.n;j++) temp[j]=poly1.data[j];
   for (j=0;j<poly2.n;j++) temp[j+poly1.n]=poly2.data[j];
   n=poly1.n+poly2.n;
   for (j=0;j<poly3.n;j++) temp[j+n]=poly3.data[j];
	n=n+poly3.n;
   for (j=0;j<poly4.n;j++) temp[j+n]=poly4.data[j];


   result.init(nb,temp,0);
   result.simpli();
   delete temp;
   return(result);
 }
*/


poly oplus( poly &poly1, poly& poly2,  poly& poly3,poly& poly4)
 // somme de 4 polynomes, retour par valeur
 // appel p=oplus(p1,p2,p3,p4); est possible car on a redefini l'operateur =
 {
	 gd *temp;	// tableau temporaire
     gd * temp1;
	 gd * temp2;
   gd * adlastgd=NULL;
   gd * adlastgd1=NULL;
   gd * adlastgd2=NULL;
   poly result;
   unsigned int nb1,nb,nb2;
  poly1.simpli();
  poly2.simpli();
  poly3.simpli();
  poly4.simpli();
   nb1=poly1.n+poly2.n;

   temp1=new gd[nb1];
   if (temp1==NULL) { std::cout << "poly::oplus(const poly &,const poly &,const poly &,const poly &)" << std::endl; mem_limite  l(7);   throw(l); }

   nb2=poly4.n+poly3.n;
   temp2=new gd[nb2];
   if (temp2==NULL) {  std::cout << "poly::oplus(const poly &,const poly &,const poly &,const poly &)" << std::endl; mem_limite  l(7);   throw(l); }

   nb=nb1+nb2;


   temp=new gd[nb];
   if (temp==NULL) {  std::cout << "poly::oplus(const poly &,const poly &,const poly &,const poly &)" << std::endl; mem_limite  l(7);   throw(l); }



   adlastgd1 =mymerge(&(poly1.data[0]),&(poly1.data[poly1.n]), &(poly2.data[0]),&(poly2.data[poly2.n]), temp1) ;

   adlastgd2 =mymerge(&(poly3.data[0]),&(poly3.data[poly3.n]), &(poly4.data[0]),&(poly4.data[poly4.n]), temp2) ;

  adlastgd =mymerge(&(temp1[0]),adlastgd1, &(temp2[0]),adlastgd2, temp) ;

  nb=adlastgd-temp;


   result.init(nb,temp,3);

   delete[] temp;
   delete[] temp1;
   delete[] temp2;
   return(result);

}
 poly oplus( poly &poly1, gd& gd1)
 // somme d'1 polynome avec un monome
 { poly result(gd1);
   poly1.simpli();

   result=oplus(result,poly1);

   return(result);

 }

  poly oplus( gd& gd1, poly &poly1)
 // somme d'un monome avec 1 polynome
 {  poly result(gd1);
    poly1.simpli();

	result=oplus(result,poly1);
    return(result);  }

 poly oplus( gd& gd1, gd& gd2)
 // somme de 2 monomes
 { poly result(gd1);

   result=oplus(result,gd2);
   return(result);
 }

 //The Basic version,

 poly otimes( poly& poly1, poly& poly2)
 // produit de polynome, retourne un nouveau polynome
 // appel p=otimes(p1,p2); est possible car on a redefini l'operateur =
 {
   poly result;
   gd *temp;	// tableau temporaire
   unsigned int j,k,n;
   poly1.simpli();
   poly2.simpli();

   n=poly1.n*poly2.n;


   if (n>taille_max_polynome)
   {
       cout<<"Exception a polynom is with more than "<<taille_max_polynome<<" monomials, in poly::otimes(const poly &,const poly &)"<<endl;
       exit(1);
   }
   temp=new gd[n];
   if (temp==NULL) { mem_limite  l(9);   throw(l); }
   for (j=0;j<poly2.n;j++)
    for (k=0;k<poly1.n;k++)
		temp[j*poly1.n+k]=otimes(poly2.data[j],poly1.data[k]);
   result.init(n,temp,0);
   result.simpli();
   delete[] temp;
   return(result);
 }






/*

 poly otimesFourier( poly& poly1, poly& poly2)
 // produit de polynome, retourne un nouveau polynome
 // appel p=otimes(p1,p2); est possible car on a redefini l'operateur =
 {
   poly result;
   poly * p1, *p2, *ptemp;
   gd **temp=NULL;		// tableau temporaire de monomes
   gd * tampon=NULL;	// tableau temporaire de monomes
   gd * adlastgd;
   int * index=NULL; // tableau des tailles des tableaux de monomes
   unsigned int i,j,k,nbpoly;
   unsigned int taillediv2=0;
   poly poly1temp,poly2temp;

   poly1.simpli();
   poly2.simpli();
    p1 = &poly1;
	p2 = &poly2;
// s'ils ne sont pas sous forme simple : en raison de méthode Add


///	if(poly1.simple == 0){
	  poly1temp = poly1;
	  poly1temp.simpli();
	  p1 = &poly1temp;
	}

	if(poly2.simple == 0){
	  poly2temp = poly2;
	  poly2temp.simpli();
	  p2 = &poly2temp;
	}///

// p1 est le plus petit polynomes

   if (!(p1->getn()<p2->getn())) { ptemp = p1; p1=p2; p2=ptemp; }


   temp=new gd * [p1->getn()]; // tableau de polyn�es
   if (temp==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 2" << std::endl; mem_limite  l(9);   throw(l); }

   tailletampon=(int)((p1->getn()*p2->getn()/4); // On suppose qu'on va gagner un facteur 4

   tampon=new gd  [tailletampon]; // tableau de poyn�es apr� 1ere fusion /2 +1
   if (tampon==NULL) {std::cout << "poly::otimes(const poly &,const poly &) - 3" << std::endl; mem_limite  l(9);   throw(l); }

   tabtaille=new  int [p1->getn()]; // tableau de int contenant la taille des polyn�es
   if (tabtaille==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 4" << std::endl; mem_limite  l(9);   throw(l); }


   for(j=0;j<p1->getn();j++)
   {
	   temp[j]=new gd [p2->getn()]; // creation des tableaux de monomes
	   if (temp[j]==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 5" << std::endl; mem_limite  l(9);   throw(l); }
       index[j]=0;  // leur taille sera celle de p2
   }






   // on fait le produit des mon�es de p1 par le polynome p2
   for (j=0;j<p1->getn();j++)
    for (k=0;k<p2->getn();k++)
		{
		    temp[j][k]=otimes(p1->getpol(j),p2->getpol(k));

		}

	nbpoly=p1->getn(); // initialmeent on a donc nbpoly
    if( nbpoly==1) // ajout 14/02/2014 car si epsilon ou top dans p1, il faut simplifier le résultat
    {
      result.init(tabtaille[0],temp[0],0);
    }
    else // Gros else // ajout 14/02/2014
    {

	while(nbpoly>1)
    {  i=0;
	   j=0;

	   // 1ere �ape de fusion
	   while(i<nbpoly)
	   { k=i+1;
	   if(k<nbpoly) // s'il en reste bien 2 �fusionner
	   {
	// fusion

	    adlastgd =mymerge(&temp[i][0],&temp[i][tabtaille[i]], &temp[k][0],&temp[k][tabtaille[k]], &tampon[j][0]) ;
	    tabtaille[j]= adlastgd-&tampon[j][0];
		delete [] temp[i];
		delete [] temp[k];
	   }
	   else
	   { tabtaille[j]=tabtaille[i];
	     delete [] tampon[j]; // Oubli de liberer, fixed LH 12/28/2018 Rio de Janeiro
	     tampon[j]=temp[i];
	   }
	   i=i+2;
	   j++;
	   }

     // on pr�are pour une nouvelle �ape de fusion

	  nbpoly=j;
	  taillediv2=(int)((nbpoly+1)/2);

	  for(j=0;j<nbpoly;j++)
	  { temp[j]=tampon[j]; // on permute les pointeurs pour r�up�er les tableaux fusionn�
	  }
printf("here2");

	  for(j=0,k=0;j<taillediv2;j++) // on alloue de nouveaux tableaux pour les futurs fusionn�
	  {

		tampon[j]=NULL;

		if (k+1<nbpoly)
			tampon[j]=new gd[tabtaille[k]+tabtaille[k+1]]; // si fusion somme des tailles

		else
			tampon[j]=new gd[tabtaille[k]]; // si nombre impair, pas de fusion pour le dernier

		if (tampon[j]==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 7" << std::endl; mem_limite  l(9);   throw(l); }

		k=k+2;
	  }
cout<<"here"<<endl;
	}



   result.init(tabtaille[0],temp[0],3);

    } // fin du gros else
   delete(temp[0]);
   delete(temp);
   delete(tabtaille);
   delete(tampon[0]);
   delete(tampon);

   return(result);
 }


 poly otimesBouillard( poly& poly1, poly& poly2)
 // produit de polynome, retourne un nouveau polynome
 // appel p=otimes(p1,p2); est possible car on a redefini l'operateur =
 {
   poly result;
   poly * p1, *p2, *ptemp;
   gd **temp=NULL;		// tableau temporaire de monomes
   gd ** tampon=NULL;	// tableau temporaire de monomes
   gd * adlastgd;
   int * tabtaille=NULL; // tableau des tailles des tableaux de monomes
   unsigned int i,j,k,nbpoly;
   unsigned int taillediv2=0;
   poly poly1temp,poly2temp;

   poly1.simpli();
   poly2.simpli();
    p1 = &poly1;
	p2 = &poly2;
// s'ils ne sont pas sous forme simple : en raison de méthode Add






   if (!(p1->getn()<p2->getn())) { ptemp = p1; p1=p2; p2=ptemp; }


   temp=new gd * [p1->getn()]; // tableau de polyn�es
   if (temp==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 2" << std::endl; mem_limite  l(9);   throw(l); }

   taillediv2=(int)((p1->getn()+1)/2);

   tampon=new gd * [taillediv2]; // tableau de poyn�es apr� 1ere fusion /2 +1
   if (tampon==NULL) {std::cout << "poly::otimes(const poly &,const poly &) - 3" << std::endl; mem_limite  l(9);   throw(l); }

   tabtaille=new  int [p1->getn()]; // tableau de int contenant la taille des polyn�es
   if (tabtaille==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 4" << std::endl; mem_limite  l(9);   throw(l); }


   for(j=0;j<p1->getn();j++)
   {
	   temp[j]=new gd [p2->getn()]; // creation des tableaux de monomes
	   if (temp[j]==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 5" << std::endl; mem_limite  l(9);   throw(l); }
       tabtaille[j]=p2->getn();  // leur taille sera celle de p2
   }

   for(j=0;j<taillediv2;j++)
   {
	   tampon[j]=new gd [p2->getn()*2]; // double de taille pour la fusion de 2 tableaux
	   if (tampon[j]==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 6" << std::endl; mem_limite  l(9);   throw(l); }
   }




   // on fait le produit des mon�es de p1 par le polynome p2
   for (j=0;j<p1->getn();j++)
    for (k=0;k<p2->getn();k++)
		{
		    temp[j][k]=otimes(p1->getpol(j),p2->getpol(k));

		}

	nbpoly=p1->getn(); // initialmeent on a donc nbpoly
    if( nbpoly==1) // ajout 14/02/2014 car si epsilon ou top dans p1, il faut simplifier le résultat
    {
      result.init(tabtaille[0],temp[0],1);
    }
    else // Gros else // ajout 14/02/2014
    {

	while(nbpoly>1)
    {  i=0;
	   j=0;

	   // 1ere �ape de fusion
	   while(i<nbpoly)
	   { k=i+1;
	   if(k<nbpoly) // s'il en reste bien 2 �fusionner
	   {
	// fusion

	    adlastgd =mymerge(&temp[i][0],&temp[i][tabtaille[i]], &temp[k][0],&temp[k][tabtaille[k]], &tampon[j][0]) ;
	    tabtaille[j]= adlastgd-&tampon[j][0];
		delete [] temp[i];
		delete [] temp[k];
	   }
	   else
	   { tabtaille[j]=tabtaille[i];
	     delete [] tampon[j]; // Oubli de liberer, fixed LH 12/28/2018 Rio de Janeiro
	     tampon[j]=temp[i];
	   }
	   i=i+2;
	   j++;
	   }

     // on pr�are pour une nouvelle �ape de fusion

	  nbpoly=j;
	  taillediv2=(int)((nbpoly+1)/2);

	  for(j=0;j<nbpoly;j++)
	  { temp[j]=tampon[j]; // on permute les pointeurs pour r�up�er les tableaux fusionn�
	  }


	  for(j=0,k=0;j<taillediv2;j++) // on alloue de nouveaux tableaux pour les futurs fusionn�
	  {

		tampon[j]=NULL;

		if (k+1<nbpoly)
        {

            int sizetemp=tabtaille[k]+tabtaille[k+1];
            if(sizetemp>5000)
            {
                cout<<"more than 50000 monomials in a polynomial (otimes of polynomials)\n program stopped"<<endl;
                cout<<"Press Enter to continue"<<endl;
                getchar();
                exit(1);
            }
			tampon[j]=new gd[tabtaille[k]+tabtaille[k+1]]; // si fusion somme des tailles
        }
		else
			tampon[j]=new gd[tabtaille[k]]; // si nombre impair, pas de fusion pour le dernier

		if (tampon[j]==NULL) { std::cout << "poly::otimes(const poly &,const poly &) - 7" << std::endl; mem_limite  l(9);   throw(l); }

		k=k+2;
	  }

	}



   result.init(tabtaille[0],temp[0],3);

    } // fin du gros else
   delete(temp[0]);
   delete(temp);
   delete(tabtaille);
   delete(tampon[0]);
   delete(tampon);

   return(result);
 }

*/

poly  otimes( poly& poly1,  gd& gd2)  // produit d'un polynome par un monome
{
poly poly3;

   poly1.simpli();
   poly3.getpol(0).init(poly1.getpol(0).getg()+gd2.getg(),poly1.getpol(0).getd()+gd2.getd());
   for(int i=1;i<poly1.getn();i++)
   {
       poly3(poly1.getpol(i).getg()+gd2.getg(),poly1.getpol(i).getd()+gd2.getd());
   }
   //return(otimes(poly1,poly2));
   poly3.setsimple();
   return(poly3);
}

poly  otimes(gd& gd2, poly& poly1 ) // produit d'un monome par un polynome
{  poly poly3;

   poly1.simpli();
   poly3.getpol(0).init(poly1.getpol(0).getg()+gd2.getg(),poly1.getpol(0).getd()+gd2.getd());
   for(int i=1;i<poly1.getn();i++)
   {
       poly3(poly1.getpol(i).getg()+gd2.getg(),poly1.getpol(i).getd()+gd2.getd());
   }
   //return(otimes(poly1,poly2));
   poly3.setsimple();
   return(poly3);
}

/* Old Version
poly inf( poly& poly1, poly& poly2)
// inf de polynome, retourne un nouveau polynome

{ poly result;
  gd *temp;
  unsigned int i,j,n,M;
  n=poly1.n*poly2.n;
  temp=new gd[n];
  if (temp==NULL) { mem_limite  l(10);   throw(l); }




  M=0;

  for (i=0;i<poly1.n;i++)
  {

   temp[M]=inf(poly1.data[i],poly2.data[0]);
   M++;
   for (j=1;j<poly2.n;j++)
   {
       temp[M]=inf(poly1.data[i],poly2.data[j]);

       if(temp[M-1].getd()==temp[M].getd()) // no increasing in delta, you can stop
       {
           j=poly2.n;
       }
       else
       {
           if(temp[j][M].getg()==temp[j][M-1].getg()) // il ne faut garder que le dernier
            {
                temp[j][M-1]=temp[j][M];
            }
            else
            {
                M++;
            }

       }
    }

  }
   result.init(n,temp,0);
   result.simpli();

   delete temp;
   return(result);
 }
*/

/****/
poly inf( poly& poly1, poly& poly2)
// inf de polynome, retourne un nouveau polynome
{ int M;
   gd gdtemp;
   poly result;
    poly * p1, *p2,*ptemp;
   gd **temp=NULL;		// tableau temporaire de monomes
   gd ** tampon=NULL;	// tableau temporaire de monomes
   gd * adlastgd;
   int * tabtaille=NULL; // tableau des tailles des tableaux de monomes
   unsigned int i,j,k,nbpoly;
   unsigned int taillediv2=0;
   poly  poly1temp,poly2temp;

poly1.simpli();
poly2.simpli();

	p1 = &poly1;
	p2 = &poly2;

// s'ils ne sont pas sous forme simple : en raison de méthode Add
/*
	if(poly1.simple == 0){
	  poly1temp = poly1;
	  poly1temp.simpli();
	  p1 = &poly1temp;
	}

	if(poly2.simple == 0){
	  poly2temp = poly2;
	  poly2temp.simpli();
	  p2 = &poly2temp;
	}
*/
   // p1 est le plus petit polynomes
    if (!(p1->getn()<p2->getn())) { ptemp = p1; p1=p2; p2=ptemp; }


// les polyn�es doivent �re tri�

/*    p1->simpli();
    p2->simpli();
  */

   temp=new gd * [p1->getn()]; // tableau de polyn�es
   if (temp==NULL) { std::cout << "poly::inf(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

   taillediv2=(int)((p1->getn()+1)/2);

   tampon=new gd * [taillediv2]; // tableau de poyn�es apr� 1ere fusion /2 +1
   if (tampon==NULL) { std::cout << "poly::inf(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

   tabtaille=new  int [p1->getn()]; // tableau de int contenant la taille des polyn�es
   if (tabtaille==NULL) {std::cout << "poly::inf(const poly &,const poly &)" << std::endl;  mem_limite  l(9);   throw(l); }


   for(j=0;j<p1->getn();j++)
   {
	   temp[j]=new gd [p2->getn()]; // creation des tableaux de monomes
	   if (temp[j]==NULL) { std::cout << "poly::inf(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }
       tabtaille[j]=p2->getn();  // leur taille sera celle de p2 par d�aut
   }

   for(j=0;j<taillediv2;j++)
   {
	   tampon[j]=new gd [p2->getn()*2]; // double de taille pour la fusion de 2 tableaux
	   if (tampon[j]==NULL) {std::cout << "poly::inf(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }
   }


   // on fait l'inf des mon�es de p1 par le polynome p2

	for (j=0;j<p1->getn();j++)
	{
		temp[j][0]=inf(p1->getpol(j),p2->getpol(0));

		for (k=1,M=1;k<p2->getn();k++)
			{
				temp[j][M]=inf(p1->getpol(j),p2->getpol(k));

				if (temp[j][M].getd()==temp[j][M-1].getd() ) // on bouge plus en delta c'est fini
				{   tabtaille[j]=M;
					k=p2->getn();
				}
                else
				{
					if(temp[j][M].getg()==temp[j][M-1].getg()) // il ne faut garder que le dernier
					{
					temp[j][M-1]=temp[j][M];
				  	tabtaille[j]=tabtaille[j]-1; // on ote un ��ent
					}
					else
					M++;
				}

			}
		}



	nbpoly=p1->getn(); // initialmeent on a donc nbpoly

	while(nbpoly>1)
    {  i=0;
	   j=0;

	   // 1ere �ape de fusion
	   while(i<nbpoly)
	   { k=i+1;
	   if(k<nbpoly) // s'il en reste bien 2 �fusionner
	   {
	// fusion

	    adlastgd =mymerge(&temp[i][0],&temp[i][tabtaille[i]], &temp[k][0],&temp[k][tabtaille[k]], &tampon[j][0]) ;
	    tabtaille[j]= adlastgd-&tampon[j][0];

		delete [] temp[i];
		delete [] temp[k];
	   }
	   else
	   { tabtaille[j]=tabtaille[i];
	     delete [] tampon[j]; // Oubli de liberer, fixed LH 28/12/2018 Rio de Janeiro
	     tampon[j]=temp[i];
	   }
	   i=i+2;
	   j++;
	   }

     // on pr�are pour une nouvelle �ape de fusion

	  nbpoly=j;
	  taillediv2=(int)((nbpoly+1)/2);

	  for(j=0;j<nbpoly;j++)
	  { temp[j]=tampon[j]; // on permute les pointeurs pour r�up�er les tableaux fusionn�
	  }


	  for(j=0,k=0;j<taillediv2;j++) // on alloue de nouveaux tableaux pour les futurs fusionn�
	  {

		tampon[j]=NULL;

		if (k+1<nbpoly)
			tampon[j]=new gd[tabtaille[k]+tabtaille[k+1]]; // si fusion somme des tailles

		else
			tampon[j]=new gd[tabtaille[k]]; // si nombre impair, pas de fusion pour le dernier

		if (tampon[j]==NULL) { std::cout << "poly::inf(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

		k=k+2;
	  }

	}


   result.init(tabtaille[0],temp[0],3);



   delete(temp[0]);
   delete(temp);
   delete(tabtaille);
   delete(tampon[0]);
   delete(tampon);

   return(result);
 }
//*/
poly inf( poly& poly1, gd& gd2)
 // inf d'1 polynome et d'1 monome
{
   return(inf(gd2,poly1));
}

poly inf( gd& gd1, poly& poly2)
// inf d'1 monome  et d'1 polynome
{  poly result;
   gd * temp;
   unsigned int i,j,	M;
poly2.simpli();
   if(!poly2.simple){ std::cout << "poly::inf(const gd &,const poly &)" << std::endl; mem_limite  l(9);   throw(l);}

//poly2.simpli();

   temp=new gd [poly2.getn()]; // tableau de mon�es
   j=poly2.getn();
   if (temp==NULL) { std::cout << "poly::inf(const gd &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

    temp[0]=inf(gd1,poly2.getpol(0));
	for (i=1,M=1;i<poly2.getn();i++)
	{  temp[M]=inf(gd1,poly2.getpol(i));


	if (temp[M].getd()==temp[M-1].getd() ) // on bouge plus en delta c'est fini
	{ j=M;
	  i=poly2.getn();
	}

	if(temp[M].getg()==temp[M-1].getg()) // il ne faut garder que le dernier
	{
	  temp[M-1]=temp[M];
	   j--; // on ote un ��ent
	}
	else
		M++;


	}

   result.init(j,temp,1);
   delete temp;
   return(result);
}


poly frac( poly& poly1, gd& gd2)
 // residuation d'1 polynome par un monome, retourne un nouveau polynome

 { poly result;
  gd * temp;
   unsigned int k;

 poly1.simpli();
	//if(!poly1.simple){std::cout << "poly::frac(const poly &,const gd &)" << std::endl;  mem_limite  l(9);   throw(l);}



	  temp=new gd  [poly1.getn()]; // tableau de mon�es
		if (temp==NULL) { std::cout << "poly::frac(const poly &,const gd &)" << std::endl; mem_limite  l(9);   throw(l); }


     temp[0]=frac(poly1.getpol(0),gd2);

   for (k=1;k<poly1.getn();k++)
    temp[k]=frac(poly1.getpol(k),gd2);

   result.affecte(poly1.getn(),temp,1); // déja simplifier car poly1 est simple
   delete temp;
   return(result);
 }

 poly frac( poly& poly1, poly& poly2)
 // residuation d'1 polynome par 1 polynome, retourne un nouveau polynome

 { poly result,tampon;

   unsigned int j;
//initialisation
poly1.simpli();
poly2.simpli();
   result=frac(poly1,poly2.data[0]);

  for (j=1;j<poly2.n;j++) {
     tampon=frac(poly1,poly2.data[j]);
     result=inf(result,tampon);
     }
   return(result);
 }

   poly frac(gd& gd1,poly& poly2)
 // residuation d'1 monome par 1 polynome, retourne un nouveau polynome
 // appel p=frac(m1,p2); est possible car on a redefini l'operateur =
 {  poly poly1,result;
 	poly1=gd1; //cast gd->poly
    result=frac(poly1,poly2);
    return(result); }



poly prcaus(poly & p)
{
	poly local;

	int i=(p.getn()-1);

	while(p.getpol(i).getd()>=0 && p.getpol(i).getg()>=0 && i>=0)
	{
		local.add(p.getpol(i));
		i--;
	}

	// si i==-1 tous les monomes de p etaient causaux
	// sinon il y a peut �re la partie causale du i-1 ieme �ajouter
	if(i>=0 && p.getpol(i).getd()>=0)
	{
		local.add(gd(0,p.getpol(i).getd()));
	}
	local.simpli();
	return local;
}


// Append 17/04/2015, for Soraia Hdamard product (odot), residuatin fracodotsharp and dual residuation fracodotflat

poly odot(const poly& poly1,const poly& poly2)
// Hadamard de polynome, retourne un nouveau polynome
{ int M;
   gd gdtemp;
   poly result;
   const poly * p1, *p2,*ptemp;
   gd **temp=NULL;		// tableau temporaire de monomes
   gd ** tampon=NULL;	// tableau temporaire de monomes
   gd * adlastgd;
   int * tabtaille=NULL; // tableau des tailles des tableaux de monomes
   unsigned int i,j,k,nbpoly;
   unsigned int taillediv2=0;
   poly  poly1temp,poly2temp;



	p1 = &poly1;
	p2 = &poly2;

// s'ils ne sont pas sous forme simple : en raison de la methode Add

	if(poly1.simple == 0){
	  poly1temp = poly1;
	  poly1temp.simpli();
	  p1 = &poly1temp;
	}

	if(poly2.simple == 0){
	  poly2temp = poly2;
	  poly2temp.simpli();
	  p2 = &poly2temp;
	}

   // p1 est le  polynome ayant le plus petit nombre d'elements
    if (!(p1->getn()<p2->getn())) { ptemp = p1; p1=p2; p2=ptemp; }




   temp=new gd * [p1->getn()]; // tableau de polynomes
   if (temp==NULL) { std::cout << "poly::odot(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

   taillediv2=(int)((p1->getn()+1)/2);

   tampon=new gd * [taillediv2]; // tableau de poynomes apres 1ere fusion /2 +1
   if (tampon==NULL) { std::cout << "poly::odot(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

   tabtaille=new  int [p1->getn()]; // tableau de int contenant la taille des polynomes
   if (tabtaille==NULL) {std::cout << "poly::odot(const poly &,const poly &)" << std::endl;  mem_limite  l(9);   throw(l); }


   for(j=0;j<p1->getn();j++)
   {
	   temp[j]=new gd [p2->getn()]; // creation des tableaux de monomes
	   if (temp[j]==NULL) { std::cout << "poly::odot(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }
       tabtaille[j]=p2->getn();  // leur taille sera celle de p2 par defaut
   }

   for(j=0;j<taillediv2;j++)
   {
	   tampon[j]=new gd [p2->getn()*2]; // double de taille pour la fusion de 2 tableaux
	   if (tampon[j]==NULL) {std::cout << "poly::odot(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }
   }


   // on fait hadamard des monomes de p1 par le polynome p2

	for (j=0;j<p1->getn();j++)
	{
		temp[j][0]=odot(p1->getpol(j),p2->getpol(0));

		for (k=1,M=1;k<p2->getn();k++)
			{
				temp[j][M]=odot(p1->getpol(j),p2->getpol(k));

				if (temp[j][M].getd()==temp[j][M-1].getd() ) // on bouge plus en delta c'est fini
				{   tabtaille[j]=M;
					k=p2->getn();
				}
                else
				{
					M++;
				}

			}
	}



	nbpoly=p1->getn(); // initialement on a donc nbpoly

	while(nbpoly>1)
    {  i=0;
	   j=0;

	   // 1ere etape de fusion
	   while(i<nbpoly)
	   { k=i+1;
	   if(k<nbpoly) // s'il en reste bien 2 a fusionner
	   {
	// fusion

	    adlastgd =std::merge(&temp[i][0],&temp[i][tabtaille[i]], &temp[k][0],&temp[k][tabtaille[k]], &tampon[j][0]) ;
	    tabtaille[j]= adlastgd-&tampon[j][0];

		delete [] temp[i];
		delete [] temp[k];
	   }
	   else
	   { tabtaille[j]=tabtaille[i];
	     delete [] tampon[j]; // Oubli de liberer, fixed LH 12/28/2018 Rio de Janeiro
	     tampon[j]=temp[i];
	   }
	   i=i+2;
	   j++;
	   }

     // on prepare pour une nouvelle ï¿½ape de fusion

	  nbpoly=j;
	  taillediv2=(int)((nbpoly+1)/2);

	  for(j=0;j<nbpoly;j++)
	  { temp[j]=tampon[j]; // on permute les pointeurs pour rï¿½upï¿½er les tableaux fusionnï¿½
	  }


	  for(j=0,k=0;j<taillediv2;j++) // on alloue de nouveaux tableaux pour les futurs fusionnï¿½
	  {

		tampon[j]=NULL;

		if (k+1<nbpoly)
			tampon[j]=new gd[tabtaille[k]+tabtaille[k+1]]; // si fusion somme des tailles

		else
			tampon[j]=new gd[tabtaille[k]]; // si nombre impair, pas de fusion pour le dernier

		if (tampon[j]==NULL) { std::cout << "poly::odot(const poly &,const poly &)" << std::endl; mem_limite  l(9);   throw(l); }

		k=k+2;
	  }

	}


   result.init(tabtaille[0],temp[0],2);

   //result.simpli();

   delete(temp[0]);
   delete(temp);
   delete(tabtaille);
   delete(tampon[0]);
   delete(tampon);

   return(result);
 }


poly fracodotsharp( poly& poly1, poly& poly2)
// residue Hadamard de polynome, retourne un nouveau polynome
// poly1 >> odot(result,poly2)
{
   gd gdtemp;
   poly result(_infinit,infinit);
   poly * p1, *p2;
   poly temp;		// tableau temporaire de monomes
   unsigned int j,i;
   int delta;


	p1 = &poly1;
	p2 = &poly2;

// s'ils ne sont pas sous forme simple : en raison de methode Add

	if(poly1.simple == 0)
        {
	  poly1.simpli();
        }

	if(poly2.simple == 0)
        {
	  poly2.simpli();
        }

   for (i=0;i<p2->getn();i++)
   {
	   	gdtemp=fracodotsharp(p1->getpol(0),p2->getpol(i));
		temp=gdtemp;
	    delta=gdtemp.getd();


	   for (j=1;j<p1->getn();j++)
	   {
		      gdtemp=fracodotsharp(p1->getpol(j),p2->getpol(i));


				if (gdtemp.getd()==delta ) // on bouge plus en delta c'est fini
				{
				j=p1->getn()-1;
				}
				else
				{
					temp.add(gdtemp);

					delta=gdtemp.getd();
				}


	   }

	   temp.simpli();
	   result=inf(result,temp);

   	}

   return(result);
 }

poly fracodotflat( poly& poly1, poly& poly2)
// residuee duale du produit d'Hadamard de polynome, retourne un nouveau polynome
// poly1 << odot(result,poly2) Hypothese poly2>>poly1 sinon on retourne Top
{
   gd gdtemp;
   poly result;
   poly * p1, *p2;

   unsigned int j,k;


   int stop=0;


   if(!(oplus(poly1,poly2)==poly2))
   { std::cout<<" fracodotflat (p1,p2) needs p2=>p1; it's not the case"<<std::endl;
     return(result.init(_infinit,infinit));
   }


	p1 = &poly1;
	p2 = &poly2;

// s'ils ne sont pas sous forme simple : en raison de methode Add

	if(poly1.simple == 0)
    {

	 poly1.simpli();
    }

	if(poly2.simple == 0)
        {
	  poly2.simpli();
	  	}

   // on fait la résidué d'Hadamard des monomes de p1 par le polynome p2
   stop=0;
   j=0;
    while (p1->getpol(0).getd() > p2->getpol(j).getd() && j<p2->getn())
       {
           j++;

       }
//    if(!(p1->getpol(0)<=p2->getpol(j))) j--;

    result=fracodotflat(p1->getpol(0),p2->getpol(j));


   for (k=1;k<p1->getn()&&j<p2->getn();k++)
   {   j=0;
       /*while (!(p1->getpol(k)<=p2->getpol(j)) && j<p2->getn())
       {
           j++;

       }*/
       while (p1->getpol(k).getd()>p2->getpol(j).getd() && j<p2->getn())
       {
           j++;

       }


      //if(!(p1->getpol(k)<=p2->getpol(j))) j--;

        result.add(fracodotflat(p1->getpol(k),p2->getpol(j)));


   }
   result.simpli();

  /* old algorithm more complex
    n=0;

	for (j=0;j<p2->getn();j++)
	{
		stop=0;
		for (k=0;k<p1->getn() && stop==0;k++)
			{

				if( p2->getpol(j)>=p1->getpol(k)) // strong residuability condition
				{

				result.add(fracodotflat(p1->getpol(k),p2->getpol(j)));
			n++;

				}
			//	else
				//	stop=1;

			}
	}


	result.simpli();
 */
  return(result);

 }


// |=========================================================================|
// | Hadamard product on polynomials                                         |
// |=========================================================================|
// | Description:															 |
// | New version of Hadamard product, residuation and dual residuation of the|
// | Hadamard product on polynomials.   									 |
// | Added by Davide Zorzenon (07/03/2020)									 |
// |-------------------------------------------------------------------------|

poly hadamard_prod(poly& poly1, poly& poly2)
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
{
    gd gdtemp;
    poly poly_result;
    poly* p1, * p2;     // pointers to &poly1 and &poly2
    unsigned int i, j;

    p1 = &poly1;
    p2 = &poly2;

    // Simplify input polynomials

    if (poly1.simple == 0)
        poly1.simpli();

    if (poly2.simple == 0)
        poly2.simpli();

    // Compute Hadamard product for each monomial and then add them

	/*
    for (i = 0; i < p1->getn(); i++)
    {
        for (j = 0; j < p2->getn(); j++)
        {
            gdtemp = hadamard_prod(p1->getpol(i), p2->getpol(j));
            poly_result.add(gdtemp);
        }
    }
	*/
	
	unsigned int j_0 = 0; // starting index of the j-loop
	for (i = 0; i < p1->getn(); i++)
	{
		for (j = j_0; j < p2->getn(); j++)
		{
			// calculate the Hadamard product of the current monomials and add it to the result
			gdtemp = hadamard_prod(p1->getpol(i), p2->getpol(j));
			poly_result.add(gdtemp);

			// exponents of delta (for both monomials)
			long t_i = p1->getpol(i).getd();
			long t_j = p2->getpol(j).getd();
			
			// if min(t_i, t_j') = t'_m': stop computation
			if (min(t_i, t_j) == p2->getpol(p2->getn() - 1).getd())
			{
				poly_result.simpli();
				return(poly_result);
			}
			
			// if t_i <= t_j': next term will be (i+1, j), so no need to start j at 0 again
			if (t_i <= t_j)
			{
				j_0 = j; // save the current j index
				break; // end the current j-loop
			}
		}
	}
	
    // Simplify output polynomial

    poly_result.simpli();

    return(poly_result);
}

poly hadamard_res(poly& poly1, poly& poly2)
// Residual of the Hadamard product of 2 polynomials
//
// Inputs:
//			poly1 (poly&): polynomial in M_in^ax[[g,d]]
//			poly2 (poly&): polynomial in M_in^ax[[g,d]]
//
// Output:
//			poly_result (poly): polynomial in M_in^ax[[g,d]]
{
    poly poly_result = gd(_infinit,infinit);
    poly poly_temp;
    poly* p1, * p2;     // pointers to &poly1 and &poly2
    unsigned int i, j;

    p1 = &poly1;
    p2 = &poly2;

    // Simplify input polynomials

    if (poly1.simple == 0)
        poly1.simpli();

    if (poly2.simple == 0)
        poly2.simpli();

    // Compute residual of the Hadamard product
	
    //for (j = 0; j < p2->getn(); j++)
    //{
    //    poly_temp = gd(infinit, _infinit);
    //    for (i = 0; i < p1->getn(); i++)
    //    {
    //        poly_temp.add(hadamard_res(p1->getpol(i), p2->getpol(j)));
    //    }
    //    poly_temp.simpli();
    //    poly_result = inf(poly_result,poly_temp);
    //}

	for (j = 0; j < p2->getn(); j++)
	{
		poly_temp = gd(infinit, _infinit);
		for (i = 0; i < p1->getn(); i++)
		{
			poly_temp.add(hadamard_res(p1->getpol(i), p2->getpol(j)));

			// if t_i >= t_j': continue computation with j+1 (and reset i)
			if (p1->getpol(i).getd() >= p2->getpol(j).getd())
				break; // end the current i-loop
		}

		poly_temp.simpli();
		poly_result = inf(poly_result, poly_temp);		
	}

    return(poly_result);
}

poly hadamard_dualres(poly& poly1, poly& poly2)
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
{
    poly poly_result;
    poly poly_temp, poly_temp1;
    poly* p1, * p2;     // pointers to &poly1 and &poly2
    unsigned int i, j;

    p1 = &poly1;
    p2 = &poly2;

    // Simplify input polynomials

    if (poly1.simple == 0)
        poly1.simpli();

    if (poly2.simple == 0)
        poly2.simpli();

    // exception

    gd p1_first = p1->getpol(0);                // first monomial of p1
    gd p1_last  = p1->getpol(p1->getn() - 1);   // last monomial of p1
    gd p2_first = p2->getpol(0);                // first monomial of p2
    gd p2_last  = p2->getpol(p2->getn() - 1);   // last monomial of p2
	
	if (((p2_first.getg() == _infinit || p2_first.getg() == infinit) && p1_first != gd(infinit,_infinit)) ||
	    (p2_last.getd() < p1_last.getd()))
    {
        std::cout << "hadamard_dualres: invalid polynomials " << *p1 << " and " << *p2 << std::endl;
        return(poly_result.init(_infinit, infinit)); // return top element (as a polynomial)
    }

    // no exception
    // Compute dual residual of the Hadamard product
	
	for (i = 0; i < p1->getn(); i++)
	{
		//poly_temp = gd(_infinit, infinit);
		poly_temp = gd(infinit, _infinit);
		for (j = 0; j < p2->getn(); j++)
		{
			// exception for monomials - if t_i > t_j': skip and continue with j+1
			if (p1->getpol(i).getd() > p2->getpol(j).getd() ||
				((p2->getpol(j).getg() == infinit || p2->getpol(j).getg() == _infinit) && p1->getpol(i).getg() != infinit))
				continue;
			else // no exception, calculate and continue with i+1 for the next term
			{
				poly_temp = hadamard_dualres(p1->getpol(i), p2->getpol(j));
				break;
			}
		}
		poly_temp.simpli();
		poly_result = oplus(poly_result, poly_temp);
	}

    return(poly_result);
}

}//fin namespace mmgd
