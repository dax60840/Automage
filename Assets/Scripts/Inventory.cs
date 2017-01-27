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
        if(inventory.ContainsKey("food"))
            food.text = "" + inventory["food"].ToString("000");
        else
        {
            food.text = "000";
        }

        if (inventory.ContainsKey("seed"))
            seed.text = "" + inventory["seed"].ToString("000");
        else
        {
            seed.text = "000";
        }

        if (inventory.ContainsKey("wood"))
            wood.text = "" + inventory["wood"].ToString("000");
        else
        {
            wood.text = "000";
        }

        if (inventory.ContainsKey("stone"))
            stone.text = "" + inventory["stone"].ToString("000");
        else
        {
            stone.text = "000";
        }

        if (inventory.ContainsKey("iron"))
            iron.text = "" + inventory["iron"].ToString("000");
        else
        {
            iron.text = "000";
        }
    }
}
