using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bush : MonoBehaviour {

    public int quantity;

    public bool Eat()
    {
        if (quantity > 0)
        {
            quantity--;
            return true;
        }
        else
        {
            return false;
        }
    }
}
