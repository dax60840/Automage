using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.AI;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
{
    
    public int maxHunger;

    [Tweakable]
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
    public List<BuildValue> buildList;
    public Object cs;
    public Jurassic.Library.FunctionInstance callback;
    public List<FieldValue> tweakableValues;

    public Text food;
    public Text seed;
    public Text wood;
    public Text stone;
    public Text iron;

    private TimeManager _time;
    private int _hunger;
    private NavMeshAgent _navmeshagent;
    private TargetScript _navmeshTarget;
    private Rigidbody _rb;
    private GameObject _currentGo;
    private Text waitForClick;
    private AudioManager _audioManager;
    private bool _walking;
    private Animator _anim;


    void Awake()
    {
        inventory = new Inventory(food, seed, wood, stone, iron);
        _time = FindObjectOfType<TimeManager>();
        _anim = GetComponentInChildren<Animator>();
        _audioManager = FindObjectOfType<AudioManager>();
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

        //footstep volume
        if(_navmeshagent.velocity.magnitude > 0.1f && !_walking)
        {
            _audioManager.walkingAgent = _navmeshagent;
            _walking = true;
            _anim.SetBool("Walking", true);
            _audioManager.PlayFootStep();
        }else if(_navmeshagent.velocity.magnitude < 0.5f && _walking)
        {
            _walking = false;
            _anim.SetBool("Walking", false);
            _audioManager.Stop();
            _audioManager.walkingAgent = null;
        }

        _anim.SetFloat("Speed", _navmeshagent.velocity.magnitude / (_navmeshagent.speed * 0.5f));
    }

    public void Move(Vector3 direction)
    {
        _navmeshagent.SetDestination(RoundVector(transform.position + direction));
    }

    Vector3 RoundVector(Vector3 vec, bool ignoreY = false)
    {
        if(ignoreY)
            return new Vector3(Mathf.RoundToInt(vec.x), vec.y, Mathf.RoundToInt(vec.z) );
        else
            return new Vector3(Mathf.RoundToInt(vec.x), Mathf.RoundToInt(vec.y), Mathf.RoundToInt(vec.z));
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

    public void Build(string objectName)
    {
        string prefabName = "";

        foreach(BuildValue bv in buildList)
        {
            if(bv.objectName == objectName)
            {
                prefabName = bv.prefabName;
                break;
            }
        }

        Debug.Log(objectName);

        if (_currentGo == null)
        {
            BuildableObject bo = Resources.Load<GameObject>(prefabName).GetComponent<BuildableObject>();
            if (inventory.Contain("wood") >= bo.cost_wood && inventory.Contain("iron") >= bo.cost_iron && inventory.Contain("stone") >= bo.cost_stone)
            {
                inventory.Remove("wood", bo.cost_wood);
                inventory.Remove("iron", bo.cost_iron);
                inventory.Remove("stone", bo.cost_stone);

                var go = Instantiate(bo, RoundVector(transform.position), Quaternion.identity);

                var obstacle = go.GetComponent<NavMeshObstacle>();

                if (obstacle != null && !_time.day)
                {
                    obstacle.enabled = true;
                }

                _audioManager.PlayCraftSFX();
                _anim.SetTrigger("Build");
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

    public void Plant()
    {
        if(_currentGo == null)
        {
            if (inventory.Contain("seed") > 0)
            {
                inventory.Remove("seed", 1);

                GameObject seed = (GameObject)Resources.Load("Bush_Little");
                if (seed != null)
                {
                    Vector3 pos = new Vector3(transform.position.x, 0.5f, transform.position.z);
                    Instantiate(seed, RoundVector(pos, true), Quaternion.identity);
                    _audioManager.PlayCraftSFX();
                    _anim.SetTrigger("Build");
                }else
                {
                    Debug.Log("Resources/Bush_Little introuvable");
                }
            }else
            {
                Debug.Log("Pas assez de graines");
            }
        
        }
        else
        {
            Debug.Log("Opération impossible - espace occupé");
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
                _anim.SetTrigger("Build");
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
            _audioManager.Play("player_eat");
        }
    }

    public void Harvest()
    {
        if (_currentGo != null && (_currentGo.tag == "Resource" || _currentGo.tag == "Food"))
        {
            if (_currentGo.GetComponent<ResourceContainer>())
            {

                List<Resource> extracted = _currentGo.GetComponent<ResourceContainer>().ExtractResource();

                if (extracted.Count > 0)
                {
                    foreach (Resource r in extracted)
                    {
                        inventory.Add(r.name, r.quantity);
                    }

                    _audioManager.Play("player_pickup");
                    _anim.SetTrigger("Recup");
                }
                else
                {
                    if(_currentGo.tag == "Food")
                        Destroy(_currentGo.gameObject);
                }
            }
        }
    }

    void OnTriggerEnter(Collider col)
    {

        if (col.gameObject.tag == "Obstacle" || col.gameObject.tag == "Reparable" || col.gameObject.tag == "Food" || col.gameObject.tag == "Resource")
        {
            _currentGo = col.gameObject;
            _currentGo.transform.DOScaleY(0.2f, 0.5f).SetEase(Ease.InBounce);
        }
    }

    void OnTriggerExit(Collider col)
    {

        if(_currentGo == col.gameObject)
        {
            _currentGo.transform.DOScaleY(1, 0.5f).SetEase(Ease.InBounce);
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
