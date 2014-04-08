#pragma strict

public static var Damage = 1;

function Start () 
{

}

function Update () 
{

}
	
static function Fire(bullet : GameObject, flash : GameObject, pos : Vector3, rot : Quaternion)
{
	var bulletClone : GameObject;
	var flashClone : GameObject;
	var hit : RaycastHit;
	//var fwd = TransformDirection(pos);
	bulletClone = Instantiate(bullet, pos, rot);
	flashClone = Instantiate(flash, pos, rot);
	//Physics.Raycast(pos, fwd, hit);
	
	//hit.tag
	
	bulletClone.rigidbody.AddRelativeForce(-5000, 0, 0);
	Destroy(flashClone, .1);
	Destroy(bulletClone, 3);
}
