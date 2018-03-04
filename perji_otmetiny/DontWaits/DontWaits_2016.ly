\version "2.16.2"

\header {
  title = "Не ждут"
  composer = "гр. Перьи Отметины"
  subtitle = "партия кларнета"
}

HI = \chordmode {b1 gis:m e fis}
Riff = {
  \relative c'{b8 dis4 fis b8 cis dis |}
  \relative c'{gis8 b4 dis8~dis2 | }
  \relative c{e8 gis4 b e8 gis b |}
  \relative c'{fis,8 ais4 cis8~cis2 \bar "||"}
}

Verse = {
  \relative c''{b2~b8 ais8 gis fis | dis8 fis8~fis2. |}
  \relative c''{gis2~gis8 fis e dis | cis1 |}
  \relative c''{b2~b8 ais8 gis fis | dis8 fis8~fis2. |}
  \relative c'{e2~e8 dis cis b | cis1 \bar "||"}
}


HBreak = \chordmode {\transpose bes c{
  d2 e | a2 fis:m |
  d2 e | a1 |
}}

Break = {
  r2^"(конец припева)" r8 \relative c'{ais8 cis dis |}
  \relative c'{e8 fis e dis16 cis16~cis8 fis,8 ais cis |}
  \relative c'{dis8 e dis cis16 gis'16~gis8 gis,8 b dis |}
  \relative c'{e8 fis e dis16 cis16~cis8 b ais cis | b2~b8 fis8 b dis |}
  
  \relative c'{e8 fis e dis16 cis16~cis8 fis,8 ais cis |}
  \relative c'{dis8 e dis cis16 gis'16~gis8 gis,8 b dis |}
  \relative c'{e8 fis e dis16 cis16~cis8 b ais cis | b1 \bar "||"}

}

<<
  \new ChordNames{
    \HI
    \HI \HI
    \HI \HI
    \chordmode{fis1 |}
    \HBreak \HBreak
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4 \key b \major
    
    \mark Intro
    \Riff \break
    
    \mark Verse
    \Verse \break
    
    \mark Refrain
    {r1^"(первая строчка)" |r1 |r1 |r1 |}
    \Riff \break
    
    \mark Break
    \Break
  }
>>



