using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyBehavior : MonoBehaviour {

    public int health;
    public int attack;
    public int coolDown;
    public int pathCheckInterval;

    private NavMeshAgent _navmeshagent;
    private TargetScript _navmeshTarget;
    private GameObject _attackTarget;
    private ObstacleScript _obstacleTarget;
    private Rigidbody _rb;

    private bool _leaving;
    private bool _attacking;

    private float _timeStampAttack = 0;
    private float _timeStampPathCheck;

    // Use this for initialization
    void Start () {
        _leaving = false;
        _attacking = false;

        _navmeshTarget = GetComponent<TargetScript>(); //pour specifier la destination
        _navmeshagent = _navmeshTarget.GetComponent<NavMeshAgent>(); //pour stopper ou reprendre la navigation

        _rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (_timeStampPathCheck <= Time.time)
        {
            _navmeshagent.Stop();
            PathCheck();
            _navmeshagent.Resume();
            _timeStampPathCheck = Time.time + pathCheckInterval;
        }

        if(!_attacking && _rb.velocity.magnitude <= 2f && _navmeshTarget.m_target != null)
        {
            RaycastHit hit = new RaycastHit();

            if(Physics.Raycast(transform.position, _navmeshTarget.m_target.position - transform.position, out hit, 2f))
            {
                if (hit.collider.gameObject.tag == "Obstacle")
                {
                    _navmeshagent.Stop();
                    _attackTarget = hit.collider.gameObject;
                }
            }
        }
        
        if (_attackTarget != null && _timeStampAttack <= Time.time)
        {
            Attack();
        }

    }

    bool PathCheck() //retourne vrai si le chemin est libre, faux si il est bloqué
    {
        if (_navmeshTarget.m_target != null)
        {
            NavMeshPath path = new NavMeshPath();
            _navmeshagent.CalculatePath(_navmeshTarget.m_target.position, path);

            if (path.status != NavMeshPathStatus.PathComplete)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        else
        {
            _navmeshTarget.m_target = FindClosestGameObjectByTag("Food").transform;
            return PathCheck();
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.transform.tag == "Food")
        {
            Destroy(col.gameObject);
            _navmeshTarget.m_target = FindClosestGameObjectByTag("Food").transform;
        }

        if(col.transform.tag == "Exit" && _leaving)
        {
            Destroy(gameObject);
        }
    }

    void Attack()
    {
        if (_obstacleTarget == null)
        {
            _obstacleTarget = _attackTarget.GetComponent<ObstacleScript>();
        }

        _attacking = true;
        if(_obstacleTarget.Damage(attack) <= 0)
        {
            _attacking = false;
        }


        _timeStampAttack = Time.time + coolDown;
        
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

        if (closest != null)
        {
            return closest;
        }
        else
        {
            _leaving = true;
            return FindClosestGameObjectByTag("Exit");
        }
    }
}
