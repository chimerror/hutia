\language "english"
\version "2.18.2"
\header {
  title = "Pure Motif"
  composer = "Jason Mitchell"
}
\score {
  \relative g {
      \new Staff {
        \set Staff.midiInstrument = #"church organ"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef bass
        d8 b8 c8 g'4. |
      }
  }
  \layout { }
  \midi { }
}
