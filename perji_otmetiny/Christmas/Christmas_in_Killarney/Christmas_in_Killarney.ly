\version "2.16.2"

\header {
  title="Christmas in Killarney"
  composer = "traditional & P.Otmetiny"
}

HVerse = \chordmode {\transpose bes c{
  b2.:m | b2.:m | fis2.:m | b:m |
  a2. | a2. | e2. | a2. |
  d2. | d2. | g4. a | b2.:m |
  g2. | d2. | e4.:m a | d2. |
}}
ClVerse = {
    \mark "Verse"
    \partial 8 {gis16 gis |}
    \relative c'{gis2. | cis4. b | gis4. fis4. | e4. r4 b'16 b|}
    \relative c'{\times 6/4 {b8 fis b dis} | \times 6/4 {b8 fis b dis} |
         cis4. ais | fis4. r4 b16 b |
    }
    \relative c'{b4. gis4 b16 b | b4. gis4 cis16 cis | cis2.~| cis2. | }
  \relative c''{a4 fis8 e4 fis8 | gis8 fis e fis4 e8 | cis4. dis | e2. \bar "||"}
}
ClVerseVII = {
  \mark "Verse var.2"
  \relative c'{e4. cis | gis4. fis | gis4. fis | e2. |}
  \relative c'{b4 fis8 b4 e8 | b4 fis8 b4 e8 | cis4. ais | fis2 r8 b'16 b |}
  \relative c''{b2 r8 e,16 e | e2. | cis'4 cis8 b4 a8 | gis4 cis8 cis4. |}
  \relative c''{a4 fis8 e4 fis8 | gis4 e8 fis4 b,8 | cis4 a8 dis4 b8 | e2. \bar "||"}
}

HRefrain = \chordmode {\transpose bes c{
  d2. | d2. | g2. | d2. | g2. d | e4.:m a | d2. |
}}

ClRefrain = {
  \relative c''{
    \mark "Refrain"
    \partial 8 {b16 b |}
    b4. e,4 b'16 b | b4. e,4 cis'16 cis | cis2. | e,2. |
  }
  \relative c''{a4 fis8 e4 fis8 | gis8 fis e fis4 e8 | cis4. dis | e2. \bar "||"}
}

HVistleSolo = \chordmode {
   e2.:m | d2. | e2.:m | d4. e:m |
   e4.:m c | g d | e:m a:m | b:7 e:m |
   e4.:m c | g d | e:m g   | d e:m |
}
VistleSolo = {
  \mark "Vistle Solo"
  \repeat volta 2{
    \improvisationOn
    b'2.^"ad lib x4" | b'2. | b'2. | b'4. b' | 
    \improvisationOff
  }
  \repeat volta 2{
    \relative c{fis4.^"x2" a | e4. b' | fis4. gis | b a | }
    \relative c{fis4. a | e b' | fis4. a8 b cis | b4. fis |}
  }
}


<<
  \new ChordNames{
    \partial 8{s8} 
    \HVerse
    \HVerse
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName="Clarinet B"
    \key e \major
    \time 6/8
    \ClVerse \break
    \ClVerseVII
  }
>>

<<
  \new ChordNames{
    \partial 8{s8} \HRefrain
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName="Clarinet B"
    \key e \major
    \time 6/8
    \ClRefrain
  }
>>

<<
  \new ChordNames{\transpose bes c{
    \HVistleSolo
  }}
  \new Staff{
    \clef treble
    \set Staff.instrumentName="Clarinet B"
    \key e \major
    \time 6/8
    \VistleSolo
  }
>>
