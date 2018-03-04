\version "2.16.2"

\header {
  title="Авсень"
  composer = "гр. Перьи Отметины"
  subtitle = "партия кларнета - основной рифф"
}

HRiff = \chordmode {\transpose bes c{
  g1 | f2 g | f2 g | f2 g 
}}

ClRiff = {
  \key a \major
  \relative c'{r4 e cis8 d cis e8~|e8 d4 cis4 b8 a4 |}
  \relative c'{r4 e g4. d8~ |d4 e4 cis8 b a4 \bar "||" }
}


<<
  \new ChordNames{
    \HRiff
  }
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \time 2/2
    \ClRiff
  }
>>