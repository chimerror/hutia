\language "english"
\version "2.18.2"
\header {
  title = "Latoya's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
    <<
      \new Staff {
        \set Staff.midiInstrument = #"acoustic grand"
        \key g \major
        \time 6/8
        \tempo 8 = 170
        g2 r8 b8 | d8 d4 r4. |
        f,2 a8 b8 | d8 d4 r4. |
        e,2 r8 g8 | b8 a8 g8 e8 r4 |
        ds4. r4. | as'8 a8 g8 a4 r8 |
        r8 a8 f8 g4. | fs8 a4. r4 |
        r4. r4. | r4. r4. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic grand"
        \chordmode {
          g2. | g2. |
          d2.:m | d2.:m |
          e2.:m | e2.:m |
          g2.:m | g2.:m |
          c2. | d2. |
          c2. | d2.:m7 |
        }
      }
    >>
  }
  \layout { }
  \midi { }
}
