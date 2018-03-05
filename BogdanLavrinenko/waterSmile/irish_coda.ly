\version "2.16.2"

\header {
  title = "Улыбка воды"
  subtitle = "Концовка"
  composer = "гр. День Радости"
}

HFlute = \chordmode {f1 s1 s1 s1  }
Flute = {
  \relative c''{c8 c4 c8. a16 bes16 c bes8 a | c8 c4 c8. a16 bes16 c bes4 |}
  \relative c''{c8 c4 c8. a16 bes16 c bes8 a | c8 bes4 a8 bes8 a f4 |}
  \relative c'{f1~^"(на соло клавиш)" | f1~ | f1~ | f1 | }
}


<<
  \new ChordNames {
    \HFlute \HFlute 
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Flute"
    \time 4/4
    \key f \major
    \Flute
  }
>>
