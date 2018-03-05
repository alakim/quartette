\version "2.14.2"

\header{
  title = "Good King Wenceslas"
  composer = "traditional, The Irish Rovers"
}

HBreak = \chordmode {s8 | g4 d | g4 d | c4 d | g2 |}
Break = {
  \time 2/4 \key g \major
  \mark "Break"
  \partial 8 {d'8 |}
  \relative c''{g8 fis16 g a8 fis16 g | }
  \relative c''{d8 c16 b a8 d,|}
  \relative c'{e8 g g fis | g2 |}
}

HTuneA = \chordmode {g4 d | g4 d | c4 d | g2 |}
HTune = {
  \HTuneA \HTuneA
  \chordmode{g2 | g2 | c4 d | g2 |}
  \chordmode {g4 d | g4 d | c4 d | g4 d | g2 |}
}
TuneAA = \relative c'{ e8 d e fis | g4 g | }
TuneA = {\relative c''{g8 g g a | g8 g d4 |} \TuneAA}
Tune = {
  \time 2/4 \key g \major
  \mark "Tune"
  \TuneA \TuneA
  \relative c''{d8 c b a | b8 a g4 | } \TuneAA
  \relative c'{d8 d e fis | g8 g a4 | d8 c b a | g4 b | g2 |}
}


<<
  \new ChordNames{\HBreak \HTune}
  \new Staff{
    \clef treble
    \Break \bar "||"
    \Tune \bar "||"
  }
>>
