\version "2.16.2"

\header {
	title = "Морские Узлы"
	composer = "гр. День Радости"
}

HMain = \chordmode{
	c1 f c g
}

Riff = \relative c'''{
	\mark Riff
	r4 g e8 g4. | a8 g e g e d4. | r4 g e8 g4. | b8 a g a g e4. \bar "||"
}

<<
	\new ChordNames{
		\HMain
	}
	\new Staff{
		\set Staff.instrumentName = "Flute"
		\clef treble
		\time 4/4
		\key c \major
		\Riff
	}
>>

\markup{
	\line{
		"Форма: п К1 п К2 п К3 п"
	}
}