﻿using UnityEngine;
using System.Collections;

public class STMVertexMod : MonoBehaviour {
	//directly modify vertices
	[Header("Curve")]
	public Vector3 positionOffset;
	public float angleOffset = -1f;
	public Vector3 pivot;
	public float letterRotation = 1f;
	[Header("Sketchify")]
	[Range(0.001f,8f)]
	public float sketchDelay = 0.25f;
	private float sketchLastTime = -1.0f;
	#if UNITY_5_4_OR_NEWER
	private Random.State thisState;
	#else
	private int thisSeed;
	#endif
	public float sketchAmount = 0.025f;

	public void SketchifyVerts(Vector3[] verts, Vector3[] middles, Vector3[] positions){
		//Random.State beforeState = Random.state; //so it can't interfere with any other script. why doesn't this work on certain meshes...??
		float newTime = Mathf.Floor(Time.time / sketchDelay) * sketchDelay;
		if(newTime != sketchLastTime){ //update random state
			//Debug.Log("Sketchifying!");
			#if UNITY_5_4_OR_NEWER
			thisState = Random.state;
			#else
			thisSeed = Random.seed;
			#endif
			sketchLastTime = newTime;
		}
		#if UNITY_5_4_OR_NEWER
		Random.state = thisState;
		#else
		Random.seed = thisSeed;
		#endif
		for(int i=0, iL=verts.Length; i<iL; i++){
			verts[i].x += Random.Range(-sketchAmount,sketchAmount);
			verts[i].y += Random.Range(-sketchAmount,sketchAmount);
			verts[i].z += Random.Range(-sketchAmount,sketchAmount);
		}
		//Random.state = beforeState;
	}
	public void ApplyCurveToVertices(Vector3[] verts, Vector3[] middles, Vector3[] positions){
		for(int i=0, iL=verts.Length / 4; i<iL; i++){
			//offset position...
			//In this for loop,
			//verts[4*i+0] is the top-left corner
			//verts[4*i+1] is the top-right corner
			//verts[4*i+2] is the bottom-right corner
			//verts[4*i+3] is the bottom-left corner... of a single letter!
			
			verts[4*i+0] -= new Vector3(positionOffset.x,verts[4*i+0].x * positionOffset.y,positionOffset.z);
			verts[4*i+1] -= new Vector3(positionOffset.x,verts[4*i+0].x * positionOffset.y,positionOffset.z);
			verts[4*i+2] -= new Vector3(positionOffset.x,verts[4*i+0].x * positionOffset.y,positionOffset.z);
			verts[4*i+3] -= new Vector3(positionOffset.x,verts[4*i+0].x * positionOffset.y,positionOffset.z);
			
			//rotate letter...
			//Vector3 middleOfLetter = Vector3.Lerp(verts[4*i+0], verts[4*i+2], 0.5f);
			//this isn't neccesarily the middle of the letter, as some points go below
			Vector3 rotationPoint = new Vector3(middles[i].x, positions[i].y, middles[i].z);
			Vector3 angle = new Vector3(0f,0f,angleOffset * middles[i].x);
			if(float.IsNaN(angle.z)){
				angle = Vector3.zero; //awful
			}
			
			verts[4*i+0] = RotatePointAroundPivot(verts[4*i+0], rotationPoint, angle);
			verts[4*i+1] = RotatePointAroundPivot(verts[4*i+1], rotationPoint, angle);
			verts[4*i+2] = RotatePointAroundPivot(verts[4*i+2], rotationPoint, angle);
			verts[4*i+3] = RotatePointAroundPivot(verts[4*i+3], rotationPoint, angle);
			//Vector3 pivot = info[i].Middle;
			angle.z += (positions[i].y * letterRotation);
			verts[4*i+0] = RotatePointAroundPivot(verts[4*i+0], pivot, angle);
			verts[4*i+1] = RotatePointAroundPivot(verts[4*i+1], pivot, angle);
			verts[4*i+2] = RotatePointAroundPivot(verts[4*i+2], pivot, angle);
			verts[4*i+3] = RotatePointAroundPivot(verts[4*i+3], pivot, angle);
		}
	}
	private Vector3 RotatePointAroundPivot(Vector3 point, Vector3 myPivot, Vector3 angles) {
		Vector3 dir = point - myPivot; // get point direction relative to myPivot
		dir = Quaternion.Euler(angles) * dir; // rotate it
		point = dir + myPivot; // calculate rotated point
		return point; // return it
	}
}
