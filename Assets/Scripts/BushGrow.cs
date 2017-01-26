using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class BushGrow : MonoBehaviour {

    public float growTime;

	// Use this for initialization
	void Start () {
        transform.DOScaleY(1, growTime).OnComplete(
            () =>
            {
                GameObject bush = (GameObject)Resources.Load("SM_Buisson");
                if (bush != null)
                    Instantiate(bush, RoundVector(transform.position, true), Quaternion.identity);

                Destroy(this.gameObject);
            });
	}

    Vector3 RoundVector(Vector3 vec, bool ignoreY = false)
    {
        if (ignoreY)
            return new Vector3(Mathf.RoundToInt(vec.x), vec.y, Mathf.RoundToInt(vec.z));
        else
            return new Vector3(Mathf.RoundToInt(vec.x), Mathf.RoundToInt(vec.y), Mathf.RoundToInt(vec.z));
    }
}
