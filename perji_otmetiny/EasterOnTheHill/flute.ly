\version "2.16.2"

\header{
  title="Пасха на холме"
  subtitle = "for flute"
  composer = "Перьи Отметины"
}

HFluteI = \chordmode {
  a2 d | e1 |
}
FluteI = {
  \key a \major
  \mark "Intro"
  \relative c''{a2~a8 b cis d | cis4. b16 a b4. a16 gis | a2. fis'4 | e16 cis8 b16 a4 e'16 cis8 b16 a8 b | 
     a4. d8 d e4 fis8 | e4 cis8 a b4. a8 | a1 \bar "||"
  }
}

<<
  \new ChordNames{
    \HFluteI \HFluteI \HFluteI 
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4 
    \FluteI
  }
  \new Staff{
    \set Staff.instrumentName="Cl.B"
    \time 4/4
    \transpose bes c'{\FluteI}
  }
>>