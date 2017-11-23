\version "2.16.2"

\header {
  title = "Партия трубы"
  subtitle = "может к gentlemen пойдет"
}

TrI = {
  \relative c''{cis4 b8 a4 fis8 a b | cis8 b a b16 cis~ cis2 | }
  \relative c''{cis4 b8 a4 fis8 a b | cis4. d8 cis8 b a b |}
  \relative c''{cis4 b8 a4 fis8 a b | cis8 b a b16 cis~ cis2 | }
  \relative c''{cis4 b8 a4 fis8 a fis | fis2~fis8 a gis e | fis1 | }
}

<<
  \new Staff{
    \set Staff.instrumentName="Trumpet Bb"
    \clef treble
    \key a \major
    \time 4/4
    \TrI
  }
>>