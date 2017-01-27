using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory {

    Dictionary<string, int> inventory = new Dictionary<string, int>();

    Text food;
    Text seed;
    Text wood;
    Text stone;
    Text iron;

    public Inventory(Text f, Text s, Text w, Text st, Text i)
    {
        food = f;
        seed = s;
        wood = w;
        stone = st;
        iron = i;
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

        UpdateUI();
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
        UpdateUI();
    }

    void UpdateUI()
    {
        /*
        food.text = "" + inventory["food"].ToString("000");
        //seed.text = "" + inventory["seed0"].ToString("000");
        wood.text = "" + inventory["wood"].ToString("000");
        stone.text = "" + inventory["stone"].ToString("000");
        iron.text = "" + inventory["iron"].ToString("000");*/
    }
}
