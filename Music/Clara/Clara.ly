\language "english"
\version "2.18.2"
\header {
  title = "Clara's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
      \new Staff {
        \set Staff.midiInstrument = #"violin"
        \key g \major
        \time 6/8
        \tempo 8 = 225
        c8 c8 e8 r4 g8 | a4. f4. |
        e8 e8 c8 r8 fs8 e8 | r8 d4 e4. |
        a,8 a8 c8 c8 f4 | g,8 g8 c8 c8 e4 |
        a,8 a8 c8 c8 f4 | g,8 g8 e8 g8 b8 d8 |
      }
  }
  \layout { }
  \midi { }
}
