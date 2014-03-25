#pragma strict

var bullet: GameObject;
var flash : GameObject;
private var fireTime = 0;


function Start () 
{

}

function Update () 
{
	if (Time.time >= fireTime)
	{
		ShootBullet.Fire(bullet, flash, this.transform.position,this.transform.rotation);
		audio.Play();
		fireTime = Time.time + 1;
	}
}