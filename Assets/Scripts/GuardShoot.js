#pragma strict

public var flash : GameObject;
private var fireTime = 0;
private var firing = false;
public var dead = false;
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
		if (!dead && !GameObject.Find("FlagBearer").GetComponent(Flag).tutorial && !firing && hit.collider.gameObject.tag == "Player")
		{
			transform.parent.GetComponent(FollowPlayer).Spot(hit.collider.gameObject.transform.position);
			if (Random.Range(0, 100) < Flag.guardAccuracy)
			{
				//ShootBullet.Fire(bullet, flash, transform.position, transform.rotation);
				
				hit.collider.gameObject.GetComponent(PlayerDeath).Hit();
				//PlayerDeath.Hit();
			}
				
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