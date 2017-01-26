using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResourceContainer : MonoBehaviour
{
    public List<Resource> resourcesRef;
    
    private List<Resource> resources =new List<Resource>();

    void Start()
    {
        foreach(Resource r in resourcesRef)
        {
            resources.Add(new Resource(r));
        }
    }

    public List<Resource> ExtractResource()
    {
        if (resources.Count != 0)
        {
            List<Resource> extracted = new List<Resource>();

            foreach(Resource r in resources)
            {
                Debug.Log(r.name +" " + r.quantity);
                if(r.probability >= Random.Range(0.0f, 1f) && r.quantity > 0)
                {
                    Resource unit = new Resource(r);
                    unit.quantity = 1;
                    extracted.Add(unit);
                    r.quantity--;
                }
            }

            return extracted;
        }
        else
        {
            return null;
        }
    }
}