#pragma strict

function Start () 
{

}

function Update () 
{
	if (Input.GetAxis("Fire1") > 0)
	{
		this.rigidbody.AddRelativeForce(0, 10, 0);
	}
}