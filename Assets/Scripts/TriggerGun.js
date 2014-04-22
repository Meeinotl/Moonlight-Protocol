#pragma strict

var bullet: GameObject;
var flash : GameObject;
var sparks : GameObject;
private var fireCount = 0;
public var lookcamera : Camera;

public static var firing = false;


function Start () 
{
	
}

function Update () 
{
	Debug.Log(firing);
	if (fireCount > 0)
	{
		fireCount--;
	}
	if (Input.GetAxis("Fire1") > 0 && !firing)
	{
		ShootBullet.Fire(bullet, flash, this.transform.position,this.transform.rotation);
		audio.Play();
		fireCount = 20;
		var hit : RaycastHit;
		var sparkclone : GameObject;
		var ray : Ray = lookcamera.ScreenPointToRay(Vector3((lookcamera.pixelWidth / 2), (lookcamera.pixelHeight / 2), 0));
		var fwd = transform.TransformDirection (Vector3.forward);
		//if (Physics.Raycast (transform.position, fwd, hit)) 
		if (Physics.Raycast (ray, hit))//, 100, 1 << LayerMask.NameToLayer("Enemy"))) 
		{
			//Debug.Log("Hit");
			if (hit.collider.gameObject.tag == "Enemy")
			{
				//Debug.Log("Strike");
				hit.collider.gameObject.GetComponent(Destroyable).hp--;
				
				var badPos = hit.collider.gameObject.transform.position;
				var goodPos = Vector3(badPos.x, badPos.y + 1.5, badPos.z);
				sparkclone = Instantiate(sparks, goodPos, transform.rotation);
				Destroy(sparkclone, .2);
			}
		}
		
		firing = true;
	}
	else if (Input.GetAxis("Fire1") <= 0 && fireCount == 0)
	{
		firing = false;
	}
}