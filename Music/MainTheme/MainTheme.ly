\language "english"
\version "2.18.2"
\header {
  title = "Main Theme"
  composer = "Jason Mitchell"
}
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = #"distorted guitar"
      \relative d' {
        \key d \major
        \time 4/4
        \tempo 4 = 175
        r1 | r1
        r1 | r1
        r1 | r1
        r1 | r1
        d1 | d4 d d d8 d8 |
        fs4 d4 b2 | a1
        d1 | d4 d d d8 d8 |
        fs4 d4 b2 | a1
        a'4 fs8 d8 d2 | d4 d d d8 d |
        fs4 d4 b2 | a1
        a'4 fs8 d8 d2 | d4 d d d8 d |
        fs4 d4 b2 | a1
        d1 | d4 d d d8 d8 |
        fs4 d4 b2 | a1
        d1 | d4 d d d8 d8 |
        fs4 d4 b2 | a1
        a'4 fs8 d8 d2 | d4 d d d8 d |
        fs4 d4 b2 | a1
        a'4 fs8 d8 d2 | d4 d d d8 d |
        fs4 d4 b2 | a1
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        r1 | r1 |
        fs'1 | fs4 fs fs8 fs8 fs4 |
        e4 gs4 b2 | a1
        fs1 | fs4 fs fs8 fs8 fs4 |
        e4 gs4 b2 | a1
        fs8 a8 cs4 a4 fs4 | b4 b4 b8 b8 b4 |
        e,4 gs4 b2 | a1
        fs8 a8 cs4 a4 fs4 | b4 b4 b8 b8 b4 |
        e,4 gs4 b2 | a1
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric bass (finger)"
      \relative d, {
        \key d \major
        \clef "bass_8"
        d4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        r1 | r1 |
        r1 | r1 |
        d,4 d8 d8 r4 d4 | g4 g8 g8 r4 g4 |
        b4 b8 b8 r4 b4 | a4 a8 a8 r4 a4 |
        d,4 d8 d8 r4 d4 | gs4 gs8 gs8 r4 gs4 |
        cs,4 cs8 cs8 cs4 cs4 | fs4 fs8 fs8 fs4 fs4
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
        fs4 fs8 fs8 fs4 fs4 | b4 b8 b8 b4 b4 |
        e,4 e8 e8 e4 e4 | a4 a8 a8 a4 a4 |
      }
    }
    \new DrumStaff {
      \drummode {
        bd4 r bd8 bd r4 | bd4 r bd8 bd r4 |
        bd4 r bd8 bd r4 | bd4 r bd8 bd r4 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        bd4 sn bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        bd4 sn4 bd8 bd sn4 | sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 sn32 r2 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        bd4 sn4 bd8 bd sn4 | bd4 sn bd8 bd sn4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
        <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 | <hh bd>4 <hh sn>4 <hh bd>8 bd <hh sn>4 |
      }
    }
  >>
  \layout { }
  \midi { }
}
