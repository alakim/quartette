\version "2.16.4"

\header {
  title = "Светлой печали радость"
  composer = "Л.Щербакова"
}

HSoloI = \chordmode {
    d2:m g:m g:m a
    d2:m g:m g:m a
    d2:m g:m g:m a
    g2:m a g2:m a
}

SoloI = {
  \time 2/4
  \key d \minor
  \mark "Intro"
  \relative c'{d4 d | g2 | bes4 bes | a2 |}
  \relative c'{d4 d | g2 | g8 f g4 | a2 |}
  \relative c'{d4 d | g2 | bes4. g8 | a8 g a4 |}
  \relative c''{bes4 a8 g | a8 e8 e4 | bes'4 a8 g | a2 \bar "||" }
}


SoloII = {
  |s1^"своим врачам..."|
  \mark Solo  
  \relative c''{d4 d | g4 g | f4 f | a,8 cis e cis |}
  \relative c''{d4 d | g8 f g4 | a4 a | g8 a g e |}
  \relative c''{d4 d | g8 f g4 | a4 a | g8 f g e |}
  \relative c''{d4 d | g8 f g4 | f4 f | e2 |}
  
  \relative c'{d4 d | g8 f g4 | bes4 bes | a8 g a4 |}
  \relative c'{d4 d | g8 f g4 | g8 f g4  | a2 |}
  \relative c'{d4 d | g8 f g4 | g4 g | a8 g a4 |}
  \relative c''{bes4 a8 g | a8 e e4 | bes'4 a8 g | a2 \bar "||"}
}

Coda = {
  |s1^"Благую весть...(2р)"|
  \mark Coda
  \relative c''{d4 d | g4 g | f4 f | a,8 cis e cis |}
  \relative c''{d4 d | g8 f g4 | a4 a | g8 a g e |}
  \relative c''{d4 d | g8 f g4 | a4 a | g8 f g e |}
  \relative c''{d4 d | g8 f g4 | f4 f | e2 |}
  |s1^"За окном" s1^"непогодится" |
  \relative c'{d4 a' | g8 f e4 | d4 f | e2\fermata \bar "|."}
}


<<
  \new ChordNames{
    \HSoloI 
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Oboe (Rec.C)"
    \SoloI \break
    \SoloII \break
    \Coda
  }
>>