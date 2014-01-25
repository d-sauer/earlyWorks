#include <iostream>

namespace AVL {

template <class T>
class Node
{
public :
    const T data;

public :
    Node<T> * left, * right;
    int height;

    void compute_height () {
        height = 0;
        if (left != NULL && left -> height > height)
            height = left -> height;
        if (right != NULL && right -> height > height)
            height = right -> height;
        height += 1;
    }

    Node (const T & inData) : data (inData), left (NULL), right (NULL), height (1)
    {
    }

    ~Node () {
        delete left;
        delete right;
    }

    Node<T> * insert_node (const T & inData) {
        if (this == NULL)
            return new Node<T> (inData);

        if (inData < data)
            left = left -> insert_node (inData);
        else
            right = right -> insert_node (inData);
        return balance ();
    }

    const Node<T> * find_node (const T & inData) const {
        if (this == NULL)
            return NULL;

        if (inData == data)
            return this;

        if (inData < data)
            return left -> find_node (inData);
        else
            return right -> find_node (inData);
    }

    Node<T> * remove_node (const T & inData)  {
        if (this == NULL)
            return NULL;

        if (inData == data)
        {
            Node<T> * tmp = left -> move_down_righthand_side (right);

            left = NULL;
            right = NULL;
            delete this;

            return tmp;
        }

        if (inData < data)
            left = left -> remove_node (inData);
        else
            right = right -> remove_node (inData);
        return balance ();
    }


    Node<T> * move_down_righthand_side (Node<T> * rhs) {
        if (this == NULL)
            return rhs;
        right = right -> move_down_righthand_side (rhs);
        return balance ();
    }

    Node<T> * balance ()  {
        int d = difference_in_height ();

        if (d < -1 || d > 1)  {
            if (d < 0) {
                if (right -> difference_in_height () > 0)
                    right = right -> rotate_right ();
                return rotate_left ();
            }
            else {
                if (left -> difference_in_height () < 0)
                    left = left -> rotate_left ();
                return rotate_right ();
            }
        }
        compute_height ();
        return this;
    }

    Node<T> * exchange_left (Node<T> * & r, Node<T> * node) {
        r = left;
        left = node -> balance ();
        return balance ();
    }

    Node<T> * exchange_right (Node<T> * & l, Node<T> * node) {
        l = right;
        right = node -> balance ();
        return balance ();
    }

    int difference_in_height () {
        int left_height = (left != NULL) ? left -> height : 0;
        int right_height = (right != NULL) ? right -> height : 0;
        return left_height - right_height;
    }

    Node<T> * rotate_left () {
		return right -> exchange_left (right, this);
    }

    Node<T> * rotate_right () {
        return left -> exchange_right (left, this);
    }

};

template <class T>
class Tree
{
public :

    Node<T> * root;

public :

    Tree () {
        root = NULL;
    }

    ~Tree () {
        delete root;
    }

    void insert (const T & inData) {
        root = root -> insert_node (inData);
    }

    const T * find (const T & inData) const {
        const Node<T> * found = root -> find_node (inData);
        if (found != NULL)
            return & found -> data;
        else
            return NULL;
    }

    void remove (const T & inData) {
        root = root -> remove_node (inData);
    }

    void print (std::ostream & co) const {
        root -> print_node (co);
    }

};

template <class T>
std::ostream & operator << (std::ostream & co, const Tree<T> & tree) {
    tree.print (co);
    return co;
}



}

