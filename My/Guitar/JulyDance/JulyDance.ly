\version "2.12.2"

\header{
  title = "July Dance"
  composer = "alakim"
}
\paper {
  #(set-paper-size "letter")
  bottom-margin = 20\mm
}
#(set-global-staff-size 18)


PI = \relative c''{fis4 d a | \appoggiatura fis'16 g4 fis \appoggiatura{e16 [fis]} e4 |}

DanceI = {
  \mark \markup{\circle \bold 1}
  \repeat volta 2{
    <<{
        \PI \PI
        \relative c'''{r4 b a | g4\prall e b | }
    }\\{
      d'2.~ | d'2. | d'2.~ | d'2. | g2.~ | g2. | 
    }>>
  }
  \alternative{
    {<<{\relative c''{cis4 a e | \appoggiatura cis'16 d4 cis \appoggiatura{b16 [cis]} b4 | }}\\{a2.~ | a2. |}>>}
    {<<{\relative c''{cis4 a e | \appoggiatura cis'16 d4 cis r | }}\\{a2.~ | a2 a4 |}>>}
  }
}

DIIa = {
    <<{
        \relative c'{r4 fis8 b d b | d4 b r | r4 g8 b e b | e4 b r  | r4 fis8 ais cis ais | cis4 ais r |}
    }\\{
        b2.~| b2 b4 | cis'2.~ | cis'2 g4 | fis2.~ | fis2 ais4 | 
    }>>
}
DanceII = {
  \mark \markup{\circle \bold 2}
  \repeat volta 2{\DIIa}
  \alternative{
    {<<{\relative c'{ r4 fis8 b d b | r4 fis ais |}}\\{ b2. |fis2.|}>>}
    {<<{\relative c'{ r4 fis8 b d b | r4 e, a |}}\\{ b2. |a2.|}>>}
  }
}
DanceIICoda = {
  \mark \markup{\circle \bold 2}
  \repeat volta 2{\DIIa}
  \alternative{
    {<<{\relative c'{ r4 fis8 b d b | r4 fis ais |}}\\{ b2. |fis2. |}>>}
    {<<{\relative c'{ r4 fis4 b | <fis b dis>2.\arpeggio \bar "|."}}\\{ b2. |b2.|}>>}
  }
}

DanceIII = {
  \mark \markup{\circle \bold 3}
  \repeat volta 2{
    <<{
        \relative c''{fis4^II <d a> \glissando <a' fis>^V | \time 2/4 <b fis>8 (<a fis>) <a g> (<a fis>) | }
        \relative c''{\time 3/4 e4^III b d | }
    }\\{
        d'2.~ |d'2
        g'2. | 
    }>>
  }
  \alternative{
    {<<{\relative c''{ cis4 d e |}}\\{e'4 fis' g' |}>>}
    {<<{\relative c''{ cis4 g cis |}}\\{e'2.|}>>}
  }
}

DanceIV = {
  \mark \markup{\circle \bold 4}
  <<{
      \relative c''{fis4 d a | e'4 cis g | <g' cis,>4 <g cis,>4 <g cis,>4 | fis4 d a |}
      \relative c''{<a' d, a>4 g fis\prall | g4 d b | <g' cis, g>4 <g cis, g> <g cis, g> | <e cis g>4 <e cis g> <e cis g> | }
  }\\{
      d'2. | e'2. | e'2. | d'2. |
      d'2. | d'2. | e'2. | e'2. |
  }>>
}

PII = \relative c'{\appoggiatura e8 fis4^II \stemUp <a cis> <cis fis> | \appoggiatura fis,16 g4 fis \appoggiatura {e16 [fis]}e4 |}

DanceV = {
  \mark \markup{\circle \bold 5}
  \repeat volta 2{
    \PII \PII
    <<{
        \relative c'''{r4 <b g> <a fis> | <g e> <e b> <b g> | }
    }\\{
      d'2. | r | 
    }>>
  }
  \alternative{
    {<<{\relative c''{<cis a>4 r2 | r2. |}}\\{r4 a b | cis'4 d' e' |}>>}
    {<<{\relative c''{<cis a>4 r2 | r2. |}}\\{r4 a8 b cis' d'  | cis'4 b a |}>>}
  }
}


DanceVI = {
  \mark \markup{\circle \bold 6}
  \repeat volta 2{
    <<{\relative c''{r4 <d b fis> <d b fis> |}}\\{b2.}>>
    \relative c'''{b8 a g fis e d |}
    <<{r4 <e'' cis'' g'> <e'' cis'' g'> }\\{cis'2.}>>
    \relative c'''{cis8 b a g fis e}
    <<{\relative c''{fis4 e cis}}\\{r4 ais2}>>
    <<{ais'4 fis' cis''}\\{fis2.}>>
    \relative c''{d8 cis b ais b4 | }
  }
  \alternative{
    {\relative c''{e8 d cis b ais cis |}}
    {<<{r4 <cis'' a' e'> <cis'' a' e'>}\\{a2.|}>>}
  }
}
<<
  \new Staff{
    \clef "treble_8" \time 3/4 \key d \major
    \transpose c' c{
      \DanceI
      \DanceII
      \DanceIII
      \DanceIV
      \DanceV
      \DanceVI
      \DanceIII
      \DanceIV
      \DanceI
      \DanceIICoda
    }
  }
>>
