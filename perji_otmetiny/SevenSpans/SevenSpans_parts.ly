
\header {
	title = "Семь пядей"
	composer = "Перьи Отметины"
}

\version "2.10.33"

ClarinetBbIntro = \relative c''{
  r2 cis8 dis cis b | gis1~ |gis1|
  dis'1 | fis2 dis | cis1~|cis1 \bar "||"
}

ClarinetBbI = \relative c'{
  e8 dis e fis fis gis gis4 | dis8 e dis b cis dis e fis |
  e8 dis e fis fis gis gis4 | dis1 |
  
  e2^"на соло флейты" gis, | dis'2 cis |e2 gis, | dis'1|
}

ClarinetBbII = \relative c''{
  %r1^"шепчет Отче наш" |
    e8^"...земля" dis cis b gis2 | fis8 gis gis fis e2 |
    e'8 dis cis b gis2 | fis8 gis gis2 \bar "||"
}

