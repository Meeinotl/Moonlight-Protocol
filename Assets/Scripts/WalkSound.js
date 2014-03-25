#pragma strict

function Start () 
{
}

function Update () 
{
	
	if ((Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0) && !audio.isPlaying)
	{
		audio.Play();
	}
	
	if (Input.GetAxis("Horizontal") == 0 && Input.GetAxis("Vertical") == 0)
	{
		audio.Stop();
	}
}