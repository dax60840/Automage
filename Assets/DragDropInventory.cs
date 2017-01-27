using System.Collections;
using System.Collections.Generic;
using UnityEngine.EventSystems;
using UnityEngine;

public class DragDropInventory : MonoBehaviour, IDragHandler, IBeginDragHandler
{
    public float minX;
    public float maxX;

    protected Vector2 offset;
    protected float velocity;
    protected Vector2 lastPos;
    private bool max = false;
    private bool min = false;

    virtual public void OnDrag(PointerEventData eventData)
    {
        /*
        Vector2 newPos = new Vector3(eventData.position.x + offset.x, GetComponent<RectTransform>().position.y, 0);
        if (newPos.x < maxX && newPos.x > minX)
            GetComponent<RectTransform>().position = newPos;*/

    }

    virtual public void OnBeginDrag(PointerEventData eventData)
    {

        Vector2 pos = new Vector2(GetComponent<RectTransform>().position.x, GetComponent<RectTransform>().position.y);
        velocity = pos.x - lastPos.x;
        lastPos = pos;
        offset = (pos - eventData.position);
    }

    
    virtual protected void Update()
    {
        Vector3 newPos = new Vector3(velocity, 0, 0) * Time.deltaTime;
        if (GetComponent<RectTransform>().position.x + newPos.x < maxX && GetComponent<RectTransform>().position.x + newPos.x > minX)
        {
            GetComponent<RectTransform>().position += newPos;
            velocity *= 0.9995f;
        }else
        {
            velocity = 0f;
        }

    }
}
