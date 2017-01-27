using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class TutoManager : MonoBehaviour
{
	public string[] texts;

	public int index = 0;
	public Text txt;

	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		
	}

	public void Next ()
	{
		index++;

		if (index >= texts.Length - 1) {
			index = texts.Length - 1;
		}

		txt.DOKill (true);
		txt.DOText (texts [index], .2f);
	}

	public void Prev ()
	{
		index--;

		if (index <= 0) {
			index = 0;
		}

		txt.DOKill (true);
		txt.DOText (texts [index], .2f);
	}
}
