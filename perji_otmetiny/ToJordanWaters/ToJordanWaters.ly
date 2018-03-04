
\header {
	title = "К водам Иорданским"
	composer = "traditional"
}

\version "2.10.33"


ChordsA = \chordmode   {
  e1:m | b1:m | e1:m | d1 |
  a2:m b2:m | e1:m |a2:m7 b2:m | e2:m |
}
LyricsA = \lyricmode {
  
}
VoiceA = \relative c'' {
  e4 e8 fis g4 e | fis4. e8 d4 b | e4 e8 fis g4 a | fis4. e8 d2 |
  e4 a g g8 fis | e2 g4 a | g4. g8 fis e fis4 | e2 e \bar "||"
}

ClarinetIIA = \relative c''{
    b4 b8 a b4 g | a4. g8 fis2 | g4 g8 fis g4 e | fis2 r2 |
    a4 a8g a4 fis | g2 b | g2 fis8 g fis4 | e2. r4 |
}

<<
	\new ChordNames{
		\ChordsA
	}
       \new Lyrics{
           \LyricsA
        }
		
        \new Staff{
                \set Staff.instrumentName = \markup {Voice}
                \clef treble \time 4/4 \key e \minor
                \VoiceA
        }
        \new ChordNames{
              \transpose bes c {\ChordsA}
        }
        \new Staff{
                \set Staff.instrumentName = \markup {Clarinet}
                \transpose bes c {
                  \clef treble \time 4/4 \key e \minor
                  \VoiceA
              }
        }
        \new Staff{
                \set Staff.instrumentName = \markup {Clarinet}
                \transpose bes c {
                  \clef treble \time 4/4 \key e \minor
                  \ClarinetIIA
              }
        }
                
        

>>
\markup{
  \column { 
    \line {К водам Иорданским Господу пришедшу,}
    \line {И Духу Святому над Него надшедшу}
    \line {Слышит глас, глаголяй:В сей день изъявленный}
    \line {Креститися хощет Сын мой возлюбленный.}
    \line {Крещением хощет землю просветити}
    \line {Гряди, Иоанне, скоро Мя крестити.}
    \line {Речет Иоанне: Не смею, Владыко,}
    \line {Понеже Тя знаю Бога превелика.}
    \line {Ты еси соделал знамения многа}
    \line {Вся Тебе трепещут - Небеса и земля}
    \line {Весь род человечий от рода Адама.}
    \line {Склонил Свою главу Предтече под руку.}
    \line {Увидиша море - в бегство обратися}
    \line {Тогда Иордан-река воспять возвратися.}
    \line {Счастливые струи реки Иордана,}
    \line {В них же крестился Бог от Иоанна.}
    \line {Мы молим Тя, Блаже, не посли нас в муку.}
    \line {Просим Тебя, Щедре, ада нам избыти,}
    \line {Роду христианскома во Царствии быти.}
  }
}

