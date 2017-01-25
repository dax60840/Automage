using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.AI;

public class PlayerController : MonoBehaviour
{
    
    public int maxHunger;

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
    
    public float speed;
    public Inventory inventory;

    private int _hunger;
    private NavMeshAgent _navmeshagent;
    private TargetScript _navmeshTarget;
    private Rigidbody _rb;
    private GameObject _currentGo;

    void Start()
    {
        inventory = new Inventory();
        _navmeshTarget = GetComponent<TargetScript>(); //pour specifier la destination
        _navmeshagent = _navmeshTarget.GetComponent<NavMeshAgent>(); //pour stopper ou reprendre la navigation

        _rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (Input.GetAxisRaw("Horizontal") != 0 || Input.GetAxisRaw("Vertical") != 0)
        {
            Move(new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical")));
        }
    }

    public void Move(Vector3 direction)
    {
        _navmeshagent.SetDestination(RoundVector(transform.position + direction));
    }

    Vector3 RoundVector(Vector3 vec)
    {
        return new Vector3(Mathf.RoundToInt(vec.x), Mathf.RoundToInt(vec.y), Mathf.RoundToInt(vec.z) );
    }

    public void GoTo(Vector3 position)
    {
        _navmeshagent.SetDestination(position);
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
        Debug.Log(inventory.Contain("food"));
        if (inventory.Contain("food") >= quantity)
        {
            Hunger += quantity;
            inventory.Remove("food", quantity);
            Debug.Log("miam");
        }
    }

    public void Harvest()
    {
        if (_currentGo != null && _currentGo.tag == "Food")
        {
            if (_currentGo.GetComponent<Bush>().Eat())
            {
                Debug.Log("harvest");
                inventory.Add("food", 1);
            }
            
            else
            {
                Destroy(_currentGo.gameObject);
            }
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
