\version "2.16.2"

\header {
  title = "Ребёнком"
  composer = "гр. День Радости"
}

HI = \chordmode {
  e1 b e b
  a1 b a b
}

ClI = {
  \relative c'''{b8 ais4. gis8 fis 4. |}
  s1 s1 s1 
  s1 s1 s1 s1 
}

<<
  \new ChordNames {\transpose bes c{ \HI}}
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \time 4/4
    \key fis \major
    \ClI
  }
>>
