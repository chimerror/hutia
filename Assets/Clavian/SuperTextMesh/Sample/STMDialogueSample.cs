using UnityEngine;
using System.Collections;

public class STMDialogueSample : MonoBehaviour {
	public SuperTextMesh textMesh;
	public KeyCode advanceKey = KeyCode.Return;
	public string[] lines;
	private int currentLine = 0;

	void Start () {
		Apply();
	}
	public void CompletedDrawing(){
		Debug.Log("I completed reading! Done!");
	}
	public void CompletedUnreading(){
		Debug.Log("I completed unreading!! Bye!");
		Apply(); //go to next line
	}
	void Apply () {

		//isDoneFading = false;
		textMesh.Text = lines[currentLine]; //invoke accessor so rebuild() is called
		currentLine++; //move to next line of dialogue...
		currentLine %= lines.Length; //or loop back to first one
	}
	void Update () {
		if(Input.GetKeyDown(advanceKey)){
			if(textMesh.reading){ //is text being read out?
				textMesh.SpeedRead(); //show all text, or speed up
			}
			else if(!textMesh.unreading){
				textMesh.UnRead();
				//Apply();
			}
		}
		if(Input.GetKeyUp(advanceKey)){
			textMesh.RegularRead(); //return to normal reading speed, if possible.
		}

	}
}