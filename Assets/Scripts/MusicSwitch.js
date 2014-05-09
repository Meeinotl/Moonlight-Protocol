#pragma strict

public var elevator : AudioClip;
public var job : AudioClip;

private var elev = true;

function Start () 
{
	audio.clip = elevator;
	audio.Play();
	audio.volume = 0.5;
}

function Update () 
{
	if (!GameObject.Find("FlagBearer").GetComponent(Flag).tutorial && elev)
	{
		audio.clip = job;
		audio.Play();
		audio.volume = 1.0;
		elev = false;
	}
}