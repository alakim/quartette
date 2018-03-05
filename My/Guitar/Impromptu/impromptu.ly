\version "2.16.2"

\header {
  title = "Экспромт"
  composer = "А.Акимов"
}

TI = {
  <<{
    \relative c'{f8^III e d c a2^I | c8^V b a e d^II f a f | 
       b8 a b d c^IV fis, d fis | b4^III g g8 b[c d] |
    }
  }\\{
    d2 f, | a,2 d | g,2 a,4 d | g,1 |
  }>>
}

TII = {
  <<{
    \relative c'{e8^III c e c  g'^V fis e d | e8^III c e c d c b a |
      c4 b8 a b8^II e, e' d | <e c>8^V <e c> <e c> <e c> <fis d> <fis d> <g d> a |
      <e c>8 <e c> d c  b8^III b a^II a | g4 a8 b c4^V b^IV | 
    }
  }\\{
    c2 e | c2 g, |
    a,4. r8 gis,2 | a,2 d |
    a,2 g,4 f, | e,2 a,4 gis, |
  }>>
}

TIIa = <<{\relative c'{a8^II e c e r8\fermata a8[b c] |}}\\{ a,2 a,8 r4. |}>>
TIIb = <<{\relative c'{a8^II e c e~ e2\fermata |}}\\{ a,2 a,2 |}>>

TIII = {
  <<{
    \relative c'{d8^IV d, fis c' b8^III b[c d] | e8 c e c  g'^V fis e d |
       c8^III f, f' e   d8^VI bes f' d | \time 2/4 cis8^V [a e'8]\fermata a,8^II |
    }
  }\\{
    r8 d4. g,2 | c2 e | a,2 bes, | a,4.\fermata s8 |
    
  }>>
}
       
<<
  \new Staff{
    \clef "treble_8"
    \time 4/4
    \partial 4{a4^II |}
    \TI
    \TII \TIIa
    \TIII
    
    \time 4/4
    \TI
    \TII \TIIb
    \bar "|."
  }
>>
