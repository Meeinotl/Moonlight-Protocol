#pragma strict

var bullet: GameObject;
var flash : GameObject;
public static var Damage = 10;

function Start () {

}

function Update () 
{
	if (Input.GetButtonDown("Fire1"))
	{
		var clone : GameObject;
		var flashClone : GameObject;
		var pos = this.transform.position;
		var rot = this.transform.rotation;
		clone = Instantiate(bullet, pos, rot);
		flashClone = Instantiate(flash, pos, rot);
		audio.Play();
		clone.rigidbody.AddRelativeForce(-1500, 0, 0);
		Destroy(flashClone, .1);
		Destroy(clone, 3);
	}
}