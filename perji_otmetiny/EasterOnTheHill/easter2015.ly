\version "2.16.2"

\header {
  title = "Пасха на холме"
  composer = "гр. Перьи Отметины"
}

HI = \chordmode {a2 d| e1 |}
HII = \chordmode {a2 fis2:m | d2 e |}
HIII = \chordmode {d1 | e1 |}

HFlute = {
  \HI \HI \HI \HII  \HII 
  \chordmode {a2 |}
  \HI \HI
  \HIII \HIII
  \chordmode {a1 |}
}
Flute = {
  \key a \major
  \time 4/4
  \relative c''{a2~a8 b cis d | cis4. b16 a b2 | a8 gis a2 fis'4 | e16 cis cis b a4 e'16 cis cis b a4 |}
  \relative c''{a4. d4 e8 fis4 | e4 a,8 b4. a8 gis | a2 r | r1 | r1 | r1 |}
  \time 2/4 {r2^"с холмогоров"|}
  \time 4/4
  \relative c''{a4. d4 cis8 a b~|b2 e8 fis e e~ | e2 a4. gis16 fis | e4. d16 d cis4. b16 cis32 b |}
  \relative c''{a2 r8 cis8. b32 cis b a16. | a4. b8 b4. a8 | a4. cis fis4 | fis4 e4. r16 d8 cis16 b a~ | a2 r \bar "||"}
}


ModulationHarm = \chordmode{fis2  a | b  d |}
Modulation = {
  \relative c{<fis' fis,>4. fis,16 gis a4. fis16 a | b4. b16 cis d8 a4 b8 \bar ":|"}
}



RiffIIHarm = \chordmode{ d2 b:m  g a d b:m g a}
RiffII = {
      \relative c'{
        d'8 e4 fis8 b,2 | r8. d16 d8. b16 a8 a16 b a8 fis | <d d'>8 e'4 fis8 b,2 | r8. d16 d8. b16 e8 e16 fis e8 cis |
      }
}
RiffIIa = {
  \relative c''{fis8 g4 a8 d,2 | r8. g16 g8. d16 cis8 cis16 d cis8 a |}
  \relative c''{fis8 g4 a8 d,2 | r8. g16 g8. e16 a8 a16 b a8 g |}
}

OboeCoda = {
  \partial 8{c'8 |}
  \relative c''{g8. e16 d8 c d4. c8 | d8. c16 d8 e f4 e8 c8 | }
  \relative c''{g8. e16 d8 c d4 d16 e f8 | e2 d4. c8 | }
}

<<
  \new ChordNames{
    \HFlute
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Flute"
    \Flute
  }
>>

<<
  \new ChordNames{
    \ModulationHarm \ModulationHarm \ModulationHarm
    \RiffIIHarm \RiffIIHarm 
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 2/2 \key d \major
    \mark "Модуляция"
    r1 | r1 | r1 | r1 | 
    \repeat volta 2 { \Modulation }
    \mark Рифф
    \repeat volta 2 { \RiffII }
    \repeat volta 2 { \RiffIIa }
  }
>>

<<
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Oboe"
    \time 4/4 \key c \major
    \mark "Coda"
    \repeat volta 2{\OboeCoda}
  }
>>
