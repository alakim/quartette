\version "2.18.2"

\header{
	title="Небо так близко"
	composer="Северный Крест"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode {
	e2. | gis | cis:m | a
}

Voice = {
	\relative c''{ cis8 cis b gis4 fis8 | gis4. gis4. |}
	\relative c''{ gis8 e dis e4 dis8 | e4. e4. |}
}

Roots = \relative c {e2. | gis | cis | a }

Tutti = {
	\tag #'Harmony {
		% повторяемъ два раза - всего 8 тактовъ
		\Hrm
		\Hrm
	}
	\tag #'Voice {
		\Voice
		\Voice
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
		\break
		\repeat volta 2{
			\relative c'' { r4. b | r4. bis | r4 cis16 cis cis8 b gis | cis4. b |  }
		}
	}
	\tag #'Trombone {
		\Roots
		\Roots
	}
}

Solo = {
	\tag #'Harmony {
		% всего 8 тактовъ
		\Hrm \Hrm
		\Hrm \Hrm
	}
	\tag #'Trumpet {
		%t = 3.50
		\mark "Solo"
		\relative c''{ b2 ais8 b | bis2~bis8 bis | cis2. | e8 cis b cis b a |}
		\relative c''{ gis2. | dis'4. bis | cis4. gis | b4. a | }
		\bar "||"
		\break
		\relative c'' { s2. | s2. | s2. | s2. | }
		\relative c'' { gis8 gis4. gis4| gis8  gis4. gis4 | gis8 gis4. gis4~ | gis4. r | }
	}
	\tag #'Trombone {
		\Roots \Roots
		\Roots \Roots
	}
}

Music = {
	\Tutti \break
	%\Solo \break
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

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Solo
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 6/8
		\clef treble
		\transpose bes bes {
			\key e \major
			\keepWithTag #'Trumpet \Solo
		}
	}

	\new Staff{
		\set Staff.instrumentName="Trombone"
		\time 6/8
		\clef bass
		\key e \major
		\keepWithTag #'Trombone \Solo 
	}

>>

