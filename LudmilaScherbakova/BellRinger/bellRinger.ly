\version "2.14.2"

\header {
  title = "Звонарь"
  composer = "Л.Щербакова"
}


Intro = {
  \mark Solo
  \partial 8{\relative c''{b16 a |}}
  \repeat volta 2{
    \relative c''{b8. g16 a8. fis16 g8 fis16 e | d2 a'8 b | \time 2/4 b4. b16 a | }
    \relative c''{\time 3/4 b8. g16 a8. fis16 g8 fis16 e | d2 a'8 b |  }
  }
  \alternative{
    {\relative c'{\time 2/4 e4. b'16 a |}}
    {\relative c'{\time 2/4 e2  |}}
  }
}


<<
  \new Staff{
    \clef treble
    \key e \minor
    \time 3/4
    \set Staff.instrumentName = "Recorder in C"
    \Intro
  }
>>