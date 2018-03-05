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
  \repeat unfold 2 {\Hrm} e1:m 
}

RecI = \relative c'{
  g'1^"Перед..." | a4. fis16 e  d e fis8 e d |
  e2.^"места..." a8 b16 a | \bend a b4. e16 d   b16 a8 g16~g16 a16 b8 | \break
  g4.^"спрятаться" b16 a b2 | a4 g16 fis e fis g8 fis e d |
%t55.0
  e2.^"от Его" a8 b | \bend a b4 a16 g fis e fis8 e d e |
  d8^"===" e8~e2. |
}

RecII = \relative c'{
  % t:1.36
  e1^"Перед..." | fis8 e16 d e fis g8  a8 g16 fis e fis g8 |
  s1 | s1 |
}
RecIII = \relative c'{
  % t:2.49
  d'4. c16 a fis8 g a g | a2^"ближним" s2 |
}

\markup{
  "Удачные моменты с репы 7.12.2012"
}
<<
  \new ChordNames{
    \HrmR 
    \Hrm 
    \chordmode{d1 a1:m}
  }
  \new Staff{
    \set Staff.instrumentName = "Recorder in C"
    \clef treble \time 4/4 \key e \minor
    \mark \markup "t:0.35-0.59"
    \RecI \bar "||" \break
    \mark \markup "t:1.36-1.41"
    \RecII \bar "||" \break
    \mark \markup "t:2.49-2.51"
    \RecIII \bar "||" \break
  }
>>

