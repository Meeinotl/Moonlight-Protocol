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
			renderer.material.color = Color.gray;
		}
		else {
			renderer.material.color = Color.red;
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
	}

	public void Power() {
		if(!powered) {
			powered = true;

			GameObject board = transform.parent.gameObject;
			if(lose) {
				board.renderer.material.color = Color.red;
			}
			else if(win && board.renderer.material.color != Color.red) {
				board.renderer.material.color = Color.green;
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
}
