\version "2.18.2"

\header {
  title = "Бессонница"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode {fis2:m}

Intro = {
	\tag #'Harmony {
		\Hrm s2 
	}
	\tag #'Clarinet {
	      \mark Intro
	        \time 4/4
		\relative c{fis1 \bar "||"}
	}
}

Riff = {
	\tag #'Harmony {
		\Hrm s2 s2 s2 s2
	}
	\tag #'Clarinet {
	      \mark Riff
	        \time 2/4
		\relative c'{fis4 cis'8 c | gis4 a | b8 a gis a | fis2~ | fis2 \bar "||"}
	}
}

Theme = {
	\tag #'Harmony {
		\Hrm s2
	}
	\tag #'Clarinet {
	      \time 4/4
	      \mark Theme
		\relative c''{a1 | gis2. g8 gis | b1 | a | \longBar}
		\relative c''{a1 | gis2. g8 gis | b1 | cis | \bar "||"}
	}
}



Music = {
	\Intro \break
	\Riff \break
	\Theme
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key fis \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>