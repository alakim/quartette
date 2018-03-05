\version "2.14.2"

\header {
   title = "Звездочка"
   composer = "А.Дербник"
}

ViolinI = {
  \time 12/8 \key d \major
  \partial 4. {\relative c'{fis8 g a |}}
  \relative c''{b4. fis e e8(fis g) | a4. fis d d8(e fis) |}
  \relative c''{g2. a4.(g) | fis2. (a4.) fis8 (g a) | b4. g e e8(fis g) | a4 b8 fis4 a8 d,4. d8(e fis) |}
  \relative c''{g4. g8 fis e d4. cis | d1. | s1.^"1й куплет" |}
  
  \relative c''{r2. r4. fis8^"Проигрыш" g a | b2.~b4. e,8(fis g) | a2.~a4. d,8(e fis) | g4. g8(fis e) d4. cis | d1. |}
  
  \relative c'{r8^"2й куплет" d8_. e_. fis_. e_. fis_. a_. r4 e8_. r4 | r8 d8_"simile" e fis e fis a r4 e8 r4 |}
  \relative c'{r8 d e fis e d b' r4 fis8 r4 | r8 e8 fis g fis g a8 r4 fis'8^"arc" a b |}
  \relative c''{fis4.~fis8 e d cis4.(d) | d4.~d8 cis b cis2. | fis8 g fis cis4(e8) fis4. d4(fis8) |}
  \relative c''{e2. e8 d cis d4 b8 | d4. e fis d | e2.~e4.~e8 r8 d |}
  
  \relative c''{d2.^"Проигрыш" r4. a'8 b a | b4. g e g8 a g | a4. fis d fis8(g a) |}
  \relative c'''{g4. b d4 e,(fis)| d1. |}
}

ViolinII = {
  \time 12/8 \key d \major
  \relative c''{r2. r4. fis8^"Проигрыш" g a| b2.~b4. e,8 (fis g) | a2.~a4. d,8(e fis)| g2. a4. (a4 g8) | fis1. | }
  \relative c''{a4.^"Куплет"~a8 g fis e4. fis | b4.~b8 g fis e4. fis4 (d8) |}
  \relative c''{a4.~a8 g fis b4.(g4 a8 ) | b4.(fis4 e8) a2. | b2. a4.(fis)|}
  \relative c''{b4. d cis cis8 b a | d4.(e) fis (d) | b4. b8 ais b cis2. |}
  \relative c''{d8 (e d e4.) fis4. d | b'8 (a g fis e d) cis4. (cis4 d8) |}
  \relative c''{d2.^"Coda" r4. fis,8(g a) | b4. g e e8 fis g | a4. fis d d8 (e fis) |}
  \relative c''{g2. a4.(e) | fis4 g a a4. fis8 g a | b4. d a d8(cis b) |}
  \relative c''{a4(b8) fis4(a8) d,4. d8 e fis | g4.~g8 fis (e) g4. cis, | d2. r4. fis'8^"2 раз"(g a) |}
  \relative c'''{b4. g e e8(fis g) | a4. fis d d8(e fis) | g2. a4.(e) | fis4 g a a4. fis8(g a) |}
  \relative c'''{b4. d a d8(cis b) | a4(b8) fis4(a8) d,4. d8(e fis) | g4.~g8 fis(e) g4. cis, | d1. |}
}


<<
  % \new Staff{
  %   \clef treble
  %   \set Staff.instrumentName="Violin"
  %   \ViolinI
  % }
  \new Staff{\transpose bes c'{
    \clef treble
    \set Staff.instrumentName="Clarinet B"
    \ViolinI
    \ViolinII
  }}
>>
