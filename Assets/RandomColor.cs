using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RandomColor : MonoBehaviour
{
	public Color[] colors;
	// Use this for initialization
	void Start ()
	{
		GetComponent<Image> ().color = colors [Random.Range (0, colors.Length)];
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
