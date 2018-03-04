\version "2.16.2"

\header {
  title = "Олонецкая"
  composer = "гр. Перьи Отметины"
  subtitle = "2015 г."
}

HBreakI = \chordmode {
  e2:m d2  g1 g2 d1
}
ClBreakI = {\transpose bes c'{
  \mark "Break I"
  \relative c''{ r2^"Олонец..." d2 | g,8 a  b2. | \time 2/4 fis'4. g8 | \time 4/4 d1 \bar "||"}
}}
HRiff = \chordmode {
  e2:m c4 d
  e2:m c4 d
  e1:m
}
ClRiff = {
  \mark Riff
  \relative c {fis8 cis'4 a4 fis8 b16 a gis8 | }
  \relative c {fis8 cis'4 a4 fis8 b4 | }
  \relative c'{cis1 |} \bar "||"
}

HCoda = \chordmode {
  g2. d4 |
  e2.:m d4 |
  e2.:m d4 |
  g1
}

ClCoda = {\transpose bes c'{
  \mark Coda
  \repeat volta 2{
    \relative c''{d2 r8 a' a16 g d8 | }
  }
  \alternative{
    {\relative c''{e8 g4 g4. r8 d16 e |}}
    {\relative c''{e8 g4 g4 a8 g16 e d8 |}}
  }
  g''1 \fermata \bar "||"
}}

<<
  \new ChordNames{\transpose bes c'{
    \HBreakI
    \HRiff
    \HCoda
  }}
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \time 4/4
    \key a \major
    \ClBreakI \break
    \ClRiff \break
    \ClCoda
  }
>>


