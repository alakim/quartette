\version "2.14.2"

\header {
  title="Time"
  subtitle = "Guitar solo for clarinet"
  composer = "Pink Floyd"
}


GtrI = {
  \time 4/4 \key fis \minor
  \relative c'{fis2. r8 cis'16 b | cis2~cis8 cis4. | b2. g4 | fis4~fis16[(a b a)] a8 cis32 e fis16 fis8 e |}
  \relative c'{fis4. cis'2 cis32 b a16 | cis4. a'32 fis b16 cis8 a16 cis e8 cis | b4~b8. a16 gis4 \appoggiatura gis32 a16 gis e8 | fis1 |}
  %t=03:58
  \relative c'{\times 2/3 {fis8 a cis} fis2}
}


<<
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \transpose bes c{
      \GtrI
    }
  }
>>
