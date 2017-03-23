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
        \set Staff.midiInstrument = #"flute"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        g2 r8 b8 | d8 d4 r4. |
        f,2 a8 b8 | d8 d4 r4. |
        e,2 r8 g8 | b8 a8 g8 e8 r4 |
        ds4. r4. | as'8 a8 g8 a4. |
        g2 r8 b8 | d8 d4 r4. |
        f,2 a8 b8 | d8 d4 r4. |
        e,2 r8 g8 | b8 a8 g8 e8 r4 |
        ds4. r4. | as'8 a8 g8 a4 r8 |
        r8 a8 f8 g4. | fs8 a4. r4 |
        r8 b8 g8 a4. | fs8 d'4 d4. |
        a8 a8 d8 fs4. | a,16 cs16 r16 b8. a8 a4 |
        g8 g8 b8 d4. | a16 cs16 r16 b8. a8 a4 |
        e8. g8. e8 a8. r16 | d8 b8 c8 b16 a16 g4 |
        e8. g8. e8 a8. r16 | e'8 cs8 d8 a16 b16 cs4 |
        d,2 r8 fs8 | a8 a4 r4. |
        a2 r8 c8 | e8 e4 r4. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic bass"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef bass
         r2. | r2. |
         r2. | r2. |
         r2. | r2. |
         r2. | r2. |
         g,,,4. g8 b8 d8 | g,4. g8 b8 d8 |
         d4. d8 f8 a8 | d,4. d8 f8 a8 |
         e4. b'8 g8 e8 | e4. b'8 g8 e8 |
         g,4. g8 bf8 d8 | g,4. g8 bf8 d8 |
         c4. c8 e8 g8 | c,4. c8 e8 g8 |
         c,4. c8 e8 g8 | d4. d8 fs8 a8 |
         d2. | a2. |
         g2. | a2. |
         e2. | g2. |
         e2. | a2. |
         d2. | d2.|
         a2. | a2. |
      }
      \new DrumStaff {
        \drummode {
          r2. | r2. |
          r2. | r2. |
          r2. | r2. |
          hh8 r8 hh8 hh8 r8 hh8 | hh8 r8 hh8 hh8 r8 hh8 |
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 | <bd sn hh>8 r8 hh8 <sn hh>8 r8 hh8 |
          <bd hh>8 bd8 hh8 hh8 r8 hh8 | <bd hh>8 bd8 hh8 hh8 r8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 |
          <bd hh>8 r8 <sn hh>8 <bd hh>8 sn8 hh8 | <bd hh>8 bd8 hh8 <bd hh>8 bd8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 |
          <bd sn hh>8 hh8 hh8 <sn hh>8 hh8 hh8 | <bd hh>8 <bd hh>8 hh8 <bd hh>8 <bd hh>8 hh8 |
          hh8 r8 hh8 hh8 r8 hh8 | hh8 r8 hh8 hh8 r8 hh8 |
          r2. | r2. |
        }
      }
      %\new Staff {
      %  \set Staff.midiInstrument = #"acoustic grand"
      %  \chordmode {
      %    g2. | g2. |
      %    d2.:m | d2.:m |
      %    e2.:m | e2.:m |
      %    g2.:m | g2.:m |
      %    g2. | g2. |
      %    d2.:m | d2.:m |
      %    e2.:m | e2.:m |
      %    g2.:m | g2.:m |
      %    c2. | d2. |
      %    c2. | d2. |
      %    d2. | a2. |
      %    g2. | a2. |
      %    e2.:m | g2. |
      %    e2.:m | a2. |
      %    d2. | d2.|
      %    a2.:m | a2.:m |
      %  }
      % }
    >>
  }
  \layout { }
  \midi { }
}
