using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Resource : MonoBehaviour {

    public string name;
    public int quantity;
    public float probability;

    public Resource(Resource r)
    {
        name = r.name;
        quantity = r.quantity;
        probability = r.probability;
    }
}
