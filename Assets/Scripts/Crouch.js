#pragma strict

public var CrouchAmount = 0.25;
private var crouched = false;

function Start () 
{

}

function Update () 
{
	if (Input.GetButtonDown("Crouch"))
	{
		if (!crouched)
		{
			this.transform.localScale -= Vector3(0, CrouchAmount, 0);
			this.transform.position.y -= CrouchAmount + CrouchAmount;
			crouched = true;
		}
		else
		{
			this.transform.localScale += Vector3(0, CrouchAmount, 0);
			this.transform.position.y += CrouchAmount + CrouchAmount;
			crouched = false;
		}
	}
}