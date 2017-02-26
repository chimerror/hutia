using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Ink.Runtime;
using System.Text.RegularExpressions;

public static class StoryStats
{
    public struct VariableStats
    {
        public double Minimum;
        public double Maximum;
        public double Mean;
        public double Median;
        public List<int> Modes;
        public double StandardDeviation;
    }

    public const int Trials = 100;

    public static VariableStats CalculateVariableStats(string storyJson, string variableName, int trials = Trials, string stoppingPoint = null)
    {
        var varStats = new VariableStats();

        var story = new Story(storyJson);
        var results = new List<int>();
        var rng = new Random();

        Regex stoppingPointRegex = string.IsNullOrEmpty(stoppingPoint) ? null : new Regex(stoppingPoint);

        for (int currTrial = 0; currTrial < trials; currTrial++)
        {
            while (true)
            {
                if (stoppingPointRegex != null && stoppingPointRegex.IsMatch(story.currentText))
                {
                    break;
                }

                if (story.canContinue)
                {
                    story.Continue();
                }
                else if (story.currentChoices.Count > 0)
                {
                    story.ChooseChoiceIndex(rng.Next(story.currentChoices.Count));
                }
                else
                {
                    break;
                }
            }

            results.Add((int)story.variablesState[variableName]);
            story.ResetState();
        }

        var doubleResults = results.Select(x => (double)x).OrderBy(x => x).ToList();

        varStats.Minimum = doubleResults.First();
        varStats.Maximum = doubleResults.Last();

        varStats.Mean = doubleResults.Average();

        int medianPoint = trials / 2;
        if (trials % 2 == 0)
        {
            varStats.Median = (doubleResults[medianPoint] + doubleResults[medianPoint - 1]) / 2.0;
        }
        else
        {
            varStats.Median = doubleResults[medianPoint];
        }

        var counts = results.GroupBy(x => x);
        var maxCount = counts.Select(g => g.Count()).Max();
        varStats.Modes = counts.Where(g => g.Count() == maxCount).Select(g => g.Key).ToList();

        varStats.StandardDeviation = Math.Sqrt(doubleResults.Select(x => Math.Pow(x - varStats.Mean, 2)).Sum() / trials);

        return varStats;
    }
}
