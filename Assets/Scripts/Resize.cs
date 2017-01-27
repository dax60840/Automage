using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using DG.Tweening;

// force
public class Resize : MonoBehaviour
{
	public Transform target;

	private float lastHeight;
	// Use this for initialization
	void Start ()
	{
		FitContent ();
	}
	
	// Update is called once per frame
	void Update ()
	{
		if (CalculateHeight () != lastHeight)
			FitContent ();
	}

	float CalculateHeight ()
	{
//		float height = transform.GetChild (0).GetComponent<RectTransform> ().sizeDelta.y;
		float height = GetComponent<CodeComponent> ().bigSize.y;

		float totalHeight = height;


		for (int i = 0; i <= target.transform.childCount - 1; i++) {
			totalHeight += target.transform.GetChild (i).GetComponent<RectTransform> ().sizeDelta.y;
		}
//		if (target.transform.localScale.x == 0) {
//			totalHeight = 110;
//		}
		return totalHeight;
	}

	void FitContent ()
	{
		VerticalLayoutGroup parent = GetComponentInParent<VerticalLayoutGroup> ();


		
		float totalHeight = CalculateHeight ();

		lastHeight = totalHeight;
		GetComponent<RectTransform> ().DOKill (true);

		GetComponent<RectTransform> ().DOSizeDelta (new Vector2 (GetComponent<RectTransform> ().sizeDelta.x, totalHeight), .3f).SetEase (Ease.InOutBounce).OnUpdate (() => {
			if (parent != null) {
				parent.enabled = false;
				parent.enabled = true;
			}
		});


		
	}
}
