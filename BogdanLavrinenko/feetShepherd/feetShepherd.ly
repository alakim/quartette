\version "2.16.2"

\header {
  title = "Ног пастух"
  composer = "гр. День Радости"
}

HI = \chordmode {g1 g1 c1 d1 }
FlI = \relative c'''{r8 b8 b b b a g a | g8 e4. r2 |}

<<
  \new ChordNames{\HI}
  \new Staff{
    \set Staff.instrumentName = "Flute"
    \clef treble
    \time 4/4
    \key g \major
    \FlI
  }
>>
