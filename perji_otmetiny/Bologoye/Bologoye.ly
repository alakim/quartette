
\header {
	title = "Бологое"
	composer = "Перьи Отметины"
}

\version "2.10.33"


ChordsA = \chordmode   {
  b2:m e2:m | e2:m b2:m |
  d2 a2 | e2:m g2 | r2 |
  b2:m a2 | e2:m b2:m | r2
}
LyricsA = \lyricmode {
  Бологое2 греется2 | "нагое на"2 осени |
  "сталью тянется, сверкает"1 | "Далью давит, не пускает" | ""2 |
  "полотно полоскает"1 | ""4 "гладит рельсами"2. | ""2 |
}
SoloA = \relative c'' {
  r1 | r1 | 
  r1 | r1 | \time 2/4 r2 |
  \time 4/4 %{\mark \markup \circle A%} b2 a16 b a fis e8 fis | e'2 fis8 b, b b | \time 2/4 r2 |
}

ChordsB = \chordmode {
  d2 a2 | e2:m b2:m |
  d2 a2 | e2:m b2:m |
  d2 a2 | e2:m g2 | r2 |
  g2 a2 | b2:m a2 |
  e2:m g2 | a2 b:m |
}
LyricsB = \lyricmode{
   "сами мы не здешние"1 | "грешные"1 |
   "поспешаем засветло"1 | "подоспеть за помощью"1 |
   "в устье захолустья"1 | "на задворки края"1 | ""2 |
   "где любая весть боло-"1 | "гая"1 | ""1 | ""1 |
}
SoloBa = \relative c''{%{\mark \markup \circle{"Ba"}%} d2 cis16 b a4 b8 | e2 d16 cis b4. |}
SoloBb = \relative c''{%{\mark \markup \circle{"Bb"}%}
 << {
    \override NoteHead #'font-size = #-4
     fis4 fis e16 fis e d cis8 d | g4 g fis16 g fis e d4 |
    \revert NoteHead #'font-size
   }
  \\
  {
    d4 d cis16 d cis b a8 b | e4 e d16 e d cis b4 |
  }>>
}
SoloB = {  \time 4/4 \SoloBa \SoloBa \SoloBb \time 2/4 r2 | \time 4/4 r1 |r1 |r1 |r1 |}


ChordsC = \chordmode{
  b2:m e:m | e2:m b:m | 
  d2 a | e2:m b:m |
  d2 a | e2:m g | r2 |
  b2:m a | e2:m  b:m |
  d2 a | e2:m b:m |
  d2 a | e2:m g |
  b2:m a | e2:m b:m |
}
LyricsC = \lyricmode{
  "никуда не денешься"1 |"рельсы разбегаются"1 |
  "небо держат радуги"1 | "а зимой шатаются"1 |
  "Да устояла б колокольня"1 | "больно тяжело сегодня"1 | ""2 |
  "пасмурно без пояснений"1 | "осень сжата месяцем"1 |
  "иней-хмель разбросан"1 | "в сельской околесице"1 |
  "остепени, обремени"1 | "повремени с вопросами"1 |
  "запомяни степная бель"1 | "кружится над покосами"1 |
}
SoloC = \relative c''{
    r1 |r1 |r1 |r1 |r1 |r1 |\time 2/4 r2 |
    \time 4/4 d4 d cis16 d cis b a8 b | e4 e d16 e d cis b4 |
    r1 | r1 |
    r1 | r1 |
    r1 | r1 |
}

<<
        \new ChordNames{
                \ChordsA \ChordsB \ChordsC
        }
       \new Lyrics{
           \LyricsA \LyricsB \LyricsC
        }
		
        \new ChordNames{\transpose bes c'{
            \override ChordName   #'font-size = #-4
            \ChordsA \ChordsB \ChordsC
        }}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = \markup {Clarinet B}
	 	\clef treble \time 4/4 \key b \minor
                \SoloA \SoloB
                \SoloC
        }}
                
        

>>


