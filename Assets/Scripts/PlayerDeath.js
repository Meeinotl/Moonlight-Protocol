#pragma strict

public static var hp = 5;
public var regenSec = 20;
private var regen = regenSec * 60;

function Start () 
{

}

function Update () 
{
	if (hp <= 0)
	{
		Application.LoadLevel(Application.loadedLevel);
		hp = 5;
		GameObject.Find("FlagBearer").GetComponent(Flag).tutorial = true;
	}
	
	if (hp < 5)
	{
		if (regen > 0)
		{
			regen--;
		}
		else
		{
			regen = regenSec * 60;
			hp++;
			Debug.Log(hp);
		}
	}
	else
	{
		regen = regenSec * 60;
	}
}

function Hit ()
{
	hp--;
	audio.Play();
}