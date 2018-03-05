\version "2.16.2"

\header {
  title = "Яблоки надежды"
  composer = "Богдан Лавриненко"
}

HSolo = \chordmode {\transpose bes c{
    g1 c2 g d1 a1:m
    d:m a:m g g 
}}
Solo = {
  \time 2/2 
  \mark Solo
  \relative c'{e1 | d4 cis a2 | e'1 | d4 cis b2 | e1 | d4 cis b2 | e1~ |e1 |}
}

HRefr = \chordmode {
  \time 4/4
  e2:m b:m | a d |
  e2:m b:m | a d |
  e2:m b:m | a d |
  \time 3/4 
  g4. fis | g4. fis |
}
ClRefr = {
  \mark Refrain
  \key d \major
  \time 4/4
  \relative c'{g4. b8~b2 | e4. d8~d2 | b4. d8~d2 | e4. fis8~fis2 |}
  \relative c'{g4. b8~b2 | e4. d8~d2 | }
  \time 3/4
  \relative c''{g4. fis | d cis |}\bar "||"
}

Break = \relative c{
  \mark Break
  \cadenzaOn
  fis8 a c dis fis a c dis 
  \cadenzaOff
  \bar "|" e1 \bar "||"
}


<<
  \new ChordNames{
    \HSolo
    \HRefr
  }
  \new Staff{
    \set Staff.instrumentName = "Cl.B"
    \key fis \minor
    \Solo  \break
    \ClRefr \break
    \Break
  }
>>