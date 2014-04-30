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
			transform.localScale -= Vector3(0, CrouchAmount, 0);
			transform.position.y -= CrouchAmount + CrouchAmount;
			GetComponent(CapsuleCollider).height -= CrouchAmount;
			GetComponent(CapsuleCollider).center.y -= CrouchAmount / 2;
			crouched = true;
			Debug.Log(GetComponent(CapsuleCollider).height);
			//Debug.Log("crouched");
		}
		else if (Input.GetButtonDown("Crouch") && crouched)
		{
			transform.localScale += Vector3(0, CrouchAmount, 0);
			transform.position.y += CrouchAmount + CrouchAmount;
			GetComponent(CapsuleCollider).height += CrouchAmount;
			GetComponent(CapsuleCollider).center.y += CrouchAmount / 2;
			crouched = false;
			//Debug.Log("not crouched");
		}
	//}
}