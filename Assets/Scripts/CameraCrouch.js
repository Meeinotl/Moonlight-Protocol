#pragma strict

public var CrouchAmount = 0.25;
private var crouched = false;

function Start () 
{

}

function Update () 
{
	/*
	if (Input.GetButtonDown("Crouch"))
	{
		this.transform.position.y -= CrouchAmount;
	}
	else if (Input.GetButtonUp("Crouch"))
	{
		this.transform.position.y += CrouchAmount;
	}*/
	
	if (Input.GetButtonDown("Crouch"))
	{
		if (!crouched)
		{
			this.transform.position.y -= CrouchAmount * 2;
			crouched = true;
		}
		else
		{
			this.transform.position.y += CrouchAmount * 2;
			crouched = false;
		}
	}
}