#pragma strict

public var lookcamera : Camera;

function Start () 
{
	transform.position = Vector3.zero;
	transform.localScale = Vector3.zero;
	guiTexture.pixelInset = Rect((lookcamera.pixelWidth / 2), (lookcamera.pixelHeight / 2), 64, 64);
}

function Update () 
{
	var hit : RaycastHit;
	var ray : Ray = lookcamera.ScreenPointToRay(Vector3((lookcamera.pixelWidth / 2), (lookcamera.pixelHeight / 2), 0));
	var fwd = transform.TransformDirection (Vector3.forward);
	
	//if (Physics.Raycast (transform.position, fwd, hit)) 
	if (Physics.Raycast (ray, hit)) 
	{
		//Debug.Log("Hit");
		if (hit.collider.gameObject.tag == "Enemy")
		{
			//Debug.Log("Strike");
			guiTexture.color = Color.red;
		}
		else
		{
			guiTexture.color = Color.blue;
		}
	}
}