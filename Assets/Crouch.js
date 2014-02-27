#pragma strict

public var CrouchAmount = 0.5;

function Start () 
{

}

function Update () 
{
	if (Input.GetButtonDown("Crouch"))
	{
		this.transform.localScale += Vector3(0, -0.5, 0);
		this.transform.position.y -= CrouchAmount;
	}
	else if (Input.GetButtonUp("Crouch"))
	{
		this.transform.localScale += Vector3(0, 0.5, 0);
		this.transform.position.y += CrouchAmount;
	}
}