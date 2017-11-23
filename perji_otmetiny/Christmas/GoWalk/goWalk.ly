\version "2.16.2"

\header {
  title = "Я ходила, я гуляла"
  composer = "traditional"
}


HRiff = {
  a1 g4 a1 g4 
  a2. d4 g a2. d4 g 
}
ClRiff = {
  \mark \markup \circle 1
  \relative c'{cis4. cis' a,4 b}
  \relative c'{cis4. cis' a,4 b} \bar "||"
  
  \mark \markup \circle 2
  \relative c'{cis4. cis' d,4 b}
  \relative c'{cis4. cis' d,4 b} \bar "||"
  
}
BRiff = {
  a,4. e cis4 g,
  a,4. e cis4 g,
  
  a,4. e fis,4 g,
  a,4. e fis,4 g,
}

<<
  \new ChordNames{
    \HRiff
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet"
    \key a \major
    \time 5/4
    \ClRiff
  }
  \new Staff{
    \clef bass
    \set Staff.instrumentName = "Bass"
    \key a \major
    \time 5/4
    \BRiff
  }
>>