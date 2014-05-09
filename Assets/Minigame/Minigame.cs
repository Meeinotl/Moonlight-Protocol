using UnityEngine;
using System.Collections;

public class Minigame : MonoBehaviour {
	
	private int hoverX, hoverY;
	private int selX, selY;
	private int prevH, prevV, prevA;

	public int width = 3;
	public int height = 3;
	public int startX = 1;
	public int startY = 2;

	void Start() {
		deselect();
		changeHover(startX, startY);

		transform.Find("Power").renderer.material.color = Color.yellow;
		transform.Find("Alarm").renderer.material.color = Color.red;
		transform.Find("Goal").renderer.material.color = Color.green;
	}

	void Reset() {
		Start();
	}
	
	void Update () {
		if (GameObject.Find ("FlagBearer").GetComponent<Flag> ().miniGame) {
						if (GetComponent<FlipBoard> ().flipped) {
								return;
						}

						int h = (int)Input.GetAxis ("DPadHorizontal");
						int v = (int)Input.GetAxis ("DPadVertical");
						int a = (int)Input.GetAxis ("Jump");

						if (Input.GetKey (KeyCode.LeftArrow)) {
								h = -1;
						} else if (Input.GetKey (KeyCode.RightArrow)) {
								h = 1;
						}

						if (Input.GetKey (KeyCode.UpArrow)) {
								v = 1;
						} else if (Input.GetKey (KeyCode.DownArrow)) {
								v = -1;
						}

						a = Input.GetKey (KeyCode.Space) ? 1 : 0;
		
						if(Input.GetKeyDown(KeyCode.R)) {
							BroadcastMessage("Reset");
						}

						if (h != 0 && prevH == 0) {
								if (selected ()) {
										changeHover (selX + h, selY);
								} else {
										changeHover (hoverX + h, hoverY);
								}
						}
		
						if (v != 0 && prevV == 0) {
								if (selected ()) {
										changeHover (selX, selY - v);
								} else {
										changeHover (hoverX, hoverY - v);
								}
						}

						if (a != 0 && prevA == 0) {
								if (!selected ()) {
										select (hoverX, hoverY);
								} else {
										if (selX != hoverX || selY != hoverY) {
												Rod rod = getRod (selX, selY).GetComponent<Rod> ();
												rod.connectTo (getRod (hoverX, hoverY));
										}

										deselect ();
								}
						}

						prevH = h;
						prevV = v;
						prevA = a;
				}
	}

	private void changeHover(int x, int y) {
		GameObject old, rod;

		if(rod = getRod(x, y)) {
			if(((old = getRod(hoverX, hoverY)) != null) && (hoverX != selX || hoverY != selY)) {
				old.GetComponent<Rod>().SetColor();
			}

			rod.renderer.material.color = Color.Lerp(rod.renderer.material.color, Color.white, .75f);
			hoverX = x;
			hoverY = y;
		}
	}

	private GameObject getRod(int x, int y) {
		if(x < 0 || x > width || y < 0 || y > height){return null;}
		Transform t = transform.Find("Rod" + ((y * width) + x + 1));
		if(t){return t.gameObject;}
		return null;
	}

	private void select(int x, int y) {
		GameObject rod;
		if(rod = getRod(x, y)) {
			selX = x;
			selY = y;
			rod.renderer.material.color = Color.green;
		}
	}

	private void deselect() {
		GameObject rod;
		if(rod = getRod(selX, selY)) {
			rod.GetComponent<Rod>().SetColor();
		}

		selX = selY = -1;
	}

	private bool selected() {
		return selX != -1 && selY != -1;
	}
}
