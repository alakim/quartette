\version "2.18.2"

\header{
	title="Небо так близко"
	composer="Северный Крест"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode {
	e2. | gis | cis:m | a
}

Tutti = {
	\tag #'Harmony {
		% повторяемъ два раза - всего 8 тактовъ
		\Hrm
	}
	\tag #'Voice {
		\relative c''{ cis8 cis b gis4 fis8 | gis4. gis4. |}
		\relative c''{ gis8 e dis e4 dis8 | e4. e4. |}
	}
	\tag #'Trumpet {
		%t = 3.37
		\mark "Tutti"
		\repeat volta 2{
			\new Voice <<
				\relative c' { e2. | gis | cis | a } \\
				\relative c' {gis2 b4 | bis2 dis4 | e2. | cis }
			>>
		}
	}
	\tag #'Trombone {
		\relative c {e2. | gis | cis | a }
	}
}

Solo = {
	\tag #'Harmony {
		% всего 8 тактовъ
		\Hrm
		\Hrm
	}
	\tag #'Trumpet {
		%t = 3.50
		\mark "Solo"
		\new Voice <<
			\relative c' { e2. | gis | cis | a } \\
			\relative c' {gis2. | bis | e | cis }
		>>
	}
	\tag #'Trombone {
		\relative c {e2. | gis | cis | a }
	}
}

Music = {
	\Tutti \break
	% \Solo \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}

	\new Staff{
		\set Staff.instrumentName="Voice"
		\time 6/8
		\clef treble
		\key e \major
		\keepWithTag #'Voice \Music
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 6/8
		\clef treble
		\transpose bes bes {
			\key e \major
			\keepWithTag #'Trumpet \Music
		}
	}

	\new Staff{
		\set Staff.instrumentName="Trombone"
		\time 6/8
		\clef bass
		\key e \major
		\keepWithTag #'Trombone \Music 
	}

>>

