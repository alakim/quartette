\version "2.16.2"

\header {
  title = "Травушка"
  composer = "гр. Перьи Отметины"
  subtitle = "партия кларнета"
}

Hrm = \chordmode {
  a2 g4 a | a2 g4 a |
  g2. a4 | g2. a4 | 
}

ClI = {
  \relative c''{b8 fis'4 b,8 dis8 cis b4 | b8 fis'4 b,8 dis8 fis b,4 | }
  \relative c''{a8 e'4 a,8 cis8 e b4 | a8 e'4 a,8 cis8 e b4 \bar "||"}
}

<<
  \new ChordNames{
    \transpose bes c{
      \Hrm
    }
  }
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \key b \major
    \time 4/4
    \mark "Основной рифф"
    \ClI
  }
>>
