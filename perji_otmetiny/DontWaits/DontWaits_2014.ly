\version "2.12.2"


\header{
  title = "Не ждут"
  composer = "Перьи Отметины"
}

HRiff = \chordmode {b1 gis:m e fis}
Riff = \relative c'{
  \relative c'{b8 dis4 fis b8 cis dis |}
  \relative c'{gis8 b4 dis8~dis2 | }
  \relative c{e8 gis4 b e8 gis b |}
  \relative c'{fis,8 ais4 cis8~cis2 \bar "||"}
}



\markup{
  \column{
    \line {A/B dur: \bold {1 6 4 5}}
  }
}

<<
  \new ChordNames{\HRiff}
  \new Staff{
    \clef treble \time 4/4 \key b \major
    \set Staff.instrumentName = "Clarinet B"
    \Riff
  }
>>





