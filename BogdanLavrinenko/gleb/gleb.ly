\version "2.16.2"

\header {
  title = "Глеб да Олеся"
  composer = "гр. День Радости"
}

HVerse = \chordmode {
  c1 a:m f g
  c1 a:m f e2:m a:7
  d1 g e:m a
  d1 g e:m a
}
Verse = {
  \mark "Verse"
  s1 s1 s1 s1 
  s1 s1 s1 s1 
  s1 s1 s1 s1 
  s1 s1 s1 s1 
}

HRefrain = \chordmode {
  c1 bes:maj d:m g
  c1 bes:maj d:m g
}
Refrain = {
  \mark "Refrain"
  s1 s1 s1 s1 
  s1 s1 s1 s1 
}

HSolo = \chordmode {
  c1 e:7 f g
}
Solo = {
  \mark "Solo"
  \relative c' {fis2. e8 d | g4. e cis4 | d2. a8 b | cis4. bes g4 |}
  \relative c{ fis2 d'8 e fis a | ais8 g c a s2 | s1 |  s1 | } 
}
SoloII = {
  \mark "Solo"
  \relative c' {fis2. e8 d  | e4. cis ais4 | b2. cis8 d | cis8. bes e8 g8. e cis8 |}
  \relative c'{ d1 | s1 | s1 | s1 | } 
}

<<
  \new ChordNames{\transpose bes c{
    \HVerse
    \HRefrain
    \HSolo \HSolo 
    \HSolo \HSolo 
  }}
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4
    \key d \major
    \Verse \bar "||" \break
    \Refrain \bar "||" \break
    \Solo \bar "|."\break
    \SoloII \bar "|."
  }
>>