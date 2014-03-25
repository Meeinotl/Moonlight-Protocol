#pragma strict

public var CrouchAmount = 0.25;
static public var crouched = false;

function Start () 
{

}

function Update () 
{
	
	//if (Input.GetButtonDown("Crouch"))
	//{
		if (Input.GetButtonDown("Crouch") && !crouched)
		{
			this.transform.localScale -= Vector3(0, CrouchAmount, 0);
			this.transform.position.y -= CrouchAmount + CrouchAmount;
			crouched = true;
			//Debug.Log(crouched);
		}
		else if (Input.GetButtonDown("Crouch") && crouched)
		{
			this.transform.localScale += Vector3(0, CrouchAmount, 0);
			this.transform.position.y += CrouchAmount + CrouchAmount;
			crouched = false;
			//Debug.Log(crouched);
		}
	//}
}