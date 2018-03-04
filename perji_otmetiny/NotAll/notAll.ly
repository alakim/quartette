\version "2.16.2"

\header {
  title = "Не всё"
  composer = "Перьи Отметины"
}

HVerse = \chordmode {\transpose bes c{
  %cis2:m e b fis
  b2:m d a e
}}
HRefrI = \chordmode {\transpose bes c{
  %gis2:m cis:m e dis:m
  fis2:m b:m d cis:m
  fis2:m b:m d e
}}
HRefrA = {
  \HRefrI
  \chordmode {\transpose bes c{
    b2:m d a e
    b2:m d a e
  }}
}
HRefrB = {
  \HRefrI
  \chordmode {\transpose bes c{
    a e b:m d
    a e b:m d
    a e b:m b:m
  }}
}

ClIntroHI = {
  \mark "Intro, Solo 1"
  \relative c'''{
    gis8 e4 cis8 b'8 gis4 e8 | fis8 dis4 b8 cis4 cis16 e fis8 | 
    gis8 e4 gis8 b8 gis4. | r8 dis'8 cis b ais8 b4 ais8 |
  }
  \relative c'''{
    gis8 e4 cis8 b'8 gis4 e8 | fis8 dis4 b8 cis4 cis16 e fis8 | 
    gis1 | fis1\trill \bar "||"
  }
}
ClIntroLow = {
  \relative c''{e8 cis4 e8 gis8 e4 b8 | dis8 b4 fis8 ais2 |}
  \relative c''{b8 cis4 e8 gis8 e4. | r8 fis4 dis8 cis8 dis4 fis8 }
  \relative c''{e8 cis4 e8 gis8 e4 b8 | dis8 b4 fis8 ais2 |}
  \relative c''{e1 | fis1 |}
}

ClIntro = << { \ClIntroHI } \\ { \ClIntroLow } >>

ClVerse = {
  \repeat volta 2{
    \mark "Verse"
    \relative c'{gis16 gis8 gis16 gis8 gis8~gis4. b8 | fis16 fis8 fis16 fis8 fis8~fis4 cis'8 b | }
  }
}

ClRefrI = {
  \relative c'{gis16 gis gis4 cis8~cis2 | dis8 b4 gis8 cis8 ais4 fis8 |}
  \relative c'{b16 b b4 b8 gis4. gis8 | e'2  fis |}
}
ClRefrA = {
  \mark "Refr.1"
  \ClRefrI
  \relative c''{gis4. b8~b2 | dis8 b4 fis8 cis'8 ais4 fis8 |}
  \relative c''{cis4. e8~e2 | dis8 b4 fis8  cis'4 r \bar "||"}
}

ClRefrB = {
  \mark "Refr.2"
  \ClRefrI
  \relative c''{dis2 fis | cis16 dis cis b gis8 fis gis4 cis | }
  \relative c''{b2 ais | gis16 ais gis fis gis8 fis e4 b |}
  \relative c{fis16 fis fis4 fis8~fis2 | gis16 gis gis4 gis8~gis2 \bar "||"}
}

ClSoloII = {
  \mark "Solo 2"
  \relative c''{gis16 fis8 gis16~gis2~gis8 r16 e | fis16 e8 fis16~fis2~fis8 r16 dis |}
  \relative c'{e16 dis8 e16~e2 cis4 | dis1 |}
  \relative c''{gis16 fis8 gis16~gis2 b4 | fis16 e8 fis16~fis2~fis8 r16 dis |}
  \relative c'{e16 dis8 e16~e2 cis4 | dis4~dis16 cis dis e fis2 \bar "||"}
}

<<
  \new ChordNames{
    \HVerse \HVerse\HVerse\HVerse
    \HVerse
    \HRefrA 
    \HRefrB
  }
  \new Staff{
    \set Staff.instrumentName = "Cl.B"
    \clef treble
    \time 4/4
    \key cis \minor
    \ClIntro \break
    \ClVerse \break
    \ClRefrA \break
    \ClRefrB \break
    \ClSoloII
  }
>>
