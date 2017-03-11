\language "english"
\version "2.18.2"
\header {
  title = "Ramsey's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g {
      \new Staff {
        \clef "bass"
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \key g \major
        \time 6/8
        \tempo 8 = 160
        e4. fs8 e4~ | e8 b8 c8 e4 fs8 |
        e4. a8 g4~ | g8 c,8 d8 fs4 g8 |
        e4. fs8 e4~ | e8 b8 c8 e4 fs8 |
        e4. a8 g4 | c,8 d8 c8 a4 r8 |
      }
  }
  \layout { }
  \midi { }
}
