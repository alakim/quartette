\version "2.16.2"

\header {
  title="Музыка весеннего солнца"
  composer = "гр. День Радости"
}

HI = \chordmode {
  b1 e
  b1 e
  b1 e
  b1 e
  fis fis
}
HII = \chordmode{
  cis1:m e
  fis fis
}
HIII = \chordmode{
  cis1:m e
  fis:m b
  fis:m gis:m
  fis1 fis
}
ClI = {
  \key cis \major
  \mark \markup{\circle A}
  \relative c'''{
    r2 gis8 eis4 gis8 | fis2. eis8 dis | cis2 gis'8 eis4 gis8 | 
     fis2 gis | ais8 gis4. gis8 eis4 gis8 | 
     fis2. eis8 dis | cis2 gis'8 eis4 gis8 | fis2 gis | ais2 bis8 ais bis ais |
     s1 |
  }
}
ClII = {
  \mark \markup{\circle B}
  \relative c'{fis2. eis8 dis | fis8 eis4 dis8 cis bis4 cis8 | gis'8 fis4 gis4.~gis4 | dis8 cis4 dis4.~dis4 |}
  \relative c'{fis2. eis8 dis | fis8 eis4 dis8 cis bis4 cis8 | dis4. fis8~fis2 | gis4. ais8~ais2 |}
  
}
ClIII = {
  \mark \markup{\circle C}
  s1 s1 s1 s1 
  s1 s1 s1 s1 
}

<<
  \new ChordNames{\transpose bes c{
    \HI
    \HII \HII 
    \HIII
  }}
  
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \time 4/4
    \ClI \bar "||" \break
    \ClII \bar "||" \break
    \ClIII \bar "||"
    
  }
>>