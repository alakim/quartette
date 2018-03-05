\version "2.14.2"

\header {
  title = "Из пустого в порожнее"
  composer = "А.Калябин"
}

IntroChords = \chordmode {\transpose bes c'{
  \partial 8 {s8}
  s1 s1 s1 s1
  s2
  s1 s1 s1  s1 s1 s1  s1 s1 s1  
}}
Intro = {
  \key fis \minor
  \time 4/4
  \relative c'{
    \partial 8 {fis8^"Intro"|}
    \repeat percent 4 {a8 fis4 fis8 a16 b a4 fis8 |}
    \time 2/4 a8 fis16 gis a8 cis |
    \time 4/4
    \repeat percent 3 {b4. b  a8 gis |
                  a4. a8 b a gis16 a fis e |
                  fis2 r8 fis16 gis a8 cis |
    }
  }
}

HornIChords = \chordmode {\transpose es c{
   e1:m e:m e:m e:m
   d d a c
}}

HornI = \transpose es c{\relative c'{ \key e \minor
  \mark \markup \box {"Cl.Es"}
  r1^"Не даром" |
  e8 a b a gis e fis16 e d8 | e4 r2.^"гром ударил" | 
  e8 fis gis fis gis a gis a | b1~ | 
  b2. r4 | s1 |
  s1
}}

RiffIChords = \chordmode {\transpose bes c'{
  a1 c a c
  a2. c4 a2. c4
  a1 c
}}
RiffI = {
  s1 s1 s1 s1 
  s1 s1 
  s1 s1 
}

HornIIChords = \chordmode {\transpose bes c'{
  s1
  s1 s1   s1 s1   s1 s1   s1 s1   
}}

HornII = \transpose bes c'{\relative c'{
  \key e \minor
  \mark \markup \box{"Cl.B"}
  r2^"Coda" r8 e g b | 
  \repeat percent 4 { b2 a4 \times 2/3{r8 fis g} | fis2 r8 e g b |}
}}

FluteIChords = \chordmode {\transpose bes c'{
  a1:m a:m a:m a:m 
  g g d f
}}
FluteI = {\transpose bes c'{ %t=3:32
  \key a \minor
  \relative c''{ r8^"обойдется..." e e d e e e d | e8 a, b c4 b8 a b | }
  \relative c''{ r8 e e d e d e f | g8 f4 f8 e d e4 | }
  \relative c''{ d8 e d b4 g4. | r4. a16 b c8 b a g |}
  \relative c''{ a2 r | r1 | }
}}

HornIIIChords = \chordmode {
	s1 s1 s1 s1 
	s1 s1 s1 s1 
	s1 s1 s1 s1 
	s1
}
HornIII = {\transpose es c{ %t=5:22
  \key e \minor
  \relative c''{a4.^"На соплях..." g4 fis8 e d | e8 d e g4 fis8 e16 d e8 | }
  \relative c''{r8 b a4 a8 g fis g | g8 fis e g4 g8 fis16 g a8 | }
  \relative c'{r8 e8 e d e b c d | e8 e e d e b4. |}
  \relative c'{r8 e8 e d e b c d | e8 d e fis g4 a4 |}
  \relative c''{b4. a4 g8 fis g | a4. g4 fis8 e4 |}
  \relative c''{b4. a4 g8 fis4 | a4. g4 fis8 e d | e2 r2 |}
}}

<<
  \new ChordNames{
    \IntroChords
    \FluteIChords
    \RiffIChords
    \HornIChords
    \HornIIIChords
    \HornIIChords
  }
  \new Staff{
    \clef treble 
    \set Staff.instrumentName = "Clarinet"
    \mark \markup \box{"Cl.B"}
    \Intro \bar"||" \break
    \FluteI \bar "||" \break
    \RiffI \bar "||" \break
    \HornI \bar"||" \break
    \HornIII \bar "||" \break
    \HornII \bar "||" \break
  }
>>
