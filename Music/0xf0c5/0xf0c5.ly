\language "english"
\version "2.18.2"
\header {
  title = "0xF0C5's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
    <<
      \new Staff {
        \clef "treble"
        \set Staff.midiInstrument = #"lead 1 (square)"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        b8. d8. b8 e,8. r16 | c'8. a8. d8 fs8. r16 |
        c8. e8. g,8 b8. r16 | c8. a8. e8 r16 b'8. |
        b8. d8. b8 e,8. r16 | c'8. a8. d8 fs8. r16 |
        c16 e16. r32 g,8 c16 b16 d4 g,16 | a8. e8. d8 r16 b'8. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic grand"
        \chordmode {
          b4.:m7 e4.:m7 | a4.:m7 d4.:7 |
          c4.:maj7 g4.:maj7 | a4.:m7 b4.:m7 |
          b4.:m7 e4.:m7 | a4.:m7 d4.:7 |
          c4.:maj7 g4.:maj7 | a4.:m7 b4.:m7 |
        }
      }
    >>
  }
  \layout { }
  \midi { }
}
