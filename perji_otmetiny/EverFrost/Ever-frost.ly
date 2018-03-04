\include "predefined-guitar-fretboards.ly"

\header {
	title = "Мерзлота"
	composer = "Перьи Отметины"
}

\version "2.10.33"


ChordsA = \chordmode   { g1:m | g1:m | f1 | f1 |}
ClarinetA = \relative c'' {
	d2. c8 d | bes2. a8 bes | c1 | f1 |
	g1 | g1 | f1 | f1 \bar "||"
}

ChordsB = \chordmode {g1:m | g1:m | c1:m | d1:m |}
ClarinetB = \relative c'' {
	d2. c8 d | bes1 | c2. bes4 | d1 \bar "||"
	% g1 | g1 | c1 | d1 \bar "||"
}

ChordsC = \chordmode {
	es1 | c1:m | c1:m | d1:m |
	bes1 | g1:m | c1:m | d1:m |
	bes1 | g1:m | c1:m | d1:m |
	c1:m | d1:m |
}
ClarinetC = \relative c'' {
	es1 | c1 | c1 | d1 |
	bes1 | g1 | c1 | d1 |
	bes1 | g1 | c1 | d1 |
	c1 | d1 \bar "||"
}

<<
	\new ChordNames{
		\ChordsA \ChordsA 
		\ChordsB
		\ChordsC
	}
		
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet }
        \transpose bes c' {
          \clef treble \time 4/4 \key g \minor
          \mark \markup { \box \bold A }
          \ClarinetA
          \mark \markup { \box \bold B }
          \ClarinetB
          \mark \markup { \box \bold C }
          \ClarinetC
        }
	}

>>


