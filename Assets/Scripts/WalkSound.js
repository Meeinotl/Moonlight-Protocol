#pragma strict

function Start () 
{
}

function Update () 
{
	if ((Input.GetButtonDown("Horizontal") || Input.GetButtonDown("Vertical")) && !audio.isPlaying)
	{
		audio.Play();
		//Debug.Log("go");
		//audio.loop = true;
	}
	
	if ((Input.GetButtonUp("Horizontal") && !Input.GetButtonDown("Vertical")) || 
		(Input.GetButtonUp("Vertical") && !Input.GetButtonDown("Horizontal")))
	{
		audio.Stop();
		//Debug.Log("stop!");
		//audio.loop = false;
	}
}