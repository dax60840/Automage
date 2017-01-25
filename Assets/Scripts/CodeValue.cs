using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CodeValue : MonoBehaviour
{
    private string Value;

    public string value
    {
        get
        {
            if (getText)
                Value = GetComponent<Text>().text;

            return Value;
        }
        set
        {
            Value = value;
        }
    }

    public bool getText;
	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
