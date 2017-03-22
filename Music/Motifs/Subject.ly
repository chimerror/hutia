\language "english"
\version "2.18.2"
\header {
  title = "Subject Motif"
  composer = "Jason Mitchell"
}
\score {
  \relative g'' {
      \new Staff {
        \set Staff.midiInstrument = #"bright acoustic"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef treble
        g8 d8 r8 b16 a16 g4 |
      }
  }
  \layout { }
  \midi { }
}
