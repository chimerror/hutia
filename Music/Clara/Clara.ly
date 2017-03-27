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
        \tempo 8 = 176
        a8 a8 d8 d8 fs4 | r8 c4 e4. |
        e8 e8 g8 r8 b8 g8 | r8 f4 a4. |
        bf,8 bf8 d8 d8 f4 | g,8 g8 c8 c8 e4 |
        e8 e8 g8 g8 b4 | a8 a8 d,8 d8 fs4 |
        d8 d8 a8 a8 fs'4 | r8 e4 c4. |
        b8 b8 e8 r8 g8 e8 | r8 c4 f4. |
        a,8 a8 c8 c8 e4 | c8 c8 e8 e8 g4 |
        e8 e8 gs8 gs8 b4 | a8 a8 d,8 d8 fs4 |
        d4. a4. | c4. g4. |
        fs4. a4. | d4. fs4. |
        g,2 b8 d8 | c8 c4 d8 b8 c8 |
        b8 e8. r16 d8 d8 e8 | d8 a8 r8 b16 a16 g4 |
        g2 b8 d8 | c8 c4 d8 b8 c8 |
        d8 a8. r16 fs8 fs8 a8 | e8 g8 r8 b16 e16 g4 |
        fs4. a4. | d,4. fs4. |
        d4. a4. | cs4. e4. |
      }
      \new Staff {
        \set Staff.midiInstrument = #"acoustic bass"
        \key g \major
        \time 6/8
        \tempo 8 = 176
        \clef bass
         d,,2. | c2. |
         e,2. | f2. |
         d'4. bf4. | e4. c4. |
         g'4. e4. | fs4. d4. |
         d2. | c2. |
         e,2. | f2. |
         d'4. bf4. | e4. c4. |
         e8 g8 b8 e,4. | d8 fs8 a8 d,4. |
         d8 fs8 a8 d,4. | c8 e8 g8 c,4. |
         d8 fs8 a8 d,4. | d8 fs8 a8 d,4. |
         g2. | c2.
         b2. | d,8 fs8 a8 d,4. |
         g2. | c2. |
         d2. | e,8 g8 b8 e,4. |
         d8 fs8 a8 d,4. | d8 fs8 a8 d,4. |
         d8 fs8 a8 d,4. | a8 cs8 e8 a,4. |
      }
      \new DrumStaff {
        \drummode {
          hh4 hh4 hh4 | hh4 hh4 hh4 |
          <bd hh>4 hh4 hh4 | <bd hh>8 bd8 hh4 hh4 |
          <bd hh>4 <sn hh>4 <sn hh>4 | <bd hh>4 <sn hh>4 <sn hh>4 |
          <bd hh>4 <sn hh>4 <sn hh>4 | <bd hh>8 bd8 <sn hh>4 <sn hh>4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>4 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>8 bd8 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>4 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>8 <bd hh>8 <sn hh>8 hh8 hh8 hh8 |
          <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
          <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 bd8 <sn hh>4 <sn hh>4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>4 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>4 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>4 <sn hh>4 hh4 |
          <bd hh>4 hh4 <sn hh>4 | <bd hh>8 bd8 <sn hh>4 hh4 |
          <bd hh>4 hh4 hh4 | <bd hh>4 hh4 hh4 |
          hh4 hh4 hh4 | hh8 hh8 hh4 hh4 |
        }
      }
      % \new Staff {
      % \set Staff.midiInstrument = #"acoustic grand"
      % \chordmode {
      %   d2. | c2. |
      %   e2.:m | f2. |
      %   bf2. | c2. |
      %   e2.:m | d2. |
      %   d2. | c2. |
      %   e2.:m | f2. |
      %   a2.:m | c2. |
      %   e2. | d2. |
      %   d2. | c2. |
      %   d2. | d2. |
      %   g2. | c2. |
      %   b2.:m | d2. |
      %   g2. | c2. |
      %   d2. | e2.:m |
      %   d2. | d2. |
      %   d2. | a2. |
      % }
      % }
    >>
  }
  \layout { }
  \midi { }
}
