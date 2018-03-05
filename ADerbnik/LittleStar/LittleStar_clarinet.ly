\version "2.14.2"

\header {
   title = "Звездочка"
   composer = "А.Дербник"
   subtitle = "партия кларнета в дуэте"
}

HSolo = \chordmode {
  % G A7 | D Hm | Em A7 | D | 
  g2. a:7 | d b:m | e:m a:7 | d1. |
}

SoloI = {
  \partial 4. {\relative c'{fis8 g a |}}
  \mark "Solo 1"
  \relative c''{b4. fis e e8(fis g) | a4. fis d d8(e fis) |}
  \relative c''{g2. a4.(g) | fis2. (a4.) fis8 (g a) | b4. g e e8(fis g) | a4 b8 fis4 a8 d,4. d8(e fis) |}
  \relative c''{g4. g8 fis e d4. cis | d1. | }
}

SoloII = {
  \mark "Solo 2"
  \relative c'{r2. r4. fis8 g a | b2.~b4. e,8(fis g) | a2.~a4. d,8(e fis) | g4. g8(fis e) d4. cis | d1. |}
}

SoloIII = {
  \mark "Solo 3"
  \relative c'{r2. r4. a'8 b a | b2.~b4. g8 a g | a4. fis2.~ fis8(g a) |}
  \relative c''{g4. b d4 e,(fis)| d1. |}
}

SoloIV = {
  \mark "Solo 4"
  \relative c'{r2. r4. fis8 g a| b2.~b4. e,8 (fis g) | a2.~a4. d,8(e fis)| g2. a4. (a4 g8) | fis1. | }
}

Coda = {
  \mark "Coda"
  % \relative c''{r2. r4. fis,8(g a) | b4. g e e8 fis g | a4. fis d d8 (e fis) |}
  % \relative c''{g2. a4.(e) | fis4 g a a4. fis8 g a | b4. d a d8(cis b) |}
  % \relative c''{a4(b8) fis4(a8) d,4. d8 e fis | g4.~g8 fis (e) g4. cis, | }
  % \relative c''{d2. r4. fis8^"2 раз"(g a) |}
  % \relative c''{b4. g e e8(fis g) | a4. fis d d8(e fis) | g2. a4.(e) | fis4 g a a4. fis8(g a) |}
  % \relative c''{b4. d a d8(cis b) | a4(b8) fis4(a8) d,4. d8(e fis) | g4.~g8 fis(e) g4. cis, | d1. |}
  \relative c'{e2. r4. a8 b cis | d2.~d8 cis d cis (b a) | a2. a4. a8 a ais |}
  \relative c''{b2. g4. g4 b8 | a4. fis8 g a  fis4. a8 b cis | d2. e4 d e |}
  \relative c''{fis4 e d cis b a | b4. b8 cis d e4.~e4 d8 | d1. |}
  
  \relative c''{r2. r4. fis,8(g a) | b4. g e e8 fis g | a4. fis d d8 (e fis) |}
  \relative c''{g2. a4.(e) | fis4 g a a4. fis8 g a | b4. d a d8(cis b) |}
  \relative c''{a4(b8) fis4(a8) d,4. d8 e fis | g4.~g8 fis (e) g4. cis, | }
  
}


Clarinet = {
  \time 12/8 \key d \major
  \SoloI \bar "||" \break
  \SoloII \bar "||" \break
  \SoloIII \bar "||" \break
  \SoloIV \bar "||" \break
  \Coda \bar "||" \break
}

<<
  \new ChordNames{\transpose bes c'{
    \chordmode{d4.} \HSolo \HSolo 
    \chordmode{d1.} \HSolo \chordmode{d1.} \HSolo \chordmode{d1.} \HSolo 
    \chordmode{d1.} \HSolo \HSolo \HSolo \HSolo
  }}
  \new Staff{\transpose bes c'{
    \clef treble
    \set Staff.instrumentName="Clarinet B"
    \Clarinet
  }}
>>
