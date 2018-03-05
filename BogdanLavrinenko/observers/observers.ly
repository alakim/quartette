\version "2.12.2"


\header {
  title = "Наблюдательская"
  composer = "гр. День Радости"
}

HIntro = \chordmode {
  d1 a a d
  g1 b2:m a 
  f2 g:m c1
}
Intro = {
  \mark "Intro"
  s1 | s1 | s1 | s1 | 
  s1 | s1 | 
  \relative c''{a2 bes | c4 e8 g c2 \bar "||"} 
}

HVerse = \chordmode {
  d1 a a d
  d1 a g2 a
  d1
}
Verse = {
  \mark Verse
  s1 | s1 | s1 | s1 | 
  s1 | s1 | s1 | s1 | 
}

HRefrain = \chordmode {
  g1 d a d
}
Refrain = {
  \mark Refrain
  
  \relative c {e2. a8 e | e2. b'8 e, | fis2. b8 a | e8 e4 e8~e2 \bar "||"}
}


<<
  \new ChordNames{
    \HIntro
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Flute"
    \time 2/2
    \key d \major
    \Intro
  }
>>

<<
  \new ChordNames{\transpose bes c'{
    \HVerse
    \HRefrain
  }}
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4
    \key e \major
    \Verse \bar "||"
    \Refrain
  }
>>
