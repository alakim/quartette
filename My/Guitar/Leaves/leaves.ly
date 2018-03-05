\version "2.12.3"

\header {
  title="Листья"
  composer="alakim"
}

A = <<{ 
    \relative c''{
      <e c>8^III d e g f8 d f c | r8 a16^VIII f' a8 e^V d^III b a' g |
      g8^III e g b c e, c b' | e,,8^V gis d' e \glissando d8^III b gis gis' |
      a2 b,4. a'8~ | a8 \acciaccatura{e16 [f]} e8 d b~ b d b' a |
      c8 c, e c'~c a, f' a | 
    }
  }\\{
    \relative c'{
      c2 d | f4. a,8 g2 |
      c2 a | \break e'2 r |
      a'8 c,, e a b gis, d'' a' | a,,2 g | \break
      e'2 f | 
    }
}>>
Aa = {\mark \markup \circle \bold "1a"
  \A <<{
    \relative c'''{
      g8 d g f e c e <d b> |
    }
  }\\{
    \relative c''{
      b,2 c4. g8 |
    }
}>>}
Ab = {\mark \markup \circle \bold "1b"
  \A <<{
    \relative c''{
      <b d gis>2 <c e a> |
    }
  }\\{
    \relative c'{
      e2 a, \bar "|."
    }
}>>}

B = <<{\mark \markup \circle \bold "2"
    \relative c''{
      \repeat volta 2{
        c8 e, b' a b e, b' d | e8 a, e' d~ d gis, d' b |
      }
      \alternative{
        {a8^II c e d f^VI a, f' g~ | g8 d g f e c e <d b> |}
        {a8 b c4 d8 b e c | f8 d c a'~ a b, d b'|}
      }
    }
  }\\{
    \relative c'{
      a2 gis | c b |
      c f | b, c4. g8 |
      c4. e8~ e4 c | d2 g, |
    }
}>>

C = {\mark \markup \circle \bold "3"
  <<{\relative c'''{c16 b a g a g f e f e d c b g c b |}}\\{a1}>>
  \relative c''{
    c16 b c d e d e f b gis e d c d gis b |
    c16^V a e c b' gis e d c^I a e'^V c f^VI d gis^IX e |
    a16^VII e b' d, c' e, e' a, c,, b c d e d e gis |
  }
}

D = \relative c''{\mark \markup \circle \bold "4"
  e16^IX d c   b c d e a   g^VIII e f g   b, c e d | c16^VII b a g  e' d b gis'  a e g e   f d e c |
  d16^III b c d   e c g e    c f e c   f^I a c d | 
  %e16 d b e f c b a gis b d f e c b gis' |
  f16 e d b  c^VII e d' b   c dis, fis a   b^VII gis e \acciaccatura{b32} c16^"^"  |
  <<{\relative c''{b4^"_" (a4) f8 a e a | }}\\{a,1}>>
}

<<
  \new Staff{
    \clef "treble_8" \key c \major \time 4/4
    \transpose c c,{
      \Aa \B
      \C
      \D
      \Ab
      
    }
  }
>>
