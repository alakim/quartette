\version "2.16.2"

\header {
   title="День тепла"
   composer="гр. День Радости"
}


Hrm = \chordmode {
  c2 d2 | g1 |
  c2 d2 | g1 |
  c2 d2 | g2 e:m |
  c2 d2 | g1 |
}

Horn = {
  \relative c' {
      \partial 4 {d8 e |}
      \mark "Refrain"
      fis2 b4. gis8 | cis4. b16 a b8 a fis a |
      fis2 b4. gis8 | cis4 ~cis16 b a b cis16 b a b cis16 b a b |
      fis4. e8 b'4. gis8 | cis1 |
      fis,2 gis4. fis16 gis | a1 \bar "||"
  }
}


<<
  \new ChordNames{
    \transpose bes c{
      s4
      \Hrm
    }
  }
  \new Staff{
     \set Staff.instrumentName="Flugelhorn"
     \time 4/4
     \key d \major
     \Horn
  }
>>