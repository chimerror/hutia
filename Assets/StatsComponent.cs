using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class StatsComponent : MonoBehaviour
{
    public TextAsset storyAsset;
    public string[] variables;
    public int trials = 100;
    public string stoppingPoint = null;

    private void Start()
    {
        foreach (string variable in variables)
        {
            var stats = StoryStats.CalculateVariableStats(storyAsset.text, variable, trials, stoppingPoint);
            Debug.LogFormat("{0} -- Min: {1} Max: {2} Mean: {3} Median: {4} Modes: {5} Std. Dev: {6}",
                variable,
                stats.Minimum,
                stats.Maximum,
                stats.Mean,
                stats.Median,
                string.Join(", ", stats.Modes.Select(m => m.ToString()).ToArray()),
                stats.StandardDeviation);
        }
    }
}
