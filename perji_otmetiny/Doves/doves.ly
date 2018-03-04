\version "2.12.14"

\header {
  title = "Уж вы, голуби"
}

srcBreak = {\break}

AltoRep = {\relative c'{b4_"Гляди душа" b b e | b2 b4 b | e4 d d b | c4 c b b |}\srcBreak}

Alto = {\time 4/4 \clef treble \key e \minor
  \relative c'{e8_"На Сионску" e d d e4 d | e8 e d c b4 b | d8 d c4 b d | d8 d c4 dis e |} \srcBreak
  \relative c'{e8_"Как душа" e d4 e d | e8 e fis4 e8 dis e4 | d4 d8 c b4 c | d4 c b e |} \srcBreak
  \relative c'{e4_"Тебе тело" fis e fis | e4 fis e dis | d8 d d8 c b d c4 | d8 d e4 dis e |} \srcBreak
  \AltoRep
  \relative c'{e4_"котлы кипят" fis e fis | e4 fis e dis | d4 d8 c b d c4 | d4 e dis e |} \srcBreak
  \AltoRep
  \relative c'{e8_"а в раю" e d d e4 d | e8 e d c b b b4 | d8 d c4 b d | d8 d c4 dis e |} \srcBreak
  \relative c'{e8_"а цаво они поют" e d d e e d4 | e8 e fis e e dis e4 | d8 d d c b c e4 | d4 c b8 b e4 }
}


<<
  \new Staff{
    \set Staff.instrumentName = "Cl.B"
    \transpose bes c'{\Alto}
  }
>>
