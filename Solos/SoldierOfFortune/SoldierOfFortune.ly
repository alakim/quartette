\version "2.12.2"
\include "../../lib/guitar.ly"

\header{
	title = "Soldier of Fortune solo"
	composer = "R. Blackmore"
}

Harmony = \chordmode{
	\partial 4 {r4|}
	g1:m | c | g:m | bes | g:m |
	bes | c | g:m |
}

Solo = \relative c''{
	\partial 4 {\bendStart c8 d8^\BendSym f |}
	\bendStart f8 g4^\BendSym \bendStart f8 g2^\BendSym \bendStart f8 g8^\BendSym bes8 |
	\bendStart bes8 c4^\BendSym \bendStart bes8 c2^\BendSym \ottava #1 \bendStart c8 d8^\BendSym f |
	\bendStart f8 g4^\BendSym \bendStart f8 g2^\BendSym  \bendStart c,8 d16^\BendSym (c) bes8 |
	\bendStart c8 d2.^\BendSym \bendStart c8 d8^\BendSym f |
	\bendStart f8 g4^\BendSym \bendStart f8 g2^\BendSym \bendStart f8 g16^\BendSym (f) d8 |
	\bendStart c8 d4^\BendSym \bendStart c8 d2^\BendSym \bendStart c8 d16^\BendSym (c) bes8 |
	c2. bes16 (a bes a) | g2. r4 \bar "|."
}

<<
	\new ChordNames{
		\Harmony
	}
	\new Staff{
		\clef treble \time 4/4 \key g \minor
		\Solo
	}
>>