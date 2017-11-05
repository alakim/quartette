
\version "2.18.2"

\header{
	title="Китеж. Речитатив"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

global = {
	\time 4/4
	\key b \minor
}

CantI = {
	\tag #'Harmony {\chordmode{
		b1:m | a | b:m | a |
		d1 | a1  cis1  fis1:m |
		b1:m | a | s1 s1 
	}}
	\tag #'Voice {
		\relative c''{d8 b b8 b cis b b b | cis4. a4 b8 cis4 | }
		\relative c''{d8 b b b cis b b b | cis1 \longBar | }
		\relative c''{d8 d4 d8 cis d e4 | cis1 | s1 | s1 \longBar |}
		\relative c''{cis4. d8~d2 | b4. a8~a2 | s1 s1 \longBar |}
	}

	\bar "||"
}

CantII = {
	\tag #'Harmony { \chordmode{ b1:m |  s1  }}
	\tag #'Voice {
		\relative c''{ d8 d cis e4 b4. | r1 |  }
	}
}

Music = {
	\CantI
	\break
	\CantII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble
		\global
		\keepWithTag #'Voice \Music
	}
>>
