\version "2.18.2"

\header {
  title = "s1"
  composer = "alakim"
}

Hrm = \chordmode {
  f1 c 
  f1 c 
  f1 es 
  d d
}

Theme = \relative c''{
  a8 c4 c8~c2 | a8 c c d4 c4. |
  a8 c4 c8~c2 | a8 c c d4 c4. \bar "." \break
  a8 c4 c8~c2 | bes8 a4 g4. f8 fis~|
  fis1| r1  \bar "||"
}

<<
  \new ChordNames{\Hrm}
  \new Staff{
    \clef treble 
    \time 4/4
    \key f \major
    \Theme
}
>>
