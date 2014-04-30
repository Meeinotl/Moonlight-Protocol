#pragma strict

var bullet: GameObject;
var flash : GameObject;
public static var Damage = 1;
private var firing = false;

function Start () {

}

function Update () 
{
	if (Input.GetAxis("Fire1") > 0 && !firing)
	{
		var bulletClone : GameObject;
		var flashClone : GameObject;
		var pos = this.transform.position;
		var rot = this.transform.rotation;
		bulletClone = Instantiate(bullet, pos, rot);
		flashClone = Instantiate(flash, pos, rot);
		audio.Play();
		bulletClone.rigidbody.AddRelativeForce(-5000, 0, 0);
		Destroy(flashClone, .1);
		Destroy(bulletClone, 3);
		firing = true;
	}
	else if (Input.GetAxis("Fire1") <= 0)
	{
		firing = false;
	}
}	

