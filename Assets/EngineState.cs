using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public struct EngineState
{
    public string GameTime { get; set; }
    public string GameLocation { get; set; }
    public string BackgroundParameters { get; set; }
    public string MusicParameters { get; set; }
    public string FarLeftCharacterParameters { get; set; }
    public string LeftCharacterParameters { get; set; }
    public string CenterCharacterParameters { get; set; }
    public string RightCharacterParameters { get; set; }
    public string FarRightCharacterParameters { get; set; }
    public Dictionary<string, string> CharacterColors { get; set; }
    public Dictionary<string, string> CharacterAliases { get; set; }
    public Dictionary<string, string> CharacterVariants { get; set; }
    public Dictionary<string, string> CharacterOverlays { get; set; }
}
