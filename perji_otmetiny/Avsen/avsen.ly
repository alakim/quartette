\version "2.16.2"

\header {
  title = "Авсень"
  composer = "traditional/Перьи Отметины"
}

ClIntro = \relative c''{
  \mark Intro
  \partial 8 {cis16 d |}
  \repeat volta 2{ e8 e16 cis e4 e16 fis e d e8 cis | b4 cis8 e b4 cis8 cis16 d | }
}

ClMain = \repeat volta 2{
  \mark Riff
  \relative c'{e16 b32 a e16 a b a e a }
  \relative c'{e16 b32 a e16 a b a e a }
  \relative c'{ b4 cis8 cis b4 cis |}
}



<<
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4
    \key a \major
    \ClIntro
    \break
    \ClMain
  }
>>
