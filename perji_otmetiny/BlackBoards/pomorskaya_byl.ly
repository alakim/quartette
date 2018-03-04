\version "2.16.2"

\header {
  title = "Черные доски"
  subtitle = "Поморская быль"
  composer = "Евг. Ботяров, arr. by гр. Перьи Отметины"
}

HVaI = \chordmode {
  fis1:m e1 d cis:m 
  a1 gis:m fis:m cis:m
  e1 gis b:m fis:m 
  fis1:m e b:m fis:m
  b2:m fis:m d2 fis:m b2:m fis:m d2 fis:m 
  a2 fis:m d1 b2:m fis:m 
  %fis1:m
  d1
}
VaI = {
  \time 4/4  \key fis \minor
  \mark "Cl.B+Guit."
  \relative c''{a2 d8 cis b a| b1 | a2 b8 a gis fis | e1 |}
  \relative c''{e2 dis8 cis b a | b1 | cis2 b8 a gis fis | gis1 |}
  \relative c'''{gis2 fis8 e dis cis | b1 | fis'2 e8 d cis b | a1 |}
  \relative c'''{a2 gis8 fis e d | cis2 gis | d'2 e8 d cis b | a2 fis4 fis8 fis \bar "||"}
}
VaIa = {
  \mark "Acc./Cl.B"
  \relative c''{d8 cis b a a gis fis fis | cis'8 b a2 fis8 fis | d'8 cis b a a gis fis fis | cis'8 b a2 cis8 cis |}
  \relative c''{e8 cis cis b cis a gis fis | gis8 a fis2 a8 a | b8 cis cis b cis a gis fis | gis8 a fis2. \bar "|."}
}
VaIac = {\transpose c bes {
  % \relative c {r1 | r1 | r1 | r1 | }
  \relative e, { e2 gis | e4 gis2. | e2 gis | e4 gis2. | <dis' b>2~<dis gis,> | fis4 e2. | e,2 gis | fis4 e2. \bar "|." }
}}

<<
  \new ChordNames{\transpose bes c{
    \HVaI
  }}
  \new Staff{\transpose bes c'{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \VaI
    <<{\VaIa}\\{\VaIac}>>
  }}
>>
