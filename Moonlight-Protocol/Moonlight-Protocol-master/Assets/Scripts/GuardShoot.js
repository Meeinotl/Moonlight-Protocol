#pragma strict

var bullet: GameObject;
var flash : GameObject;
private var fireTime = 0;
private var firing = false;

function Start () 
{

}

function Update () 
{
	if (fireTime > 0)
	{
		fireTime--;
	}
	if (fireTime == 0)
	{
		firing = false;
	}
	var hit : RaycastHit;
	var fwd = transform.TransformDirection (Vector3.left);
	Physics.Raycast (Ray(transform.position, fwd), hit);
	Debug.DrawRay(transform.position, fwd, Color.red);
	try
	{
		if (!Tutorial.tutorial && !firing && hit.collider.gameObject.tag == "Player")
		{
			//ShootBullet.Fire(bullet, flash, transform.position, transform.rotation);
			
			hit.collider.gameObject.GetComponent(PlayerDeath).Hit();
			//PlayerDeath.Hit();
			Debug.Log(PlayerDeath.hp);
			
			audio.Play();
			var flashClone : GameObject = Instantiate(flash, transform.position, transform.rotation);
			Destroy(flashClone, 0.1);
			fireTime = 50;
			firing = true;
		}
	}
	catch (NullReferenceException)
	{
	
	}
}