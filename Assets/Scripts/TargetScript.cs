using UnityEngine;
using UnityEngine.AI;

[RequireComponent (typeof(NavMeshAgent))]
public class TargetScript : MonoBehaviour
{
	public Transform m_target;
	NavMeshAgent m_agent;
	public bool finish;
	private PlayerController _pc;

	void Start ()
	{
		m_target = null;
		m_agent = GetComponent<NavMeshAgent> ();
		_pc = GetComponent<PlayerController> ();
	}

	void Update ()
	{
		if (m_agent.pathPending || m_agent.remainingDistance > 2f) {
			return;
		}

		if (_pc.callback != null && _pc.cs != null && m_agent.remainingDistance < .2f) {
			Jurassic.Library.FunctionInstance func = _pc.callback;
			Object csTemp = _pc.cs;

			_pc.callback = null;
			_pc.cs = null;
            
			func.Call (_pc.cs, new object[0]);
		}

		if (m_target != null) {
			finish = false;
			m_agent.SetDestination (m_target.position);
		}
	}
}

