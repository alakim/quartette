\version "2.12.3"

\header{
  title="Fly to the Rainbow"
  composer="Scorpions"
}


SoloI = \relative c''{
  \partial 2{r8 d8 g [g,] |}
  c4. es8 f \acciaccatura f g~ | g4 f es | \acciaccatura bes'8 c2.~ | c4. c8 (bes as) | g2 \times 2/3{c8 [r c] } |
  c4 \acciaccatura c es4. c8 | \acciaccatura c es2.~| es4 r8 
}

SoloII = \relative c'''{
  c8 es4 | \times 4/5 {g16 c g c g~} g2 | \acciaccatura f8 g4 f es | \acciaccatura bes' c2. |
  \acciaccatura bes c2 r8 g,8 | \acciaccatura es'8 f2 \times 2/3 {es8 c es}| \times 2/3{c8 [g c]} \times 2/3{bes8 [g \acciaccatura f g~]} \times 2/3{g8 [f es]} |
  \acciaccatura es8 f2. | \acciaccatura f8 g2 (f4)| \times 2/3{es8 c4~} c2 |
}

Riff = {
  <es' bes'>2. | <g d'>2.~ | <g d'>4 r4 
}

SoloIII = \relative c'''{
  g4 \bar "||" 
  \acciaccatura es'8 f2 \times 2/3{es8 [r8 c]} | \times 2/3 {es8 c g} \acciaccatura bes8 c4 \acciaccatura bes8 c4 | \acciaccatura bes8 c2.~ |
  c4. c8~ \times 2/3{c8 [d es]} | \acciaccatura f8 as4 \acciaccatura f8 g2~ | g4 r8 \acciaccatura bes8 c8~ c8 [bes] | c8 [bes~] bes [g16 bes] g4~ | g4 \acciaccatura f8 g2 |
  \acciaccatura bes8 c2 bes4 | \acciaccatura f8 g2 \times 2/3{es8 [r f]} | es16 [c c r] c8 c c c~ | c2 r8 es,8 | \acciaccatura bes'8 c2 bes8 g | \acciaccatura es'8 f2 es8 c |
}

HarmonyI = \chordmode{
  \partial 2 {g2:7}
  c2.:m r f2:m es4 f2.:m c:m
  r as r c:m r f2:m es4
  f2.:m c:m r f:m g c:m
  es2. g r     c2.:m r f2:m es4 
  f2.:m c:m r as r
  c:m r f2:m es4 f2.:m c:m 
}

<<
  \new ChordNames{
    \HarmonyI
  }
  
  \new Staff{
    \set Staff.instrumentName = "Guitar"
    \clef treble \time 3/4 \key c \minor
    \SoloI 
    \ottava #1
    \SoloII
    \ottava #0
    \Riff
    \ottava #1
    \SoloIII
  }
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \transpose bes c{
      \clef treble \time 3/4 \key c \minor
      \SoloI 
      \SoloII
      \Riff
      \SoloIII
    }
  }
>>
