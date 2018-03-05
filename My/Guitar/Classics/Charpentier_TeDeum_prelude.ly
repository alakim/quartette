\version "2.16.2"

\header{
	title = "Te Deum"
	subtitle = "Prelude"
	composer = "M.A. Charpentier, arrangement for guitar Akimov A."
}

SI = {
	\time 4/4 \key c \major
	\partial 4 {g'4}
	\repeat volta 2{
		\relative c''{c4\mark \markup{\circle \bold "1"} c8 d e4 c | g'2 e4. e8 | f4 g8 f e f g4 | d8 c d e d4 g, | c4 c8 d e4 c | g'2 e4. e8 f8 g e f d4. c8 | }
	}
	\alternative{
		\relative c''{c2. g4 |}
		\relative c''{c2. g'8 f |}
	}
}

SII = {
	\relative c''{e4\mark \markup{\circle \bold "2"} c f f8 e | d4. c8 b4 e | d4 c8 d b4 e | c4. b8 a4 a' | a4 g g4. f8 | e4. d8 c d e fis | g4. a8 fis4. g8 | g2. r4 |}
}

BI = {
	\partial 4 {s4}
	\repeat volta 2{
		\relative c'{c2 c4 c | b4 g c4. c8 | f4 f, c'8 d e f  | g2 g8 f e d | }
		\relative c'{ c2 c4 c | b4 g c4. c8 | f4 c b g |}
	}
 	\alternative{
 		\relative c' { c2. c4 |}
 		\relative c' { c2. b4 |}
 	}
}

BII = {
	\relative c'{c4 g' a4 f | g2 g,4 c | d4 d e gis, | a2 a4 f | g4 g8 a b4 g | c2 e4. d8 | g,4 c d fis, | g4 g'8 f e f e d |}
}

HrmI = \chordmode{
	\partial 4{c4}
	c1 | g2 c | f2 c | g1 | 
	c1 | g2 c | f2 g | c1 | 
	c2. g4 |
}

HrmII = \chordmode{
	c2 f | g1 | b2:dim/d e | a2.:m d4:m|
	g1:7 | c1 | g4 a:m d2:7 | g1:7  |
}

<<
	\new ChordNames{
		\HrmI \HrmII
	}
	
	\new Staff{
		\clef treble
		<<{
			\SI \SII
		}\\{
			\BI \BII
		}>>
		\bar "|."
	}

>>