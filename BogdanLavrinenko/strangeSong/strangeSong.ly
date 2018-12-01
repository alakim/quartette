\version "2.18.2"

\header{
	title="Самая странная песня"
	composer="гр. День Радости"
}

Refrain = {
	% \rehearsals\20181130\Самая странная песня 1.MP3
	% t=0.50
	\tag #'Harmony {\chordmode{
		g2 d | g2 e:m | e2:m b:m | e1:m |

		c2 d | g2 e:m | c2 d | g1 |
	}}
	\tag #'Voice {
		\relative c''{g2 fis | g2 e | g4. fis8~fis2 | g1 |}
		\relative c''{c8 c b a~a4 g8 a | b8 b a g~g8 e8~e4 |  }
		\relative c''{c8 c b a4 fis8 a4 | g1 \bar "||"}
	}
	\tag #'Trumpet {
		\mark \markup "Refrain"
		s1 s1 s1 s1
	}
}

Music = {
	\Refrain
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Vocal"
		\clef treble
		\key g \major
		\time 4/4
		\keepWithTag #'Voice \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet"
		\clef treble
		\key g \major
		\time 4/4
		\keepWithTag #'Trumpet \Music
	}
>>
