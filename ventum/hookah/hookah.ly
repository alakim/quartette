\version "2.18.2"

\header {
	title = "Кальян"
	composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})
xx = {\improvisationOn \absolute {b'16} \improvisationOff}

% HrmA = \chordmode {b1:m %{g/d%} d/g a b:m}
Hrm = \chordmode {s1 s1 s1 s1}

PI = {
	\tag #'Harmony {
		\Hrm 
	}
	\tag #'Clarinet {
		% \relative c'{ r2. r16 bes16 g e | a2 r16 c es ges  as16 \xx \xx \xx | fis4. e8 fis2 | }
		\key e \major
		\relative c'{r2. r16 c a fis | b2 r16 f gis a b  \xx \xx \xx | gis'4. fis8 gis2 \bar ":|." }
		\relative c'{ r2. r8 fis8 | gis2 b4. fis16 gis | fis'4. e8 fis2 \bar ":|." } 
		\relative c'''{gis8 fis gis2. | }
	}
}


Music = {
	\PI
}


<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>

