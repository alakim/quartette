\version "2.18.2"


\header{
	title="All Of Me"
	composer="G.Marks"
}

Hrm = \chordmode {
	c1:maj | c1:maj | e1:7 | e1:7 |
	a:7 | a:7 | d:m7 | d:m7 | e1:7 |  e:7 |
	a:m7 | a:m7 | d:7 | d:7 | d:m7 | g:7 |
	f:6 | f:m6 | c2:maj e:m7 | a1:7 | d:m7 | g:7 | c:6 | c:6 |
}


Theme = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		 \repeat volta 2 {
		\relative c''{c4 g8 e8~e2~ | e2 \tuplet  3/2 {c'4 d c} | b4 gis8 e~e2~ | e1 |  }
		\relative c''{a4. g8 e2~ | e4 dis \tuplet 3/2{e4 bes' a} | g2 f~ | f1 |  }
	  }
		  \alternative {
				{
					\relative c'{e4. es8 d2~ | d2 \tuplet 3/2{e4 gis b} | d2 c~ | c1 |  }
					\relative c''{b4. bes8 a2~ | a2 \tuplet 3/2{a4 d b} | a1 | b1 |  }
				}
				{
					\relative c''{d2 c4 b | d2. c4 | b2 e,4 g | b2. a4 | c2 as4 c | e2 e | c1~ | c  }
				}
			}
		}
}


Music = {
	\Theme \break
}

<<
	\new ChordNames{\transpose c c{
		\keepWithTag #'Harmony \Music
	}}
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\set Staff.instrumentName = "Trumpet" \time 4/4
		\clef treble
		\transpose bes c'{
			\key c \major
			\keepWithTag #'Trumpet \Music
		}
	}
>>






