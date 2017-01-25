using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PlayerController : MonoBehaviour
{

    public int maxHealth;
    public int maxHunger;
    public int maxSleep;

    public int Health
    {
        get { return _health; }
        set
        {
            if (value < maxHealth)
                _health = value;
            else
                _health = maxHealth;
        }
    }

    public int Hunger
    {
        get { return _hunger; }
        set
        {
            if (value < maxHunger)
                _hunger = value;
            else
                _hunger = maxHunger;
        }
    }

    public int Sleep
    {
        get { return _sleep; }
        set
        {
            if (value < maxSleep)
                _sleep = value;
            else
                _sleep = maxSleep;
        }
    }

    private int _health;
    private int _hunger;
    private int _sleep;


    public float speed;
    public Inventory inventory;

    private Rigidbody _rb;
    private GameObject _currentGo;

    void Start()
    {
        _rb = GetComponent<Rigidbody>();
    }

    void Update()
    {

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
        if (inventory.Contain("wood") > bo.cost_wood && inventory.Contain("iron") > bo.cost_iron && inventory.Contain("stone") > bo.cost_stone)
        {
            inventory.Remove("wood", bo.cost_wood);
            inventory.Remove("iron", bo.cost_iron);
            inventory.Remove("stone", bo.cost_stone);

            Instantiate(bo);
        }
    }

    public void Repare()
    {
        var go = _currentGo.GetComponent<BuildableObject>();
        if (go != null)
        {
            if (inventory.Contain("wood") > go.repair_wood && inventory.Contain("iron") > go.repair_iron && inventory.Contain("stone") > go.repair_stone)
            {
                inventory.Remove("wood", go.cost_wood);
                inventory.Remove("iron", go.cost_iron);
                inventory.Remove("stone", go.cost_stone);

                go.health = go.max_health;
            }
        }
    }

    public void Eat(int quantity)
    {
        if (inventory.Contain("food") > quantity)
        {
            Hunger += quantity;
            inventory.Remove("food", quantity);
        }
    }

    public void Harvest()
    {
        if (_currentGo.tag == "Food")
        {
            inventory.Add("food", 1);
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Obstacle" || col.gameObject.tag == "Reparable" || col.gameObject.tag == "Food")
        {
            _currentGo = col.gameObject;
        }
    }
}
