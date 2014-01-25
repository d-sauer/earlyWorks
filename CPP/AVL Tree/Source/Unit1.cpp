//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "avltree.h"
#include "Unit1.h"
#include <stdio.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;


class simple
{
public :

    int key;
    int payload;

    simple (int _key, int _payload)
        : key (_key), payload (_payload) { }

    simple (int _key) : key (_key) { }

    simple (const simple & rhs)
    {
        key = rhs.key;
        payload = rhs.payload;
    }

    bool operator== (const simple & rhs) const
    {
        return key == rhs.key;
    }

    bool operator< (const simple & rhs) const
    {
        return key >= rhs.key; 
    }

};

ostream & operator << (ostream & co, const simple & data)
{
    co << data.key << " is #" << data.payload;
    return co;
}

AVL::Tree<simple> tree;
char buff[100];

void __stdcall insert_in_tree();
void __stdcall insert_in_t(int x);
void __stdcall remove_in_t(int x);
void __stdcall find_in_t(int x);
void __stdcall make_tw(TTreeNode *rootNode,AVL::Node<simple> *nd,int pos);


//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __stdcall insert_in_t(int x) {
if (tree.find(x)!=NULL) {
	sprintf(buff,"Postojeca vrjednost: %d ",x);
	Form1->Memo1->Lines->Add(buff);
}
else {
	tree.insert(x);
	sprintf(buff,"Dodavanje vrjednosti: %d",x);
	Form1->Memo1->Lines->Add(buff);
	}
}

void __stdcall remove_in_t(int x) {
if (tree.find(x)!=NULL) {
	tree.remove (x);
	sprintf(buff,"Brisanje vrjednost: %d ",x);
	Form1->Memo1->Lines->Add(buff);
}
else {
	sprintf(buff,"Nepostojeca vrjednosti: %d",x);
	Form1->Memo1->Lines->Add(buff);
	}
}

void __stdcall find_in_t(int x) {
if (tree.find(x)!=NULL) {
	sprintf(buff,"Postojeca vrijednost: %d ",x);
	Form1->Memo1->Lines->Add(buff);
}
else {
	sprintf(buff,"Nepostojeca vrjednosti: %d",x);
	Form1->Memo1->Lines->Add(buff);
	}
}

void __stdcall insert_in_tree() {
char niz[256];
sprintf(niz,"%s",Form1->Edit1->Text);

char *pch;
int br;
pch = strtok (niz,",");
br=atoi(pch);
insert_in_t(br);
//tree.insert(br);

pch = strtok (NULL, " ,.");
  while (pch != NULL)
  {
	br=atoi(pch);
	insert_in_t(br);
	pch = strtok (NULL, " ,.");
  }

Form1->TW->FullExpand();
}

void __fastcall TForm1::SpeedButton1Click(TObject *Sender)
{
insert_in_tree();

TTreeNode* rootNode;
TW->Items->Clear(); 
//make_tw(rootNode,tree.root);
make_tw(NULL,tree.root,0);
TW->FullExpand() ;
}
//---------------------------------------------------------------------------
void __stdcall make_tw(TTreeNode *rootNode,AVL::Node<simple> *nd,int pos) {
char bf[10];

try {
switch(pos) {
	case 0:
	sprintf(bf,"%d",nd->data.key);
	break;
	case 1:
		sprintf(bf,"R %d",nd->data.key);
	break;
	case -1:
		sprintf(bf,"L %d",nd->data.key);
	break;
}

}
catch(...) {

}


if (rootNode==NULL)
rootNode=Form1->TW->Items->Add(rootNode,bf );
else
	rootNode=Form1->TW->Items->AddChild(rootNode,bf );

	if(nd->left !=NULL) {
		//rootNode = rootNode->GetNext();
		make_tw(rootNode,nd->left,1);
	}
	if(nd->right !=NULL) {
			//rootNode = rootNode->GetNext();
			make_tw(rootNode,nd->right,-1);
	}


}

void __fastcall TForm1::SpeedButton6Click(TObject *Sender)
{
TTreeNode* rootNode;
TW->Items->Clear(); 
//make_tw(rootNode,tree.root);
make_tw(NULL,tree.root,0);
TW->FullExpand();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton3Click(TObject *Sender)
{
insert_in_t(atoi(Edit2->Text.c_str()));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton4Click(TObject *Sender)
{
remove_in_t(atoi(Edit2->Text.c_str()));
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormCreate(TObject *Sender)
{
Memo1->Lines->Clear();  	
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton7Click(TObject *Sender)
{
find_in_t(atoi(Edit2->Text.c_str()));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton5Click(TObject *Sender)
{
exit(0);	
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton2Click(TObject *Sender)
{
tree.root=NULL;
TW->Items->Clear();
Memo1->Lines->Clear() ;
}
//---------------------------------------------------------------------------


