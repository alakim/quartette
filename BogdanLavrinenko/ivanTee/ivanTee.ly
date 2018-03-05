\version "2.16.2"

\header {
  title="Иван по фамилии Чай"
  composer = "гр. День Радости"
}

HBreak = \chordmode {s1 s1 s1 s1 s1 s1 s1 s1 }
FlI = {
  \relative c'''{\mark "Проигрыш"
    gis1~ | gis2 fis8 e fis4 | gis1~ | gis2 fis8 e fis4 |
    gis2 e2~ | e2 a8 gis fis4 | gis1~ | gis1 |
  }
}
HRefr = \chordmode {
  e2 b | e1 | cis2:m gis | cis1:m |
  a | b | e | gis |
  e2 b | e1 | cis2:m gis | cis1:m |
  fis:m | b | e | e |
  
}
FlII = {
  \relative c''{
     cis8 b cis b cis4 b | gis8 b gis b gis4 fis | e8 fis e fis e4 b' | cis1 | 
     b8 cis b cis b4 gis | e'8 fis e fis e4 b | cis'8 b cis b cis4 gis | gis1 | 
  }
}
FlIII = {
  \relative c''{
     b8 cis b cis b4 fis | gis8 b gis b gis4 fis | e8 fis e fis gis4 b' | cis1 | 
     cis8 b cis b cis4 gis | fis8 e fis e fis4 gis4  | b8 cis b cis gis4 fis | gis1 | 
  }
}


<<
  \new ChordNames{
    \HBreak
    \HRefr
    \HRefr
  }
  \new Staff{
    \set Staff.instrumentName = "Flute"
    \time 2/2
    \clef treble
    \key cis \minor
    \FlI \break
    \mark "Припев"
    \FlII \FlII \bar "||" \break
    \mark "Припев (логичнее)"
    \FlIII \FlIII  \bar "||"
  }
>>
