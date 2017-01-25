using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class TargetScript : MonoBehaviour
{
    public Transform m_target;
    NavMeshAgent m_agent;

    void Start()
    {
        m_target = null;
        m_agent = GetComponent<NavMeshAgent>();
    }

    void Update()
    {
        if (m_agent.pathPending || m_agent.remainingDistance > 2f)
            return;

        if(m_target != null)
            m_agent.SetDestination(m_target.position);
    }
}

