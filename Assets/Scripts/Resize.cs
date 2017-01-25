using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

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
		float height = transform.GetChild (0).GetComponent<RectTransform> ().sizeDelta.y;

		float totalHeight = height;
		for (int i = 0; i <= target.transform.childCount - 1; i++) {
			totalHeight += target.transform.GetChild (i).GetComponent<RectTransform> ().sizeDelta.y;
		}
		return totalHeight;
	}

	void FitContent ()
	{
		VerticalLayoutGroup parent = GetComponentInParent<VerticalLayoutGroup> ();

		if (parent == null)
			return;
		
		float totalHeight = CalculateHeight ();
		lastHeight = totalHeight;

		GetComponent<RectTransform> ().DOKill (true);
		GetComponent<RectTransform> ().DOSizeDelta (new Vector2 (GetComponent<RectTransform> ().sizeDelta.x, totalHeight), .3f).SetEase (Ease.InOutBounce).OnUpdate (() => {
			parent.enabled = false;
			parent.enabled = true;
		});
	}
}
