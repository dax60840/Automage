using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class TabManager : MonoBehaviour
{
	public GameObject Reference;
	// Use this for initialization
	void Start ()
	{
//		for (int i = 0; i <= 12; i++) {
//			AddTab ();
//		}
	}

	void AddTab ()
	{
		GameObject obj = Instantiate (Reference, transform.position, Quaternion.Euler (0, 0, -87f), transform) as GameObject;
		obj.transform.position += obj.transform.right * transform.childCount * Screen.height * .06f;
		obj.transform.localScale = Vector3.one * .6f;
		obj.GetComponent<Tab> ().order = obj.transform.GetSiblingIndex ();
	}

	// Update is called once per frame
	void Update ()
	{
		
	}
}
