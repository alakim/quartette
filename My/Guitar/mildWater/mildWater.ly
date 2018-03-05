\version "2.16.2"

\header {
  title = "Кроткая вода"
}

Intro = {
  <g b e'>2 <fis a d'>\fermata 
}

Goosly = {
  r2 <g b e'>4 d' | <g b e'>2 <g b e'>4 g' | <c' e' a'>4 g' <g b e'>4 d' |
  <g b e'>2 <g b e'>4 g' | <c' e' a'>4 g' <g b e'>4 d' |
  <g b e'>2 <g b e'>4 g' | <c' e' a'>4 <d' fis' b'> <c' e' a'> g' | <g b e'>1\fermata \bar "||"
}

BridgeI = {
  <g b e'>2\fermata <fis a d'>4 c'8 a | 
  <<{b4 g g d'8 e' | <c' e'>1 | <b, e g b e'>1\fermata \bar"||"}\\
    {g,1 | a,4 c8 b, c b, g, fis, | e,1\fermata | }>>
}

WaterI = {<<{
  r2 r8 \relative c'{e g a | <b d,>2 fis2 | a,1 |}
  }\\{r1 | \relative c{b2 r8 d fis b | fis,1 |} }
>>}

StormI = {<<{
    e,16 b, f b, e, b, f b,    eis, gis b gis eis, gis b gis |
    fis, a fis' a  fis c' a' es'  a es' c'' fis' c'' a' fis' es'  |
    d'4 b'8 a'~a'2 |
   }\\{
     e,4 e, eis, eis, | fis,4 fis a r |
     r8 b,4.~b,2 | 
}>>}

StormII = {<<{
    <b, f>2 <d as b> | <b, f>2 <d as b> | 
  }\\{
    e,2 f, | e,2 f, | 
}>>}
           
WaterII = {
  \time 6/8 \repeat percent 2{ <<{
      b,8 d fis b fis d  b,8 d fis b fis d |
    }\\{
      b,2. b,2. |
    }>>}
}

<<
  \new Staff{
    \clef "treble_8"
    \time 4/4 \key e \minor
    \Intro
    \Goosly \bar "||"
    \BridgeI \bar "||"
    \WaterI \bar "||"
    \StormI \bar "||"
    \StormII \bar "||"
    \WaterII \bar "||"
  }
>>
