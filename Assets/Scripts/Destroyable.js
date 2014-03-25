#pragma strict

public var hp = 3;

function Start () {

}

function Update () {
	if (hp <= 0)
	{
		Destroy(this.gameObject);
	}
}

function OnCollisionExit(c : Collision)
{
	if (c.collider.gameObject.name == "Musket Ball(Clone)")
	{
		hp -= ShootBullet.Damage;
	}

}