using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory {

    Dictionary<string, int> inventory = new Dictionary<string, int>();

    void OnCollisionEnter(Collision col)
    {
        if (col.transform.tag == "stuff" && !inventory.ContainsKey(col.transform.name))
        {
            //ajouter à l'inventaire
        }
    }

    public int Contain(string item)
    {
        if (inventory.ContainsKey(item))
            return inventory[item];
        else
            return 0;
    }

    public void Add(string item, int quantity)
    {
        if (quantity > 0)
        {
            if (!inventory.ContainsKey(item))
            {
                inventory.Add(item, quantity);
            }
            else
            {
                inventory[item] += quantity;
            }
        }
    }

    public void Remove(string item, int quantity)
    {
        if (quantity > 0)
        {
            if (inventory.ContainsKey(item))
            {
                inventory[item] -= quantity;

                if(inventory[item] <= 0)
                {
                    inventory.Remove(item);
                }
            }
        }
    }
}
