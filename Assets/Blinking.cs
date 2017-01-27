using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class Blinking : MonoBehaviour
{

	// Use this for initialization
	void Start ()
	{
		Loop ();
	}

	void Loop ()
	{
		GetComponent<Text> ().DOFade (.3f, .3f).SetEase (Ease.InOutBounce).OnComplete (() => {
			GetComponent<Text> ().DOFade (1f, .3f).SetEase (Ease.InOutBounce).OnComplete (() => Loop ());
		});
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}
}
