using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PlayerController : MonoBehaviour {
    
    public int health;
    public int hunger;
    public int sleep;

    public int maxHealth;
    public int maxHunger;
    public int maxSleep;

    public float speed;
    public Inventory inventory;

    private Rigidbody _rb;
    private GameObject _currentGo;
    
	void Start () {
        _rb = GetComponent<Rigidbody>();
	}
	
	void Update () {
		
	}

    public void Move(Vector3 direction)
    {
        _rb.DOMove(transform.position + direction, Vector3.Distance(direction, transform.position) / speed);
    }

    public void GoTo(Vector3 position)
    {
        _rb.DOMove(position, Vector3.Distance(position, transform.position) / speed);
    }

    public void Build(BuildableObject bo)
    {
        if(inventory.Contain("wood") > bo.cost_wood && inventory.Contain("iron") > bo.cost_iron && inventory.Contain("stone") > bo.cost_stone)
        {
            inventory.Remove("wood", bo.cost_wood);
            inventory.Remove("iron", bo.cost_iron);
            inventory.Remove("stone", bo.cost_stone);

            Instantiate(bo);
        }
    }

    public void Repare()
    {
        var go = _currentGo.GetComponent<ObstacleScript>();
        if (go != null)
        {
            if (inventory.Contain("wood") > go.repair_wood && inventory.Contain("iron") > go.repair_iron && inventory.Contain("stone") > go.repair_stone)
            {
                inventory.Remove("wood", go.cost_wood);
                inventory.Remove("iron", go.cost_iron);
                inventory.Remove("stone", go.cost_stone);

                go.max_health = go.health;
            }
        }
    }

    public void Eat()
    {
        if(inventory.Contain("food") > 0)
        {
            inventory.Remove("food", 1);
        }
    }

    public void Harvest()
    {

    }

    void OnTriggerEnter(Collider col)
    {
        if(col.gameObject.tag == "Obstacle" || col.gameObject.tag == "Reparable")
        {
            _currentGo = col.gameObject;
        }
    }
}
