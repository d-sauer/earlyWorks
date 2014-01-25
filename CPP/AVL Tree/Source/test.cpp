
#include "avltree.h"

#include <iostream>
using namespace std;

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

int main ()
{
    AVL::Tree<simple> tree;

  
        //const simple * vv = tree.find (v);
        tree.insert (10);
        tree.insert (5);
        tree.insert (15);
		printf("%d\n",tree.root->data);
		printf("%d\n",tree.find(5));  
	
        //tree.remove (v);

    return 0;
}

