\language "english"
\version "2.18.2"
\header {
  title = "0xF0C5's Theme"
  composer = "Jason Mitchell"
}
\score {
  \relative g' {
      \new Staff {
        \clef "treble"
        \set Staff.midiInstrument = #"lead 2 (sawtooth)"
        \key g \major
        \time 6/8
        \tempo 8 = 192
        b8. c8. fs8 d8. r16 | b8. a8. d8 b8. r16 |
        c8. d8. g8 e8. r16 | b8. c8. g'8 r16 a8. |
        b,8. c8. fs8 d8. r16 | b8. a8. d8 b8. r16 |
        a16 c16. r32 c8 fs8 d4 r16 |  e8. g8. a8 r16 b8. |
        % a8. r16 g8 c,8. b8. | r8 d8. fs8 c8 r32 c16. a16 |
        % r16 b8. d8 a8. b8. | r16 d8. fs8 c8. b8. |
        % a'8. r16 g8 c,8. b8. | d8. r16 fs8 e8. cs8. |
        % r16 b8. d8 a8. b8. | r16 d8. fs8 c8. b8. |
      }
  }
  \layout { }
  \midi { }
}
