#pragma strict

public var hp = 3;
public var fail : AudioClip;
private var dead = false;


function Start () {

}

function Update () 
{
	if (hp <= 0 && !dead)
	{
		dead = true;
		GetComponent(FollowPlayer).dead = true;
		var shoot : Component;
		for (var child : Transform in transform)
		{
			if (child.name == "Shooter")
			{
				shoot = child;
				break;
			}
		}
		shoot.GetComponent(GuardShoot).dead = true;
		audio.clip = fail;
		audio.loop = false;
		audio.Play();
		TriggerGun.firing = false;
		GameObject.Find("FlagBearer").GetComponent(Flag).tutorial = false;
		Destroy(this.gameObject, 2);
	}
}