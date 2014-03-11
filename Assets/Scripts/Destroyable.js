#pragma strict

public var hp = 3;

function Start () {

}

function Update () {

}

function OnCollisionExit(c : Collision)
{
	if (c.collider.gameObject.name == "Musket Ball(Clone)")
	{
		hp -= ShootBullet.Damage;
	}
	if (hp <= 0)
	{
		Destroy(this.gameObject);
	}
}