\language "english"
\version "2.18.2"
\header {
  title = "Lewd Motif"
  composer = "Jason Mitchell"
}
\score {
  \relative g,, {
      \new Staff {
        \set Staff.midiInstrument = #"electric bass (finger)"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef "bass_15"
        d16 fs16 r16 e8. r16 e16 fs16 e16 fs16. r32 |
      }
  }
  \layout { }
  \midi { }
}
