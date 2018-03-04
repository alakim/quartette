%\include "RyazanMan_parts.ly"

\header {
	title = "Рязанщина"
	composer = "Перьи Отметины"
}

\version "2.10.33"


Chords = \chordmode{
  g2:m bes | f2 c |
}

Lyrics = \lyricmode{
  "Ехал с гульбища"1 | "на позорище"1 | "мимо торжища"1 |"мимо ярманки"1 |
  "все глядел на вывески"1 |"яркие,"1 |"с коих счастье щерилось,"1 |"то еще"1 |
  "поперек ярко"1 |"чудищо"1 |"на утек от него"1 |"не отвяжешься."1 |
  "Раздобрело зло"1 |"на безбожии"1 |"ночь, ларек, квартал, да ко-"1 |"ладбище."1 |
  ""1 |""1 |""1 |""1 |""1 |""1 |""1 |""1 |
  "притворился"1 |"день"1 | "ночью"1 |""1 |
  "завалился "1 |"в люк"1 |"сточный"1 |""1 |
  "лопасти снесло весло"1 |"завалило все село"1 | ""1 |""1 |
  "весело и сочно,"1 |"без толку, но прочно"1 |"с ног на голову"1 |"с ног на голову"1 |
  ""1 |""1 |
  "пропала голо-"1 |"ва"1 |
  ""1 |""1 |""1 |""1 |""1 |""1 |
}

ClarinetDayNight = \relative c'{bes2 g' | e2 a, | d1~ | d1 |}

Clarinet = \relative c'{
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | 
  
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | 
  %r1 | r1 | r1 | r1 | 
  %r1 | r1 | r1 | r1 | 
  %r1 | r1 | r1 | r1 | 
  \ClarinetDayNight \ClarinetDayNight 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | 
  r1 | r1 | 
  r1 | r1 | r1 | r1 | r1 | r1 | 
}

<<
 	\new ChordNames{
 		\Chords \Chords
 	}
		
% 	\new Staff{
% 		\set Staff.instrumentName = \markup { Flute }
% 			\clef treble \time 4/4 \key d \minor
% 			\mark \markup { \box \bold A }
% 			\FluteA
% 			\mark \markup { \box \bold B }
% 			\FluteB 
% 	}
        \new Lyrics{
            \Lyrics
        }
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet }
                \transpose c c{
			\clef treble \time 4/4 \key d \minor
			\Clarinet
                      }
	}
>>


