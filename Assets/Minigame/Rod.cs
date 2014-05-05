using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Rod : MonoBehaviour {

	public List<GameObject> connectedTo;
	public bool powered = false;
	public bool lose = false;
	public bool win = false;
	[HideInInspector] public List<GameObject> userConnectedTo;

	void Awake() {
		SetColor();
	}
	
	void Update() {
		if(transform.parent.gameObject.GetComponent<FlipBoard>().flipped) {
			foreach(GameObject other in connectedTo) {
				Debug.DrawLine(transform.position + Vector3.up * .02f, other.transform.position + Vector3.up * .02f, Color.red);
			}
		}
		else {
			foreach(GameObject other in userConnectedTo) {
				Debug.DrawLine(transform.position + Vector3.up * .02f, other.transform.position + Vector3.up * .02f, Color.red);
			}
		}

		if(lose) {
			Debug.DrawLine(transform.position + Vector3.up * .04f, transform.parent.Find("Alarm").position + Vector3.up * .04f, Color.red);
		}
		else if(win) {
			Debug.DrawLine(transform.position + Vector3.up * .04f, transform.parent.Find("Goal").position + Vector3.up * .04f, Color.red);
		}
	}

	public void SetColor() {
		if(!powered) {
			renderer.material.color = Color.black;
		}
		else {
			renderer.material.color = Color.magenta;
		}
	}

	public void connectTo(GameObject other) {
		Rod otherRod = other.GetComponent<Rod>();

		if(userConnectedTo.IndexOf(other) == -1) {
			userConnectedTo.Add(other);
			otherRod.userConnectedTo.Add(gameObject);

			if(powered) {
				otherRod.Power();
			}
			if(otherRod.powered) {
				Power();
			}
		}
		else {
			disconnectFrom(other);
		}
	}

	public void disconnectFrom(GameObject other) {
		Rod otherRod = other.GetComponent<Rod>();

		if(userConnectedTo.IndexOf(other) != -1) {
			userConnectedTo.Remove(other);
			otherRod.userConnectedTo.Remove(gameObject);

			// Not the most efficient way of going about things,
			// but it shouldn't matter for this many rods.
			otherRod.Unpower();
			Unpower();
			GameObject startRod = GameObject.FindWithTag("StartRod");
			if(startRod) {
				Rod startRodRod = startRod.GetComponent<Rod>(); // rod rod rod rod rod
				startRodRod.powered = false;
				startRodRod.Power();
			}
		}
	}

	public void Power() {
		if(!powered) {
			powered = true;
			GameObject board = transform.parent.gameObject;
			if(lose) {
				board.renderer.material.color = Color.red;
			}
			else if(win && board.renderer.material.color != Color.red) {
				board.renderer.material.color = Color.blue;
			}
			SetColor();
			
			foreach(GameObject o in connectedTo) {
				o.GetComponent<Rod>().Power();
			}

			foreach(GameObject o in userConnectedTo) {
				o.GetComponent<Rod>().Power();
			}
		}
	}

	public void Unpower() {
		if(powered) {
			powered = false;
			SetColor();
			foreach(GameObject o in connectedTo) {
				o.GetComponent<Rod>().Unpower();
			}

			foreach(GameObject o in userConnectedTo) {
				o.GetComponent<Rod>().Unpower();
			}
		}
	}
}
