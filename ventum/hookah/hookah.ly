\version "2.18.2"

\header {
	title = "Кальян"
	composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})
xx = {\improvisationOn \absolute {b'16} \improvisationOff}

% HrmA = \chordmode {b1:m %{g/d%} d/g a b:m}
Hrm = \chordmode {d1 c1}

PI = {
	\tag #'Harmony {
		s1 \Hrm 
	}
	\tag #'Clarinet {
		\mark \markup \circle A
		\relative c'{r2. r16 c a fis \bar ".|:" b2 r16 f gis b d b d e | fis4. e8 fis4 r16 c a fis  \bar ":|." }
	}
}

PII = {
	\tag #'Harmony {
		s1 \Hrm 
	}
	\tag #'Clarinet {
		\mark \markup \circle B
		\relative c'{ r2. r8 fis8 \bar ".|:" gis2 b4. gis16 a | fis'4. e8 fis2 \bar ":|." } 
	}
}

PIII = {
	\tag #'Harmony {
		s1 \Hrm 
	}
	\tag #'Clarinet {
		\mark \markup \circle C  
		\relative c''{s2. r8 b8 \bar ".|:" gis'8 fis gis4 r8 fis16 e  fis16 e d cis | d1 \bar ":|." }
	}
}


Music = {
	\PI \break
	\PII \break
	\PIII \break
}


<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\clef treble 
		\time 4/4
		\key e \major
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>

