using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ResourceContainer : MonoBehaviour
{
    public List<Resource> resourcesRef;
    public float coolDown;
    
    private List<Resource> resources =new List<Resource>();
    private bool empty;
    private float timeStamp = 0;

    void Start()
    {
        empty = false;
        transform.DOScaleY(1, 0.5f).SetEase(Ease.InBounce);
        foreach (Resource r in resourcesRef)
        {
            resources.Add(new Resource(r));
        }
    }


    void Update()
    {
        if(empty && timeStamp <= Time.time)
        {
            Start();
        }
    }


    public List<Resource> ExtractResource()
    {
        if (resources.Count != 0)
        {
            List<Resource> extracted = new List<Resource>();

            foreach(Resource r in resources)
            {
                if(r.probability >= Random.Range(0.0f, 1f) && r.quantity > 0)
                {
                    Resource unit = new Resource(r);
                    unit.quantity = 1;
                    extracted.Add(unit);
                    r.quantity--;
                }
            }

            if(extracted.Count == 0 && !empty)
            {
                empty = true;
                timeStamp = Time.time + coolDown;
            }

            return extracted;
        }
        else
        {
            return null;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if(!empty)
            transform.DOScaleY(1, 0.5f).SetEase(Ease.InBounce);
    }
}