\language "english"
\version "2.18.2"
\header {
  title = "Clara's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
    <<
      \new Staff {
        \set Staff.midiInstrument = #"viola"
        \key g \major
        \time 6/8
        \tempo 8 = 208
        a8 a8 d8 d8 fs4 | r8 c4 e4. |
        e8 e8 g8 r8 b8 g8 | r8 f4 a4. |
        bf,8 bf8 d8 d8 f4 | g,8 g8 c8 c8 e4 |
        e8 e8 g8 g8 b4 | a8 a8 d,8 d8 fs4 |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic grand"
        \chordmode {
          d2. | c2. |
          e2.:m | f2. |
          bf2. | c2. |
          e2.:m | d2. |
        }
      }
    >>
  }
  \layout { }
  \midi { }
}
