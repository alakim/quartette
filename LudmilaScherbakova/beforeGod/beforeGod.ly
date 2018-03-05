\version "2.14.2"

\header{
  title="Перед Богом ходим"
  composer="Л.Щербакова"
  subtitle = "Recorder by alakim"
}
bend = #(define-music-function (parser location noteA noteB) (ly:music? ly:music?)
    #{
        \override Staff.Stem #'transparent = ##t
        \appoggiatura{\stemDown \slurUp $noteA } 
        \revert Staff.Stem #'transparent
        $noteB
    #})

Hrm = \chordmode{
  e1:m d1 a1:m e1:m
}
HrmR = \chordmode {
  \repeat unfold 2 {\Hrm}  
}

VRI = {
  \relative c'{e8.^"Перед" fis16 g8 g g4 a8 b | a1 |}
  \relative c''{a8^"жизнь" a a g a b16 a g8 fis | g16 fis e8~e2 r4 |}
  \relative c'{e8^"душам" b'8 b a b4 a8 g | a1 |}
  \relative c''{a8^"ближним" a a g a b16 a g8 fis | g16 fis e8~e2 r4 |}
}
RRI = {
  \relative c'{g'1^"Перед..." | a4. fis16 e  d e fis8 e d |}
  \relative c'{e2.^"жизнь..." a8 b16 a | \bend a b4. e16 d   b16 a8 g16~g16 a16 b8 |}
  \relative c'{g'1^"душам" | fis8 e16 d e fis g8  a8 g16 fis e d e fis |}
  \relative c'{e2.^"ближним" a8 b | \bend a b4 a16 g fis e fis8 e d e \bar "||"}
}

<<
  \new ChordNames{
    \HrmR 
  }
  \new Staff{
    \set Staff.instrumentName = "Voice"
    \clef treble \time 4/4 \key e \minor
    \VRI
  }
  \new Staff{
    \set Staff.instrumentName = "Recorder in C"
    \clef treble \time 4/4 \key e \minor
    \RRI
  }
>>

VVI = {
  \relative c'{e8.^"а как будем" b'16 b8 a b4 a8 g | a1 |}
  \relative c'{e8 a a g a b16 a g8 fis | g8 e8~e2. |}
}
RVI = {
    \relative c'{r1  | fis4. e8 fis8 e16 d fis8 g16 a | }
    \relative c'{r1 | \bend a'8 b4~b16 cis b a g fis g a b8 a \bar "||"}
}
<<
  \new ChordNames{
    \Hrm
  }
  \new Staff{
    \set Staff.instrumentName = "Voice"
    \clef treble \time 4/4 \key e \minor
    \repeat volta 2 {\VVI}
  }
  \new Staff{
    \set Staff.instrumentName = "Recorder in C"
    \clef treble \time 4/4 \key e \minor
    \RVI
  }
>>

RVII = \relative c'{
   e4.^"умирать" fis8 g a16 g fis8 e | fis2. r4 |
   e4 c2 e8 d | e2. \bar "||"
}
<<
  \new ChordNames{
    \Hrm
  }
  \new Staff{
    \set Staff.instrumentName = "Recorder in C"
    \clef treble \time 4/4 \key e \minor
    \RVII
  }
>>


RVocII = \relative c''{
   b2.^"вокализ 2" a8 g | d'4~d8 c16 b a8 g a g | a2~a8 e' d c | e1 \bar "||"
}
<<
  \new ChordNames{
    \Hrm
  }
  \new Staff{
    \set Staff.instrumentName = "Recorder in C"
    \clef treble \time 4/4 \key e \minor
    \RVocII
  }
>>