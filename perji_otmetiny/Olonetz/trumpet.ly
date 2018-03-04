\version "2.16.2"

\header {
  title = "Олонецкая"
  subtitle = "наброски к партии трубы"
  composer = "гр. Перьи Отметины"
}

HRefr = \chordmode {
  fis2:m d4 e |
  fis2:m d4 e |
  fis1:m |
  
}
TptI = {
  \mark "Riff"
  \relative c''{
    a4.^"Олонец..." b4 cis8 cis b |
    a4. b4 cis8 cis b |
    cis1 \bar "||"
  }
}

HCoda = { s1 | s1 }
TptII = {
  \relative c'{
    r1 |
    r4. fis8 a cis b  cis8~ |cis2 r | 
    r4. a8 b cis b fis8~ | fis2 r2 |
    r4. fis8 a cis b  cis8~ |cis2 r | 
    
    \bar "||"
  }
}

FlIIa = \relative c''{e8 g4 g~ g4 d16 e |d2~d8 a'8 g16 e d8 | }
FlII = {\mark "Coda"
   \relative c''{g2~g8 a'8 g16 e d8 | }
   \FlIIa \FlIIa \FlIIa 
   \relative c'''{ g1\fermata |}
 }


<<
  \new ChordNames{
    \HRefr 
    %\HCoda
  }
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \time 4/4
    \key d \major
    \TptI \break
  }
>>

<<
  \new Staff{
    \set Staff.instrumentName = "Flute"
    \clef treble
    \time 4/4
    \key c \major
    \FlII
  }
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \time 4/4
    \key d \major
    \TptII
  }
>>
