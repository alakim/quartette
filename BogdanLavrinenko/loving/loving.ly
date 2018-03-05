\version "2.16.2"

\header {
  title = "Любя"
  composer = "гр. День Радости"
}


HSolo = \chordmode {
  g1 c2 d
  g1 c2 d
  g1 c2 d
  d1
}
Solo = {
  \mark Solo
  \relative c''{b2. a8 g | e4 d fis a |}
  \relative c''{b2. a8 g | e4 d fis a |}
  \relative c''{b2 a8 b d e | b8 a4 g8 a4 g | fis1^"один не сможет..." \bar "||" }
}


<<
  \new ChordNames{
    \HSolo
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Flute"
    \time 4/4
    \key g \major
    \Solo
  }
>>
