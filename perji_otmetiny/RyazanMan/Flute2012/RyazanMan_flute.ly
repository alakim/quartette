\version "2.16.2"

\header{
	title = "Рязаньщина"
	composer = "Перьи Отметины"
	subtitle = "Партия флейты"
}

\include "flutePart.ly"

<<
	\new Staff{
		\set Staff.instrumentName = "Flute"
		\clef treble
		\time 4/4 \key d \minor
		\compressFullBarRests
		\FluteI
		\FluteII
		\FluteIII
		\FluteIV
		\FluteV
		\FluteVI
		\FluteVII
	}
>>