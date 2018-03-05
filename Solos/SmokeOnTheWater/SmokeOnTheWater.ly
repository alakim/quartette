\version "2.12.3"

\header{
  title="Smoke on the Water"
  composer = "Solo by R.Blackmore"
}

SoloI = \relative c''{
  \partial 4 {d8 f |}
  g2 r4 \acciaccatura c8 d8 c| bes8 g4. bes8 r4 d,8 | f8 [g] bes \acciaccatura bes8 c~ c4 bes8 a | g8 [a] \times 2/3 {g16 (a g)} f8 g8 f es f |
  f8 g f g~g4 r8 g8 | bes8 [c] bes \acciaccatura bes8 c~ c8 c g bes | \acciaccatura f16 g16 g c bes a g ges f (es) c f es (d) c bes a | g8 bes a c bes es d c |
  bes8 (c bes4 ) c8 bes a bes | a8 bes a g~ g2 |  \acciaccatura c16 d16 d g \acciaccatura f16 g g g f e ( d) des ( c bes ) \times 2/3 {g8 c bes} | \times 2/3 { \acciaccatura c8 d4 \acciaccatura c8 d4 \acciaccatura c8 d4 } \acciaccatura c8 d4  d8 f |
  g8 d f g bes c (d4) | \acciaccatura c8 d8 c bes c g4. g8 | bes8 \acciaccatura f16 g16 g c bes g c bes g c bes c8 d | es8 d r4 
}

SoloII = \relative c'''{
  \acciaccatura f8 g4. f8~ |
  g8 f (g) f \acciaccatura f8 g4 r8 f | \acciaccatura f8 g8 f d c \acciaccatura c8 d2 | 
}

SoloIII = \relative c''{
  c16 (d) f8 d16 (c) bes8 c8 bes g4 | g'8 c bes c \acciaccatura c8 d2~ | 
  d8 [d d d] d [d d d] | \times 2/3 {d4 d des} \times 2/3 {des4 c f,~} | f4~ g2.~ | g1 \bar "|."
}

ChordsI = \chordmode{
  \partial 4 {r4}|
  g1:m r c g:m
  g1:m r c g:m
  g1:m r c g:m
  g1:m r c g:m
  c1 r f r
  g1 r r r
}

<<
  \new ChordNames{\ChordsI}
  \new Staff{
    \set Staff.instrumentName = "Guitar"
    \clef treble \time 4/4 \key g \minor
    \SoloI
    \ottava #1
    \SoloII
    \ottava #0
    \SoloIII
  }
  
  \new Staff {\transpose bes c{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 4/4 \key g \minor
    \SoloI \SoloII \SoloIII
  }}
>>