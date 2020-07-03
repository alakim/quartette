\version "2.18.2"

\header {
  title = "Time"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode {
  b1:m b:m b:m b:m
}

HrmB = \chordmode {
  b1:m bes g:m d
}

HrmC = \chordmode {
  b1:m9 bes
}

PA = {
	\tag #'Harmony {
		\HrmA  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle A }
		
		s1^"noir..." | s1 |  s1 | s1 \bar "||"
	}
}

PB = {
	\tag #'Harmony {
		\HrmB  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle B }
		
		s1 | s1 |  s1 | s1 \bar "||"
	}
}

PC = {
	\tag #'Harmony {
		\HrmC \HrmC 
	}
	\tag #'Clarinet {
		\mark \markup{ \circle C }
		
		s1 | s1 |  s1 | s1 \bar "||"
	}
}



Music = {
	\PA \break
	\PB \break
	\PC \break
}



<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key b \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>

