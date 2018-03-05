\version "2.16.2"

\header {
	title = "Scarborough Fair"
	composer = "Traditional"
}

Harmony = \chordmode{
	d2.:m d2.:m c d:m
	f2. d:m g d:m
	d2.:m d:m f f
	c2. d:m c c 
	d2.:m d:m
}

Tune = {
	\relative c'{d2 d4 | a'2 a4 | e4. f8 e4 | d2. |}
	\relative c'{r4 a c | d2 c4 | a4 b g | a2.~| a2 }
	\relative c'{d4 | d2 d4 | c2 a4 | a4 g f |}
	\relative c{e2. | d2 a'4 | g2 f4 | e4 d c | d2.~|d2. \bar "|."}
}

Bass = {
	d4 f2~ | f2. | g2 c4 | d2. |
	f2. | f,2. | g,2. | f,2 a,4 | 
	d2 f4 | f,2. | f,2 c4 | f,2 a,4 |
	c2. | d2 f4 | e2 d4 | c2. | d2.~ | d2. |
}

<<
	\new ChordNames{
		\Harmony
	}
	\new Staff{
		\clef "treble_8" 
		\time 3/4 \key d \minor
		<<{
			\Tune
		}\\{
			\Bass
		}>>
	}
>>