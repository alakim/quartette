\version "2.16.2"

\header {
  title ="God Rest Ye Merry Gentlemen"
  subtitle="Вариант партии кларнета"
}

HrmI_v = \chordmode {d2 cis:7 | }
HrmI = \chordmode {
  fis1:m | \HrmI_v \HrmI_v
}
HrmII_v = \chordmode {a4 d cis2 | fis4:m g e2 |}
HrmII = \chordmode {
  b4:m e a cis:7 | fis4:m b e2 |
  \HrmII_v \HrmII_v
}

ClI = {
  \repeat volta 2{
    \relative c{fis4_"возрадуемся..."\breathe r8 a cis a gis fis |}
  }
  \alternative{
    {\relative c' {d4\breathe r8 b cis b a gis |}}
    {\relative c' {d4\breathe r8 b cis2 |}}
  }
}

ClII = {
  \repeat volta 2 {
    \relative c'{fis4 gis e_"родился..." eis | cis4 <dis b> <e gis,>2 |}
  }
  \alternative{
    {\relative c'{a4\breathe r8 d cis b a gis | a4 b e,2 |}}
    {\relative c'{a4\breathe r8 d cis b a gis | fis1 |}}
  }
}



<<
  \new ChordNames{
    \HrmI
    \HrmII
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble
    \time 4/4
    \key a \major
    \ClI \break
    \ClII
  }
>>