\version "2.14.2"

\header {
  title = "Иван-да-Марья"
  composer = "гр. День Радости"
}

HObRefrain = \chordmode {
  g2 e2:m
  g2 e2:m
  g2 e2:m
  a2 d
}
ObRefrain = {
  \mark Refrain
  \repeat percent 2{
    \relative c''{ g4 g g8 <fis d> e <fis d> | }
  }
  \relative c''{g4 g g8  d e fis | e4 a d,2 | }
}
ObSolo = {
  \mark "Solo"
  \relative c''{g4 b g8 a g fis | g8. fis16 e8 d e4 d |}
  \relative c''{g4 b g8 a g fis | e8. fis16 e8 a d,2 |}
}

<<
  \new ChordNames{
    \HObRefrain 
    \HObRefrain 
  }
  \new Staff{

    %$(add-grace-property 'Voice 'NoteHead 'style 'cross)
    \set Staff.instrumentName="Oboe"
    \clef treble \time 4/4 \key g \major
    \ObRefrain \bar "||"
    \ObSolo
  }
>>