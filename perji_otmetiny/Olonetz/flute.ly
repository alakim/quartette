 \version "2.14.16"
 
 \header {
    title = "Олонецкая быль"
    subsubtitle = "Flute"
    composer = "Перьи Отметины"
 }
 
 FluteI = {\relative c''{d1^"Олонец" | g,8 a b2. | fis'4. g8 d2~ |d2. r4 |}}
 % t=1.14
 FluteII = \relative c''{a8^"Нам наградой" a d4 b a8 g | \appoggiatura g8 a4. g8~g2 |}
 
 FluteCoda = {\mark "Coda"
   \relative c''{g2~g8 a'8 g16 e d8 | 
     \repeat percent 4 {e8 g4 g g8 d8 e |d2~d8 a'8 g16 e d8 | }
   }
   \relative c'''{ g1\fermata |}
 }
 
 <<
   \new Staff{
     \clef treble \key c \major \time 4/4
     \FluteI \bar "||"
     \FluteII \bar "||"
     \break
     \FluteCoda
   }
 >>