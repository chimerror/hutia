\language "english"
\version "2.18.2"
\header {
  title = "Work, Day 0"
  composer = "Jason Mitchell"
}
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = #"acoustic grand"
      \relative b'' {
        \key b \major
        \clef "treble^8"
        \time 6/8
        \tempo 8 = 132
        b4 b b| ds ds ds
        fs4 fs fs| b, b b
        cs4 cs cs | e e e
        gs4 gs gs | cs, cs cs
        gs4 gs gs | b b b
        ds4 ds ds | gs, gs gs
        fs4 fs fs | as as as
        cs4 cs cs | fs, fs fs
        b4 b b| ds ds ds
        fs4 fs fs| b, b b
        cs4 cs cs | e e e
        gs4 gs gs | cs, cs cs
        gs4 gs gs | b b b
        ds4 ds ds | gs, gs gs
        fs4 fs fs | as as as
        cs4 cs cs | fs, fs fs
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"flute"
      \relative b' {
        \key b \major
        \clef "treble"
        r2. | r2.
        r2. | r2.
        r2. | r2.
        r2. | r2.
        r2. | r2.
        r2. | r2.
        r2. | r2.
        r2. | r2.
        fs4 ds b8 b8 | fs'4 ds b8 b8 |
        fs'4 ds b8 b8 | fs'4 ds b8 b8 |
        gs'4 e cs8 cs8 | gs'4 e cs8 cs8 |
        gs'4 e cs8 cs8 | gs'4 e cs8 cs8 |
        ds'4 b gs8 gs8 | ds'4 b gs8 gs8 |
        ds'4 b gs8 gs8 | ds'4 b gs8 gs8 |
        cs4 as fs8 fs8 | cs'4 as fs8 fs8 |
        cs'4 as fs8 fs8 | cs'4 as fs8 fs8 |
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \relative b, {
        \key b \major
        \clef "bass"
        b8 b ds16 fs b,8 b ds16 fs | b,16 ds e8 e8 b16 e fs8 fs8 |
        b8 b ds16 fs b,8 b ds16 fs | b,16 ds e8 e8 b16 e fs8 fs8 |
        gs8 gs e16 cs gs'8 gs e16 cs | gs16 e b8 b8 gs'16 e cs8 cs8 |
        gs'8 gs e16 cs gs'8 gs e16 cs | gs'16 e b8 b8 gs'16 e cs8 cs8 |
        gs'8 gs b16 ds gs,8 gs b16 ds | gs,16 b cs8 cs8 gs16 b cs8 cs8 |
        gs8 gs b16 ds gs,8 gs b16 ds | gs,16 b cs8 cs8 gs16 b cs8 cs8 |
        cs8 cs as16 fs cs'8 cs as16 fs | cs'16 as e8 e8 cs'16 as fs8 fs8 |
        cs'8 cs as16 fs cs'8 cs as16 fs | cs'16 as e8 e8 cs'16 as fs8 fs8 |
        b,8 b ds16 fs b,8 b ds16 fs | b,16 ds e8 e8 b16 e fs8 fs8 |
        b8 b ds16 fs b,8 b ds16 fs | b,16 ds e8 e8 b16 e fs8 fs8 |
        gs8 gs e16 cs gs'8 gs e16 cs | gs16 e b8 b8 gs'16 e cs8 cs8 |
        gs'8 gs e16 cs gs'8 gs e16 cs | gs'16 e b8 b8 gs'16 e cs8 cs8 |
        gs'8 gs b16 ds gs,8 gs b16 ds | gs,16 b cs8 cs8 gs16 b cs8 cs8 |
        gs8 gs b16 ds gs,8 gs b16 ds | gs,16 b cs8 cs8 gs16 b cs8 cs8 |
        cs8 cs as16 fs cs'8 cs as16 fs | cs'16 as e8 e8 cs'16 as fs8 fs8 |
        cs'8 cs as16 fs cs'8 cs as16 fs | cs'16 as e8 e8 cs'16 as fs8 fs8 |
      }
    }
    \new Staff {
      \set Staff.midiInstrument = #"acoustic bass"
      \relative b,, {
        \key b \major
        \clef "bass_8"
        b4 ds fs | b,4 ds fs |
        b,4 ds fs | b,4 ds fs |
        cs4 e gs | cs,4 e gs |
        cs,4 e gs | cs,4 e gs |
        gs,4 b ds | gs,4 b ds |
        gs,4 b ds | gs,4 b ds |
        fs,4 as cs | fs,4 as cs |
        fs,4 as cs | fs,4 as cs |
        b4 ds fs | b,4 ds fs |
        b,4 ds fs | b,4 ds fs |
        cs4 e gs | cs,4 e gs |
        cs,4 e gs | cs,4 e gs |
        gs,4 b ds | gs,4 b ds |
        gs,4 b ds | gs,4 b ds |
        fs,4 as cs | fs,4 as cs |
        fs,4 as cs | fs,4 as cs |
      }
    }
    \new DrumStaff {
      \drummode {
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
        <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 | <bd hh>8 hh8 <sn hh>8 hh8 <sn hh>8 hh8 |
      }
    }
  >>
  \layout { }
  \midi { }
}
