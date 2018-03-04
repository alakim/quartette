\version "2.12.2"

\header{
  title="Грѣшный человѣче / Unforgiven"
  composer="Russian Traditional / Metallica / Перьи Отметины"
}

MainRiff = \relative c'{
    \mark \markup{\left-align "Main Riff"}
    \repeat percent 3 {
    <<
      {fis8 fis a cis, cis4 s8 b'8 | b8 b b fis fis4 s8 fis8 |}
      {b,8 b d fis, fis4 fis16 fis e'8 | e8 e e b b4 b16 b b8 |}
    >>
  }
  <<
      {fis'8 fis a cis, cis4 s8 b'8 |}
      {b,8 b d fis, fis4 fis16 fis e'8 |}
  >>
  \time 2/4
  <<
    {b'8 b b fis \bar "||"}
    {e8 e e b |}
  >>
  \time 4/4
}

MainRiffHarmony = \chordmode{
  \repeat percent 3 {r1 | r1 |}
  r1 | r2 |
}

Solo = \relative c'{
  \mark \markup{\left-align "Solo"}
  b8 cis d fis16 b,~ b8 r8 e8 e | d8 cis b16 cis8 b16 cis4 r8. fis16 |
  fis16 e8 e16 cis16 d8 cis16 d4 r8 cis | d8 cis b16 cis8 b16 cis2 |
  \time 2/4
  cis4 ais |
  \time 4/4
  r1 \bar "||"
}

SoloHarmony = \chordmode{
  r1 |r1 |r1 |r1 | r2 | r1 |
}


SinfulManTheme = \relative c'{
  d8 fis e d 
  \mark \markup{\left-align "Ничего не надо..."}
  cis4 cis | fis4 fis8 a a2 |
  e8 fis g fis e d cis4 | d2 r \bar "||"
}

SinfulManHarmony = \chordmode{r1 r1 r1 r1 }

LastRiff = \relative c'{
  \partial 4 {d16 cis8 cis16 |}
   \mark \markup{\left-align "Последний проигрыш - Аллилуия"}
   d8 r d16 cis8 b16 cis8 r cis16 cis8 cis16 | a8 a16 a b cis b8~ b4 d16 cis8 cis16 |
  d8 r d16 cis8 cis16 cis8 r r a | ais8 ais16 b~b b cis b  b4 d16 cis8 cis16 | 
  d8 r <<{fis16 e8 d16 e4}\\{d16 cis8 b16 cis4}>> r8 cis16 cis | e8 e16 e e e8 d32(cis) b4 d16 cis8 cis16 |
  d8 r d16 cis8 cis16~ cis8 r r <<{e16 e | cis8 cis d e16 e fis2}\\{cis16 cis | ais8 ais b cis16 cis b2}>>  \bar "||"
}

LastRiffHarmony = \chordmode{
  \partial 4{r4|}
  d2 a | fis:m b:m| 
  d2 a | fis b:m| 
  d2 a | fis:7 b:m| 
  d2 a | fis b:m| 
}

<<
  \new ChordNames{
    \MainRiffHarmony
    \SoloHarmony
    \SinfulManHarmony
    \LastRiffHarmony
  }
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 4/4 \key b \minor
    \MainRiff 
    \break
    <<{\transpose c c'{\Solo}}\\{\Solo}>>
    \break
    \SinfulManTheme
    \break
    \LastRiff
  }
>>
