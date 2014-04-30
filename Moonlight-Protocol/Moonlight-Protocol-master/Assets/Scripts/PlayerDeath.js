#pragma strict

public static var hp = 5;

function Start () 
{

}

function Update () 
{
	if (hp <= 0)
	{
		Application.LoadLevel(Application.loadedLevel);
		hp = 5;
		Tutorial.tutorial = true;
	}
}

function Hit ()
{
	hp--;
	audio.Play();
}