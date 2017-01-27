using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class SpawnBloc : MonoBehaviour
{

    public GameObject prefab;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Spawn()
    {
        //Debug.Log("order")
        GameObject caca = Instantiate(prefab, Vector3.zero, Quaternion.identity, TabManager.Singleton.tabs[TabManager.Singleton.index].script.transform) as GameObject;
        caca.transform.localScale = Vector3.one *.5f;
    }
}
