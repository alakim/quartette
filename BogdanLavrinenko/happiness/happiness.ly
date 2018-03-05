\version "2.14.2"

\header {
  title = "Счастье"
  composer = "гр. День Радости"
}

HVerse = \chordmode {
  g2 d a d 
  g2 d a b:m 
  g2 d a b:m 
  g2 d g4 a d2 
}

HRefrain = \chordmode {
  s1 b1:m d b:m a
}
HBreak = \chordmode {
  g1 g1 
}

HCoda = \chordmode {
  g1 g g g d
}

ClVerse = {
  \mark "Verse"
  \repeat percent 3{
      \relative c'{b16 b8 b16~b4 d8 a~a4 | e'8 cis4 a8 d2 |}
  }
  \relative c'{b16 b8 b16~b4 d8 a~a4 |g'8 b,16 e~e8 cis16 a d2 |}
}
Refrain = {<<
  {\bar "||"
    \mark "Refrain"
    \stemUp
    s2. \relative c''{a8 b}
    \repeat volta 2{
      \relative c''{| d2 d16 d d8~d e | e8 d~d2 a8 b | d2 d16 d d8~d e8 | e2. a,8 b |}
      
    }
  }
  \new CueVoice{
      \stemDown
      \relative c'{s2. fis8_"Voice" a | b2 b16 b8 b16 b16 a fis8 |}
      \relative c''{a8 fis~fis2 fis8 a | b2 b16 b8 b16 b a fis8 | a2. fis8 a |}
  }
>>}
ClBreak = {
  \mark Break
  \relative c''{b16 a8 b16 a16 g a8 d8^> b e^> d | g16 e8 d16 e16 d b8 d2\trill \bar "||"}
}

ClCoda = {
  \mark Coda
  \repeat percent 4{
    \relative c'''{\times 2/3{b8 a b} \times 2/3{a8 g a } \times 2/3 {g8 e g} \times 2/3{e8 d e}}
  }
  a''1\fermata
  \bar "|."
}

<<
  \new ChordNames{
    \HVerse  
    \HRefrain
    \HBreak
    \HCoda
  }
  
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 4/4 \key d \major 
    \ClVerse
    \Refrain
    \ClBreak
    \ClCoda
  }
>>