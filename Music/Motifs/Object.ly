\language "english"
\version "2.18.2"
\header {
  title = "Object Motif"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
      \new Staff {
        \set Staff.midiInstrument = #"lead 1 (square)"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef treble 
        g8 g8 gs8 gs8 g4|
      }
  }
  \layout { }
  \midi { }
}
