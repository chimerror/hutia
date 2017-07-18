\language "english"
\version "2.18.2"
\header {
  title = "Home, Day 0"
  composer = "Jason Mitchell"
}
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = #"flute"
      \relative e' {
        \key e \minor
        \time 6/8
        \tempo 8 = 220
        r2. | r2. |
        r2. | r2. |
        e4 e4 r8 d8 | c8 e8 g8 e8 g4 |
        a,4 a4 r8 c8 | d8 fs8 a8 fs8 g4 |
        e4 e4 r8 d8 | c8 e8 g8 e8 g4 |
        a,4 a4 r8 c8 | d8 fs8 a8 fs8 g4 |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        e4 e4 r8 d8 | c8 e8 g8 e8 g4 |
        a,4 a4 r8 c8 | d8 fs8 a8 fs8 g4 |
        e4 e4 r8 d8 | c8 e8 g8 e8 g4 |
        a,4 a4 r8 c8 | d8 fs8 a8 fs8 g4 |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        g'4 e c8 c | d4 b g8 g |
        c4 a f8 f | e'4 c a8 a |
        a'4 f d8 d8 | c4 a f8 f |
        d'4 b g8 g | d'4 b g8 g |
        g'4 e c8 c | d4 b g8 g |
        c4 a f8 f | e'4 c a8 a |
        a'4 f d8 d8 | c4 a f8 f |
        d'4 b g8 g | d'4 b g8 g |
        r2. | r2. |
        r2. | r2. |
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"acoustic grand"
      \relative e'' {
        \key e \minor
        \clef "treble^8"
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        r2. | r2. |
        g8 g8 c8 c8 e4 | r8 c4 e4. |
        a,8 a8 d8 d8 fs4 | r8 d4 fs4. |
        e8. g8. e8 a,8. r16 | g'8. e8. a8 c8. r16 |
        a8. c8. e,8 g8. r16 | fs8. d8. a8 r16 e'8. |
        g,8 g8 c8 c8 e4 | r8 c4 e4. |
        a,8 a8 d8 d8 fs4 | r8 d4 fs4. |
        e8. g8. e8 a,8. r16 | g'8. e8. a8 c8. r16 |
        a8. c8. e,8 g8. r16 | fs8. d8. a8 r16 e'8. |
        r2. | r2. |
        r2. | r2. |
        c8 c8 g8 g8 e4 | r8 g4 b4. |
        a8 a8 f8 f8 c4 | r8 e4 c4. |
        a'8. d8. a8 c8. r16 | a8. c8. f8 a8. r16 |
        g,8. b8. d,8 f8. r16 | g8. b8. d8 r16 f8. |
        c8 c8 g8 g8 e4 | r8 g4 b4. |
        a8 a8 f8 f8 c4 | r8 e4 c4. |
        a'8. d8. a8 c8. r16 | a8. c8. f8 a8. r16 |
        g,8. b8. d,8 f8. r16 | g8. b8. d8 r16 f8. |
        c8 c8 g8 g8 e4 | r8 g4 b4. |
        a8 a8 f8 f8 c4 | r8 e4 c4. |
        a'8. d8. a8 c8. r16 | a8. c8. f8 a8. r16 |
        g,8. b8. d,8 f8. r16 | g8. b8. d8 r16 f8. |
        r2. | r2. |
        r2. | r2. |
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"acoustic bass"
      \relative e, {
        \key e \minor
        \clef "bass_8"
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        e4 e8 e b4 | c4 c8 c8 g4 |
        a4 a8 a8 a4 | d4 d8 d g4 |
        fs4 fs8 fs c4 | a4 a8 a8 f4 |
        g4 g8 g8 f4 | c'4 e8 e g4 |
        c,4 e8 e g4 | g,4 b8 b d4 |
        a4 c8 c e4 | f4 a8 a c4 |
        d,4 f8 f a4 | f4 a8 a c4 |
        g,4 b8 d d4 | g,4 b8 b d4 |
        c4 e8 e g4 | g,4 b8 b d4 |
        a4 c8 c e4 | f4 a8 a c4 |
        d,4 f8 f a4 | f4 a8 a c4 |
        g,4 b8 d d4 | g,4 b8 b d4 |
        c4 e8 e g4 | g,4 b8 b d4 |
        a4 c8 c e4 | f4 a8 a c4 |
        d,4 f8 f a4 | f4 a8 a c4 |
        g,4 b8 d d4 | g,4 b8 b d4 |
        c4 e8 e g4 | a,4 c8 c e4 |
        b4 d8 d fs4 | b,4 d8 d fs4 |
      }
    }
    \new DrumStaff {
      \drummode {
        bd4 bd8 bd8 sn 4 | bd4 bd8 bd8 sn 4 |
        bd4 bd8 bd8 sn 4 | bd4 bd8 bd8 sn 4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>8 bd8 r8 bd8 <hh sn>4 | <hh bd>8 bd8 r8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
        <hh bd>4 <hh bd>8 bd8 <hh sn>4 | <hh bd>4 <hh bd>8 bd8 <hh sn>4 |
      }
    }
  >>
  \layout { }
  \midi { }
}
