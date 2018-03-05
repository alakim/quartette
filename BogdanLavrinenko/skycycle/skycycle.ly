\version "2.16.4"

\header {
  title = "Небосипед"
  composer = "гр. День Радости"
}


Riff = {
  \key a \minor
  \mark "Coda"
  \repeat volta 2{
    \relative c'{a8 a g a4 e4. | a8 a g a4 e4. |}
    \relative c'{c2~c8 a8 g a~ | a1 |}
  }
}


<<
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4
    \transpose bes c'{
      \Riff
    }
  }
>>
