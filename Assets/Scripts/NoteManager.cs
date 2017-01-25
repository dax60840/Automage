using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NoteManager : MonoBehaviour
{

	public static NoteManager Singleton;

	public bool isDragging = false;

	void Awake ()
	{
		if (NoteManager.Singleton == null) {
			NoteManager.Singleton = this;
		} else {
			Destroy (gameObject);
		}
	}
	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
