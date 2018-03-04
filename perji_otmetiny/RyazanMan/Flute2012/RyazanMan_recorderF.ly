\version "2.16.2"

\header{
	title = "Рязаньщина"
	composer = "Перьи Отметины"
	subtitle = "Партия флейты для блокфлейты-альта"
}

\include "flutePart.ly"

<<
	\new Staff{
		\set Staff.instrumentName = "Recorder in F"
		\clef treble
		\compressFullBarRests
		\transpose f c{
			\time 4/4 \key d \minor
			\FluteI
			\transpose c c'{\FluteII}
			\FluteIII
			\transpose c c'{\FluteIV}
			\FluteV
			\FluteVI
			\FluteVII
		}
	}
>>