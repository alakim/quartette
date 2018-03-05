\version "2.14.2"

\header {
	title = "Fairest Isle (King Arthur)"
	subtitle = "Henry Purcell (1658-1695)"
	composer = "arrangement for guitar by Akimov A."
}

SI = {
	\time 3/4 \key bes \major
	\relative c''{d4 f2 | bes,2 f'4 | g8 (f g as) g4 | f2 d4 |}
	\relative c''{ d8(es f4 ) <c a> | d8(c bes4) a | g8(a bes4) c | a2. |}
}
BI = {
	\time 3/4 \key bes \major
	\relative c'{bes4 a2 | g2 d'4 | es2 es4 | d2 bes4 |}
	\relative c'{a2 f4 | bes8(a g4) f | es'4 d e8 c | f,2. |}
}
HI = \chordmode{
	bes4 f2 | g2:m bes4 | es2. | bes2. |
	d2:m7 f4 | bes2 f4 | es4 bes c | f2. 
}

SII = {
	\relative c''{c4 a2 | d2 bes4 | es4 <c a>2 | d2 d4 |}
	\relative c''{d8(es f g) f4 | b,2 c4 | c8(d es4) c | c2. |}
}
BII = {
	\relative c{f2. | bes2 g4 | c4 f,2 | bes2 bes4 |}
	\relative c'{as2 as4 | g2 f4 | g2 g4 | c2 (bes4) |}
}
HII = \chordmode{
	f2. | bes2 g4:m | c4:m7 f2 | bes2. |
	f2.:m | g2 f4:m | c2:m g4:sus4 | c2.:m |
}

SIII = {
	\relative c''{f4 d2 | bes2 d4 | es8(d c d) c4 | c4(f,) f | }
	\relative c''{bes8(a g4) es' | <es a,>8(d c4) <f bes,> | f8(es d4) c8(bes)| bes2. |}
}
BIII = {
	\relative c'{a4 bes2 | g2 f4 | es'2 e4 | f4 a,4 f'8(es) |}
	\relative c'{d4(es) c | f2 d4 | es4 f f, | bes2. |}
}
HIII = \chordmode{
	f4 bes2 | es2 d4:m | c2:m c4:7 | f2. |
	bes4 es c:m | f2:7 bes4 | es4 bes f:7 | bes2. |
}

S = {
	\time 3/4 \key bes \major 
	\repeat volta 2{\SI} 
	\SII \SIII
}

B = {
	\time 3/4 \key bes \major 
	\BI \BII \BIII
}

H = {\HI \HII \HIII}

<<
	\new ChordNames{
		\H
	}
	
	% \new Staff{\clef treble \S}
	% \new Staff{\clef bass \B}
	
	\new Staff{
		\clef "treble_8"
		
		<<{\transpose c' c{
			\S
		}}\\{\transpose c' c{
			\B 
		}}>>
	}
>>
