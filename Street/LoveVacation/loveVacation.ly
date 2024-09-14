\version "2.18.2"

\header{
	title="Каникулы любви (У моря, у синего моря)"
	composer="Я. Миягава, Л.Дербенев"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HrmVerse = \chordmode{
	fis2:m | fis:m | b:m | cis:7 | cis:7 | cis:7 | fis:m |
	fis:m |
	fis:7 | fis:7 | b:m | b:m | gis:7 | gis:7 | cis:7 | cis:7 |

	% volta2
	gis:7 | cis:7 | fis:m | fis:m |
}

HrmChorus = \chordmode{
	a2 | a | fis:m | fis:m | a2 | a2 | fis:m | fis:m | b:m | cis:7 |
	fis:m | fis:m | fis:m | fis:m | cis:7 | cis:m |
}


Verse = {
	\tag #'Harmony {
		s8
		\HrmVerse
	}
	\tag #'Trumpet {
		%\mark "Куплет"
		\partial 8 {cis'8}
		\repeat volta 2 {
		\relative c'' {a4 gis8 fis | a4 gis8 fis | gis8. d16~d8 r8 |}
		\relative c' {r4. cis8 | gis'4 fis8 eis | gis4 fis8 eis | fis8. cis16~cis8 r8 |}
		\relative c' {r4. cis8 | fis4. g8 | fis8 e d cis | b4 d | fis4 eis8 fis | }
		}
		\alternative{
			{
				\relative c''{gis2~ | gis8 dis eis fis | gis2~ | gis2 |}
			}
			{
				\relative c''{gis4 dis | eis cis | fis2~ | fis4. cis8 |}
			}
		}
	}
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
	}
	\tag #'Trumpet {
		\relative c'{e4 e8 e | e4 cis8 e | fis4. gis8 | fis4 r8 cis |}
		\relative c'{e4 e8 e | e4 cis8 e | fis4. gis8 | fis4 r8 fis |}
		\relative c'{
			fis4 eis8 fis | gis4 cis,8 cis | cis'4. b8 | a4 a8 b |
			cis4 a8 b| cis4 a8 b | cis2~ | cis2 |
		}
	}
}


Music = {
	\Verse \bar "||" \break
	\Chorus
	\bar "|."
}

<<
	\new ChordNames{\transpose fis b{
		\keepWithTag #'Harmony \Music
	}}

	\new Staff{\transpose fis b{
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key fis \minor
		\time 2/4
		\keepWithTag #'Trumpet \Music 
	}}
>>

