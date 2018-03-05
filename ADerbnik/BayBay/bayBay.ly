\version "2.16.2"

\header {
  title="Баю-бай"
  composer = "А.Дербник"
}

HIntro = \chordmode {\transpose bes c'{
  d2/g d/a | d1 |  d2/g d/a | d1 |
}}
Intro = {
  \mark Intro
  \relative c''{a4 cis fis,2 | e'8 dis cis b gis2 | a2 b2 | e,1 |}
  
  % \relative c''{gis4 gis16 fis gis8 b4 e, | }
  % \relative c''{e8 dis e16 dis cis b gis2 |}
  
  % \relative c''{gis16 a gis8 b16 cis b8 e16 dis e8 b8 gis |}
  % \relative c'{e4 dis e2 |}
  
  % \relative c''{gis16 a gis8 b16 cis b8 e4 dis  | e1|}
}

HRefrA = \chordmode {\transpose bes c'{
  d2/g d/a | d1 |  d2/g d/a | d1 |
}}
RefrA = {
  \mark Refrain
  \relative c''{gis2 b4 e, | e'4 dis e2 | gis,2 b | e,1 |} \bar "||"
}

HRefr = \chordmode {
  a2 b | e cis:m | fis1:m | b:7 |
  a2 b | e cis:m | fis2:m b | e1 |
}
ClRefr = {
  \mark "Припев"
  \relative c'{cis2 dis4 b gis1 | a2. fis4 b2 dis |}
  \relative c'{e2 dis4 b gis2. cis4~ | cis4 fis,2 b4~b1 |}
  \bar "||" \break
}

HCoda = {
  \HRefr
  \HIntro
}
Coda = {
  \mark Coda
  % \relative c''{gis4 gis16 fis gis8 b4 e, | }
  % \relative c''{e8 dis e16 dis cis b gis2 |}
  % \relative c''{gis16 a gis8 b16 cis b8 e16 dis e8 b8 gis |}
  % \relative c'{e8 cis b16 a gis a b4. dis8 |}
  
  \relative c'{e4 cis dis b gis b cis gis | a4 fis a cis b a fis dis' | }
  s1*4^"simile"
  
  \relative c''{gis2 b4 e, | e'4 dis e2 | gis,2 b | e,1 |} \bar "||"

}

<<
  \new ChordNames{
    \HIntro
    \HRefrA
    \HRefr
    \HCoda
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4 
    \key e \major
    \Intro \bar "||" \break
    
    \RefrA \bar "||" \break
    \ClRefr \bar "||" \break
    \Coda \bar "|."
  }
>>