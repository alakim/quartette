\version "2.16.2"

\header {
  title="Ensoniq TS10"
  composer = "Kalyabin A."
}

Alto = {
  \relative c''{r8 b16 a b a g8 b4 e, | r8 b'16 a b a g8 b4 e, |r8 a'16 g a g fis8 e8 a e fis | g8 a g fis g fis e d |}
}

Bass = {
  \relative c{e2~e8 r8 e16 d e g | e2 g4 d16 e g a | g2 e8 a16 g a g fis8 |r4. fis8 g fis e d |}
}

<<
  \new Staff{
      \clef treble
      \time 4/4 \key e \minor
      \Alto
  }
  \new Staff{
      \clef bass
      \time 4/4 \key e \minor
      \Bass
  }
>>
