\language "english"
\version "2.18.2"
\header {
  title = "Ramsey's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g {
    <<
      \new Staff {
        \clef "bass"
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        d4. g8 g4~ | g8 e8 fs8 g4 fs8 |
        g4. c,8 e4~ | e8 d8 e8 fs4 a8 |
        d,4. g8 g4~ | g8 fs8 e8 g4 b8 |
        c,4. e8 g4 | e8 d8 e8 fs4 a8 |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \chordmode {
          g2. | e2.:m |
          c2. | d2. |
          g2. | e2.:m |
          c2. | d2. |
        }
      }
    >>
  }
  \layout { }
  \midi { }
}
