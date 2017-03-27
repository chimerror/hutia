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
        g4. d8 b4~ | b8 e8 g8 b4 g8 |
        g4. c,8 e4~ | e8 d8 fs8 a4 fs8 |
        g4. d8 b4~ | b8 e8 g8 b4 g8 |
        c,4. e8 g4 | e8 d8 e8 fs4 a8 |
        b4. fs8 d8 e8~ | e8 g4 e16 g16 b16 e,8. |
        fs4. r8 a,8 cs8~ | cs8 b4 d16 fs16 d16 fs8. |
        b,2 r8 d8 | e8 g4 r8 e4 |
        a,8 fs8 g8 d'4. | fs8. cs8. r8 a16 g16 fs8 |
        b2 r8 d8 | e8 g4 r8 e4 |
        d8 fs8 a8 d,4. | cs8. a8. r8 a16 cs16 e8 |
        a,4. c8 d8 e8~ | e8 d4 fs16 a16 b16 fs8. |
        c4. r8 e8 g8~ | g8 fs4 a,16 d16 d16 fs8. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic bass"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef "bass"
         g,8 b8 d8 g8 d8 b8 | e,8 g8 b8 e8 b8 g8 |
         c,8 e8 g8 c8 g8 e8 | d8 fs8 a8 d8 a8 fs8 |
         g8 b8 d8 g8 d8 b8 | e,8 g8 b8 e8 b8 g8 |
         c,8 e8 g8 c8 g8 e8 | d8 fs8 a8 d8 a8 fs8 |
         g8 b8 d8 g8 d8 b8 | e,8 g8 b8 e8 b8 g8 |
         c,8 e8 g8 c8 g8 e8 | d8 fs8 a8 d8 a8 fs8 |
         g8 b8 d8 g8 d8 b8 | e,8 g8 b8 e8 b8 g8 |
         c,8 e8 g8 c8 g8 e8 | d8 fs8 a8 d8 a8 fs8 |
         g8 b8 d8 g8 d8 b8 | a8 c8 e8 a8 e8 c8 |
         fs,8 a8 cs8 fs8 cs8 a8 | b8 d8 fs8 b8 fs8 d8 |
         b8 d8 fs8 b8 fs8 d8 | e8 g8 b8 e8 b8 g8 |
         d,8 fs8 a8 d8 a8 fs8 | fs8 a8 cs8 fs8 cs8 a8 |
         b8 d8 fs8 b8 fs8 d8 | e8 g8 b8 e8 b8 g8 |
         d,8 fs8 a8 d8 a8 fs8 | a8 cs8 e8 a8 e8 cs8 |
         a8 c8 e8 a8 e8 c8 | d8 fs8 a8 d8 a8 fs8 |
         c8 e8 g8 c8 g8 e8 | d8 fs8 a8 d8 a8 fs8 |
      }
      \new DrumStaff {
        \drummode {
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <bd hh>8 <bd hh>8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <bd hh>8 <bd hh>8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <bd hh>8 <bd hh>8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 <bd hh>8 hh8 <bd hh>8 <bd hh>8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <bd hh>8 hh8 hh8 |
        }
      }
      % \new Staff {
      %   \set Staff.midiInstrument = #"acoustic guitar (steel)"
      %   \chordmode {
      %     g2. | e2.:m |
      %     c2. | d2. |
      %     g2. | e2.:m |
      %     c2. | d2. |
      %     g2. | e2.:m |
      %     c2. | d2. |
      %     g2. | e2.:m |
      %     c2. | d2. |
      %     g2. | a2.:m |
      %     fs2.:m | b2.:m |
      %     b2.:m | e2.:m |
      %     d2. | fs2.:m |
      %     b2.:m | e2.:m |
      %     d2. | a2. |
      %     a2.:m | d2. |
      %     c2. | d2. |
      %   }
      %  }
    >>
  }
  \layout { }
  \midi { }
}
