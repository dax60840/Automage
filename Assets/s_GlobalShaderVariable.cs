using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[ExecuteInEditMode]
public class s_GlobalShaderVariable : MonoBehaviour {

	public bool setColor = true;
	public Color CycleColor;
	// Use this for initialization
	void Start () {
		Shader.SetGlobalColor ("_CycleColor", CycleColor);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
