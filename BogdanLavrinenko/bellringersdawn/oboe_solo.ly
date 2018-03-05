\version "2.16.2"

\header {
  title="Заря звонаря"
  subtitle="Oboe solo"
  composer = "гр. День Радости"
}

Hrm = \chordmode {
  c2 g2 | a1:m |
}
HrmBreak = \chordmode {c2 g2 | g1:7 }

OboeI = {
  \relative c''{e4. d8~d2~ | d4. c8 e d c d | c4. b8~b2~ | b4 a b c | } \break
  \relative c''{e4. d8~d2~ | d4 c4 g' d | e1~ | e1 | } \break
  s1^"ad.lib" s1 \bar "|."
}


<<
  \new ChordNames{
    \Hrm \Hrm \Hrm \Hrm 
    \HrmBreak
  }
  \new Staff{
    \set Staff.instrumentName = "Oboe"
    \time 4/4
    \clef treble
    \key c \major
    \OboeI
  }
  
>>

\markup{
  \column{
    \line{"Соло играется после второго куплета \"... Светел-светел Спас\","}
    \line{"а также в самом конце после \"... Заглянул в зарю молодой звонарь\""}
  }
}
