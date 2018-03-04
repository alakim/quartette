\version "2.16.2"

\header{
  title = "Черные доски"
  composer = "Перьи Отметины"
}

OboeI = {
  \relative c''{cis8 b a b cis4 fis, | a8 gis fis e cis2 | cis'8 b a b cis4 fis, | gis1 |}
}

<<
  \new Staff{
    \clef treble
    \time 4/4 \key fis \minor
    \set Staff.instrumentName = "Oboe"
    \OboeI
  }
>>