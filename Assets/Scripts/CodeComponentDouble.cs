using System.Collections;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class CodeComponentDouble : CodeComponent
{
	override protected void Retract ()
	{
		transform.GetChild (1).GetComponent<RectTransform> ().DOKill (true);
		transform.GetChild (1).GetComponent<RectTransform> ().DOPunchScale (Vector3.one * .5f, .3f, 3);
		transform.GetChild (1).GetComponent<RectTransform> ().DOSizeDelta (smallSize, .2f).SetDelay (.1f).SetEase (Ease.OutExpo);
		foreach (GameObject GO in extend) {
			GO.transform.DOKill (true);
			GO.transform.DOScaleX (0, .1f).SetEase (Ease.OutExpo);
		}
	}

	override protected void Extend ()
	{
		transform.GetChild (1).GetComponent<RectTransform> ().DOKill (true);
		transform.GetChild (1).GetComponent<RectTransform> ().DOPunchScale (Vector3.one * .6f, .2f, 3);
		transform.GetChild (1).GetComponent<RectTransform> ().DOSizeDelta (bigSize, .3f).SetEase (Ease.InExpo);
		foreach (GameObject GO in extend) {
			GO.transform.DOKill (true);
			GO.transform.DOScaleX (1, .2f).SetDelay (.3f).SetEase (Ease.OutExpo);
		}
	}
}
