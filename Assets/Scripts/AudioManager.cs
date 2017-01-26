using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour {

    public List<AudioClip> SFXClips = new List<AudioClip>();

    private List<AudioClip> _craftSFX = new List<AudioClip>();
    private List<AudioClip> _birdSFX = new List<AudioClip>();



    private AudioSource _as;

    void Start()
    {
        _as = GetComponent<AudioSource>();

        foreach(AudioClip ac in SFXClips)
        {
            if (ac.name.Contains("craft"))
            {
                _craftSFX.Add(ac);
            }

            if (ac.name.Contains("bird"))
            {
                _birdSFX.Add(ac);
            }
        }
    }

    public void PlayCraftSFX()
    {
        PlayRandom(_craftSFX);
    }

    public void PlayVoiceSFX()
    {
        PlayRandom(_birdSFX);
    }

    public void PlayRandom(List<AudioClip> list)
    {
        _as.PlayOneShot(list[Random.Range(0, list.Count)]);
    }

    public void Play(string fileName)
    {
        for(int i = 0; i < SFXClips.Count - 1; i++)
        {
            if(SFXClips[i].name == fileName)
            {
                _as.PlayOneShot(SFXClips[i]);
                return;
            }
        }
    }
}
