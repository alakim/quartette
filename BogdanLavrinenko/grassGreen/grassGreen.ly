\version "2.14.2"

\header {
  title = "О зелени трав"
  composer = "гр. День Радости"
}
HIntro = \chordmode {
  d1 d1 g1 g1
}

HClRiff = \chordmode {
  b1:m c e:m a a
  a
}
ClRiff = {
  \mark "Riff"
  \repeat volta 2{
    \relative c'{b8 fis'4 d b8 d b | e8 b4 c a8 g a |}
    \relative c'{b8 e,4 g e'8 b g |}
  }
  \alternative{
    {\relative c'{a8 cis4 e8~e2 | cis8 e4 a8~a2 |}}
    {\relative c'{a8 cis4 e8~e2 |}}
  }
}

ClIntro = {
  \mark Intro
  \relative c'{fis4. d4 e8 d fis | a4. fis4 }
  \relative c''{ d8 e fis| b,1 |}
  \relative c''{cis4 b8 e4 d8 a' g~ | g4. fis4. a8 fis |}
  \relative c''{e8 d fis b a fis d a | b4. a'4 g4. |}
  \relative c''{b4. a4 b4. |}
  \relative c'{fis1 | fis8 e d a' g fis e cis |}
  \relative c'{d4. e g4 | b8 a g b d b a g |  }
  \relative c''{a4. b4. d4 | fis8 e d fis, g a fis d }
  \relative c'{b4. a b4 |}
  \relative c'{d1 |} 
}

<<
  \new ChordNames{
    \HIntro \HIntro
    \HIntro \HIntro
    \HClRiff
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble
    \time 4/4
    \key d \major 
    \ClIntro
    \bar "||" \break
    \ClRiff
  }
>>