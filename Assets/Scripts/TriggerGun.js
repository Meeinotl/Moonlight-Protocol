#pragma strict

var bullet: GameObject;
var flash : GameObject;

private var firing = false;


function Start () 
{
	
}

function Update () 
{
	if (Input.GetAxis("Fire1") > 0 && !firing)
	{
		ShootBullet.Fire(bullet, flash, this.transform.position,this.transform.rotation);
		audio.Play();
		firing = true;
	}
	else if (Input.GetAxis("Fire1") <= 0)
	{
		firing = false;
	}
}