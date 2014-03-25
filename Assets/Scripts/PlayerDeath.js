#pragma strict

public var hp = 1;

function Start () {

}

function Update () {
	if (hp <= 0)
	{
		Application.LoadLevel(Application.loadedLevel);
	}
}

function OnCollisionEnter(c : Collision)
{
	if (c.collider.gameObject.name == "Bullet(Clone)")
	{
		hp -= ShootBullet.Damage;
		//Debug.Log("You Been Shot, Fool!");
	}

}