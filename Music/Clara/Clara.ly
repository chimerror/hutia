\language "english"
\version "2.18.2"
\header {
  title = "Clara's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
      \new Staff {
        \set Staff.midiInstrument = #"viola"
        \key g \major
        \time 6/8
        \tempo 8 = 208
        c8 c8 e8 r8 fs8 d8 | r8 c4 e4. |
        e8 e8 c8 r8 fs8 e8 | r8 d4 e4. |
        a,8 a8 c8 c8 f4 | g,8 g8 c8 c8 e4 |
        b8 b8 d8 d8 fs4 | g8 g8 e8 e8 fs4 |
      }
  }
  \layout { }
  \midi { }
}
