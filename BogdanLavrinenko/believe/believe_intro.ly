\version "2.16.2"

\header {
  title="Я верю тебе"
  composer = "гр. День Радости"
}

HVerse = \chordmode {
  a1:m | d:m | f | g |
}

HIntro = {
  \HVerse \HVerse 
}
Intro = {
  \mark Intro
  \relative c''{c4 b8 c4 e,8 d e | %{f4 a,8 b4 a8 c d %} f4. a,8~a2 | }
  \relative c'{c8 c b c4 a'4. | b4 as8 f4 as8 f d | }
  \relative c'{e4 c8 dis4 b8 c b |} 
   s1 | s1 | s1 | 
}


<<
  \new ChordNames{
    \HIntro
  }
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \Intro
  }
>>
