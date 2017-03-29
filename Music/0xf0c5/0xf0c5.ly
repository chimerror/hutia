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
        b8. d8. b8 e,8. r16 | cs'8. a8. d8 fs8. r16 |
        cs8. e8. g,8 b8. r16 | cs8. a8. e8 r16 b'8. |
        b8. d8. b8 e,8. r16 | cs'8. a8. d8 fs8. r16 |
        cs16 e16. r32 g,8 cs16 b16 d4 g,16 | a8. e8. d8 r16 b'8. |
        cs8. e8. gs,8 b8. r16 | cs8. e8. g,8 b8. r16 |
        cs8. e8. e8 g8. r16 | a8. e8. b8 r16 g8. |
        r4. e4 e8 | g8 r8 b2 |
        r4. c,4 e8 | a8 r8 c2 |
        e,2 r8 g8 | b8 b4 r4. |
        c,2 r8 e8 | a8 b4 r4. |
        c16 e16 r16 d8. g,8 b8. r16 | r16 a16 b16 a16 b16. r32 fs8. a8. |
        g16 b16 r16 d8. d8 fs8. r16 | r16 e16 fs16 e16 fs16. r32 c8. e8. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"synth bass 2"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef "bass_8"
        b,,,8 r8 d8 e8 r8 g8 | a,8 r8 c8 d8 r8 fs8 |
        c8 r8 e8 g8 r8 b8 | a,8 r8 c8 b8 r8 d8 |
        b8 r8 d8 e8 r8 g8 | a,8 r8 c8 d8 r8 fs8 |
        c8 r8 e8 g8 r8 b8 | a,8 r8 c8 b8 r8 d8 |
        b8 r8 d8 e8 r8 g8 | a,8 r8 c8 d8 r8 fs8 |
        cs8 r8 e8 g8 r8 b8 | a,8 r8 cs8 b8 r8 d8 |
        b8 r8 d8 e8 r8 g8 | a,8 r8 c8 d8 r8 fs8 |
        cs8 r8 e8 g8 r8 b8 | a,8 r8 cs8 b8 r8 d8 |
        cs8 r8 e8 gs8 r8 e8 | cs8 r8 e8 g8 r8 e8 |
        cs8 r8 e8 gs8 r8 e8 | a,8 r8 c8 b8 r8 d8 |
        e8 g8 r8 e8 g8 r8 | b,8 d8 r8 b8 d8 r8 |
        c8 e8 r8 c8 e8 r8 | a,8 c8 r8 a8 c8 r8 |
        e8 g8 r8 e8 g8 r8 | b,8 d8 r8 b8 d8 r8 |
        c8 e8 r8 c8 e8 r8 | a,8 c8 r8 a8 c8 r8 |
        c4. g4. | a4. fs4. |
        g4. d4. | e4. c4. |
      }
      \new DrumStaff {
        \drummode {
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd hh>8 bd8 hh8 hh8 r8 hh8 | <bd hh>8 bd8 hh8 hh8 r8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 bd8 hh8 <bd hh>8 bd8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <sn hh>8 hh8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 bd8 hh8 <bd hh>8 bd8 hh8 |
        }
      }
      % \new Staff {
      %   \set Staff.midiInstrument = #"acoustic grand"
      %   \chordmode {
      %     b4.:m7 e4.:m7 | a4.:m7 d4.:7 |
      %     c4.:maj7 g4.:maj7 | a4.:m7 b4.:m7 |
      %     b4.:m7 e4.:m7 | a4.:m7 d4.:7 |
      %     c4.:maj7 g4.:maj7 | a4.:m7 b4.:m7 |
      %     b4.:m7 e4.:m7 | a4.:maj7 d4.:7 |
      %     cs4.:dim7 g4.:maj7 | a4.:maj7 b4.:m7 |
      %     b4.:m7 e4.:m7 | a4.:maj7 d4.:7 |
      %     cs4.:m7 g4.:maj7 | a4.:maj7 b4.:m7 |
      %     cs4.:m7 cs4.:m7 | cs4.:dim7 cs4.:dim7 |
      %     cs4.:m7 e4.:m7 | a4.:m7 b4.:m7 |
      %     e2.:m7 | b2.:m7 |
      %     c2.:maj7 | a2.:m7 |
      %     e2.:m7 | b2.:m7 |
      %     c2.:maj7 | a2.:m7 |
      %     c4.:maj7 g4.:maj7 | a4.:m7 fs4.:dim7 |
      %     g4.:maj7 d4.:maj7 | e4.:m7 c4.:maj7 |
      %   }
      % }
    >>
  }
  \layout { }
  \midi { }
}
