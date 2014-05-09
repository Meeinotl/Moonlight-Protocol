#pragma strict

public var cam : Camera;
public var p0 : GUITexture;
public var p1 : GUITexture;
public var p2 : GUITexture;
public var p3 : GUITexture;
public var p4 : GUITexture;
public var p5 : GUITexture;
public var p6 : GUITexture;
public var p7 : GUITexture;
public var p8 : GUITexture;
public var p9 : GUITexture;

private var step = 0;
private var safeCount = 200;
//private var size = new Rect(0, 0, cam.pixelWidth / 3, cam.pixelHeight / 3);

function Start () 
{
	Clear();
}

function Update () 
{
	if (GameObject.Find("FlagBearer").GetComponent(Flag).tutorial)
	{
		switch (step)
		{
			case 0: //Look
				Clear();
				p0.guiTexture.enabled = true;
				p0.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0)
				{
					step++;
				}
				break;
			case 1: //Move
				Clear();
				p1.guiTexture.enabled = true;
				p1.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
			if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
				{
					step++;
				}
				break;
			case 2: //Jump
				Clear();
				p2.guiTexture.enabled = true;
				p2.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Jump"))
				{
					step++;
				}
				break;
			case 3: //Crouch
				Clear();
				p3.guiTexture.enabled = true;
				p3.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Crouch"))
				{
					step++;
				}
				break;
			case 4: //Uncrouch
				Clear();
				p4.guiTexture.enabled = true;
				p4.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Crouch"))
				{
					step++;
				}
				break;
			case 5: //Sprint
				Clear();
				p5.guiTexture.enabled = true;
				p5.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Sprint"))
				{
					step++;
				}
				break;
			case 6: //Unsprint
				Clear();
				p6.guiTexture.enabled = true;
				p6.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Sprint"))
				{
					step++;
				}
				break;
			case 7: //Interact
				Clear();
				p7.guiTexture.enabled = true;
				p7.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetButtonDown("Use"))
				{
					step++;
				}
				break;
			case 8: //Shoot
				Clear();
				p8.guiTexture.enabled = true;
				p8.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				if (Input.GetAxis("Fire1") > 0)
				{
					step++;
				}
				break;
			case 9: //safe
				Clear();
				p9.guiTexture.enabled = true;
				p9.guiTexture.pixelInset = Rect(0, cam.pixelHeight - cam.pixelHeight / 3, cam.pixelWidth / 3, cam.pixelHeight / 3);
				safeCount--;
				if (safeCount == 0)
				{
					step++;
				}
				break;
			default:
				Clear();
				//tutorial = false;
				break;
		}
	}
	else
	{
		Clear();
	}
		
}

function Clear()
{
	p0.guiTexture.enabled = false;
	p1.guiTexture.enabled = false;
	p2.guiTexture.enabled = false;
	p3.guiTexture.enabled = false;
	p4.guiTexture.enabled = false;
	p5.guiTexture.enabled = false;
	p6.guiTexture.enabled = false;
	p7.guiTexture.enabled = false;
	p8.guiTexture.enabled = false;	
	p9.guiTexture.enabled = false;
}