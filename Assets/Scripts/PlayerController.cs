using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.AI;
using UnityEngine.UI;

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
    public List<TagValue> tagList;
    public Object cs;
    public Jurassic.Library.FunctionInstance callback;
    public AudioManager audioManager;

    private int _hunger;
    private NavMeshAgent _navmeshagent;
    private TargetScript _navmeshTarget;
    private Rigidbody _rb;
    private GameObject _currentGo;
    private Text waitForClick;


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

        if (waitForClick != null && Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100))
            {
                var tag = hit.transform.gameObject.tag;
                foreach(TagValue t in tagList)
                {
                    if(t.tag == tag)
                    {
                        waitForClick.text = t.title;
                        waitForClick.GetComponent<CodeValue>().value = tag;
                    }
                }
                waitForClick = null;
            }
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

    public void GoToObjectWithTag(string tag, CodeSerializer code, Jurassic.Library.FunctionInstance func)
    {
        GameObject go = FindClosestGameObjectByTag(tag);
        if (go != null) {
            Debug.Log(func.ToStringJS());

            cs = code;
            callback = func;
            _navmeshagent.SetDestination(RoundVector(go.transform.position));
        }
    }

    public void ClickGameObject(Text t)
    {
        waitForClick = t;
    }

    public void Build(string prefabName)
    {
        if (_currentGo == null)
        {
            BuildableObject bo = Resources.Load<GameObject>(prefabName).GetComponent<BuildableObject>();
            if (inventory.Contain("wood") >= bo.cost_wood && inventory.Contain("iron") >= bo.cost_iron && inventory.Contain("stone") >= bo.cost_stone)
            {
                inventory.Remove("wood", bo.cost_wood);
                inventory.Remove("iron", bo.cost_iron);
                inventory.Remove("stone", bo.cost_stone);

                Instantiate(bo, RoundVector(transform.position), Quaternion.identity);
                audioManager.PlayCraftSFX();
            }
            else
            {
                Debug.Log("Pas assez de ressources");
            }
        }else
        {
            Debug.Log("Construction impossible - espace occupé");
        }
    }

    public void Repare()
    {
        ObstacleScript go = null;

        if (_currentGo != null)
            go = _currentGo.GetComponent<ObstacleScript>();

        if (go != null)
        {
            if (inventory.Contain("wood") >= go.repair_wood && inventory.Contain("iron") >= go.repair_iron && inventory.Contain("stone") >= go.repair_stone)
            {
                inventory.Remove("wood", go.cost_wood);
                inventory.Remove("iron", go.cost_iron);
                inventory.Remove("stone", go.cost_stone);

                go.health = go.max_health;
                Debug.Log("Réparé !");
            }
        }else
        {
            Debug.Log("Rien à réparer");
        }
    }

    public void Eat(int quantity)
    {
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

    void OnTriggerExit(Collider col)
    {

        if(_currentGo == col.gameObject)
        {
            _currentGo = null;
        }
    }




    GameObject FindClosestGameObjectByTag(string tag)
    {
        GameObject[] gos;
        gos = GameObject.FindGameObjectsWithTag(tag);
        GameObject closest = null;
        float distance = Mathf.Infinity;
        Vector3 position = transform.position;
        foreach (GameObject go in gos)
        {
            Vector3 diff = go.transform.position - position;
            float curDistance = diff.sqrMagnitude;
            if (curDistance < distance)
            {
                closest = go;
                distance = curDistance;
            }
        }
        return closest;
    }
}
