\version "2.18.2"

\header {
  title = "Космос (Горизонт событий)"
  composer = "гр. Ventum"
}

outKey = c'

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{a1:m | d1 | e:m | a:m | }

PI = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA    }
	\tag #'Clarinet {
		\time 4/4
		\key a \minor
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
	}
}

Music = {
	\PI
}

<<
	\new ChordNames{\transpose \outKey c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ %\transpose \outKey c'{
		\clef treble 
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests

		\keepWithTag #'Clarinet \Music
		
	} %}
>>
