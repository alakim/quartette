\version "2.16.2"


\header{
  title = "Скребутся мыши"
  composer = "гр. Перьи Отметины"
  subtitle = "партия флюгельгорна"
}


Hrn = {\relative c''{
  \mark "у меня есть холмы..."
  b1 | cis1 | ais4. dis8~dis2~ | dis1 \bar "|."
}}

HrnI= \relative c''{
  \mark "радость..."
  cis4. fis,8~fis2 | gis4. b8~b2 | ais4. fis8~fis2 | r4 fis gis ais  |
}

HrnII = \relative c''{
  \mark "и когда..."
  b2 ais4 b | ais2 gis | cis2 b4 cis | b2 ais | dis2 cis4 b | gis2 ais | fis1 | 
}


<<
  \new Staff{
    \set Staff.instrumentName = "Flugelhorn"
    \clef treble
    \time 4/4
    \key b \major
    \Hrn \break
    \HrnI \break
    \HrnII
  }
>>