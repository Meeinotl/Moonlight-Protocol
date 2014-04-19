#pragma strict

var up = true;

function Start () 
{
	
}

function Update () 
{
	if(transform.position.y > 5)
	{
		up = false;
	}
	else if(transform.position.y < 0)
	{
		up = true;
	}
	
	if (up)
	{
		transform.position.y += .005;
	}
	else
	{
		transform.position.y -= .005;
	}
}