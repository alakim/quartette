\version "2.16.2"

\header{
	title = "Травушка"
	subtitle = "партия гобоя"
	composer = "гр. Перьи Отметины"
}

Hrm = \chordmode{
	a2 | g4 a | a2 | g4 a |
	g2 | g4 a | g2 | g4 a |
}
ObI = {
	\relative c''{a8 e'4 a,8 | cis8 e a,4 | }
	\relative c''{a8 e'4 a,8 | cis8 e a,4 | }
	\relative c''{g8 d'4 g,8 | b8 d a4 | }
	\relative c''{g8 d'4 g,8 | b8 d a4 | }
}

<<
	\new ChordNames{
		\Hrm
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = Oboe
		\time 2/4
		\key a \major
		\ObI \bar "||"
	}
>>