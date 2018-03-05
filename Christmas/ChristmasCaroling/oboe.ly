\version "2.16.2"

\header{
	title="Christmas Caroling"
	composer="traditional/гр.Перьи Отметины"
	subtitle="Партия гобоя"
}

Hrm = \chordmode{
	r2. g2. g g g g 
	d a d g c a:m g g c d g 
}

ObI = {
	\partial 2. {r2 d'4 |}
	\relative c''{
		g4. fis8 g a | g4. fis8 g a | b2 c4 | d2. \bar "."
		d4. c8 b4 | c4 a fis |
		g4. fis8 g a | d,2 d'8 cis \bar "." d4 d d | c2. | c4 a fis | 
		g4. fis8 g a \bar "." b4 a b |
		c4. b8 a g | fis4 g a | g2 d4 \bar "||"
	}
}

ObII = \relative c''{
	\mark "Проигрыш"
	g4. fis8 g a | c4. b8 a g | fis 4. g8 a4 | g2. \bar "|."
}


<<
	\new ChordNames{
		\Hrm
	}
	\new Staff{
		\set Staff.instrumentName = "Oboe"
		\clef treble
		\time 3/4
		\key g \major
		\ObI \break
		\ObII
	}
>>



