#include <stdio.h>
#include <stdlib.h>

struct l_hl {
	int vrh;
	struct l_hl *next;
};
typedef l_hl hlist;

struct l_nb {
	int vrh;
	int bns; //broj neposjecenih susjeda
	struct l_nb *next;
};
typedef l_nb nblist;


int mat_dim(char *dat) {
FILE *input_file;
int c;
input_file = fopen(dat, "rb");
if(input_file!=0) {
	fscanf(input_file,"%d", &c);
	fclose(input_file);
}
else {
	printf("\n Nepostojeca datoteka!!\n\n");
	exit(0);
}
return(c);
}

void read_matrix(int n,int **mat, char *dat) {
FILE *input_file;
input_file = fopen(dat, "rb");
//popunjavanje matrice
fscanf(input_file,"%d", &mat[0][0]);//preskace prvi red
for (int x = 0; x < n; x++) {
    for (int y = 0; y < n; y++) {
        fscanf(input_file,"%d", &mat[x][y]);
        }
}
fclose(input_file);
}

void print_matrix(int n,int **matrix) {
printf("Matrica \n");
for(int i=0;i<n;i++) {
  for(int j=0;j<n;j++) {
    printf("%3i",matrix[i][j]);
  }
printf("\n");
}
printf("\n");
}

void print_h(int n, int *ham) {
printf("hc: ");
for(int i=0;i<n;i++)
		printf("%3d",ham[i]);
printf("\n");
}

int find_nb(int v,int n, int **mat,nblist *nb, hlist *hc) {
nblist *nw;
hlist *p,*f;
int brp=0,min;

bool pos=false;
for(int s=0;s<n;s++) {
	if(mat[s][v]==1) {		//prolanazi susjedni vrh
		pos=false;
		p=hc;
		while(p!=NULL) {	//provjerava dali je susjedni vrh posjecen
			if(s==p->vrh)
				pos=true;	//vrh je posjecen
			f=p;			//prvi vrh
			p=p->next ;
		}
		if(pos==false) {	//vrh 's' nije posjecen, dodaje ga se u listu nb
			nw=(nblist *)malloc(sizeof(nblist));
			nw->vrh =s;
			nw->bns =0;
			nw->next = nb->next;
			nb->next= nw;
			brp++;			//broj vrhova koji nisu posjeceni
		}
	}
}

//koliko pojedini susjed ima neposjecenih susjeda
min=10000;					//postavlja se max priliko trazenja min
nblist *t;
int vrh;
t=nb->next ;
while(t!=NULL) {
	vrh=t->vrh; 
	for(int s=0;s<n;s++) {
		if(mat[s][vrh]==1) {	//prolanazi susjedni vrh
			pos=false;
			p=hc;
			while(p!=NULL) {	//provjerava dali je susjedni vrh posjecen
				if(s==p->vrh && s!=f->vrh)	//broji i prvi vrh u HC kao da nije posjecen, zato sto se treba vratit na taj vrh
					pos=true;	//vrh je posjecen
				p=p->next ;
			}
			if(pos==false) {
				t->bns++;
			}
		}
	}
if(t->bns <min)					//trazi min br. posjecenih susjeda
	min=t->bns ;
t=t->next; 
}

if(brp==0)
	return(-1);
//izbacuje sve elemente koji su veci od min
nblist *pret, *tmp;
t=nb->next ;
pret=nb;
while(t!=NULL) {
	if(t->bns > min && t->bns!=0) {
		tmp=t;
		pret->next = t->next;
		t=pret;
		free(tmp);
	}
pret=t;
t=t->next; 
}

return(0);
}

int hamilton(int v,int n, int **mat,nblist *nb, hlist *hc, int *ham) {
nblist *nt, *tmp;
hlist *h,*h1;
int stat,hn=0, a;

	h=(hlist *)malloc(sizeof(hlist));
	h->vrh=v;
	h->next=hc->next;
	hc->next =h;
	
	nb->next =NULL;
	stat=find_nb(hc->next->vrh,n,mat,nb,hc);

while(stat!=-1) {
	tmp=nb;
	while(tmp->next !=NULL) //uzima vrh zadnjeg elementa u popisu susjednih vrhova
		tmp=tmp->next;

	h=(hlist *)malloc(sizeof(hlist));
	h->vrh=tmp->vrh;
	h->next=hc->next;
	hc->next =h;

	nb->next =NULL;
	stat=find_nb(h->vrh ,n,mat,nb,hc);
}

nt=nb->next;
while(nt!=NULL) {
	tmp=nt;
	nt=nt->next;
	free(tmp);
}

h=hc->next;
hn=0; 
while(h!=NULL) {
	h1=h;
	h=h->next;
	ham[hn]=h1->vrh; 
	hn++;
	free(h1);
}

if(hn==n) { //postoji hamiltonov ciklus
	for(hn=0;hn<n && hn<(n-hn);hn++) { //izokrece red
		a=ham[hn];
		ham[hn]=ham[(n-1)-hn];
		ham[(n-1)-hn]=a;
	}
    nb->next =NULL;
    hc->next =NULL;
	//provjerava dali postoji veza izmedju zadnjeg vtha i prvog
	if(mat[ham[n-1]][ham[0]]==1)
		return(1);	//postoji hc
}

nb->next =NULL;
hc->next =NULL;
return(0);	//ne postoji hc
}


void main() {
int **mat;
int h,i,c=0,n,z;
bool exist=false;
char dat[20];
//unos datoteke
printf("Unesite naziv datoteke grafa: ");
scanf("%s",dat);

n = mat_dim(dat);                           //citanje dimenzija matrice
mat = (int **)malloc(n * sizeof(int *));    //matrica dimenzija NxN
for(i=0;i<n;i++)
	mat[i]= (int *)malloc(n * sizeof(int));
int *ham;                                   //polje za pohranu hamiltonovog ciklusa
ham=(int *)malloc(n * sizeof(int));

printf("Dimenzije matrice %dx%d\n",n,n);
read_matrix(n,mat,dat);
print_matrix(n,mat);

hlist *hc = new hlist;
nblist *nb = new nblist;
hc->next =NULL;
nb->next =NULL;

//hamiltonov ciklus - isprobava se svaki vrh kao pocetni
for(z=0;z<n;z++) {
	h=hamilton(z,n,mat,nb,hc,ham);
	if(h==1) {
		exist=true;
		printf("%d. ",c);
		print_h(n,ham);                   //ispis hamiltonovog ciklusa
		c++;
	}
}
if(exist==true)
	printf("Graf je Hamiltonov\n");
else
	printf("Graf nije Hamiltonov\n");

}