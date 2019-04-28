\version "2.18.2"

\header {
	title = "Light Major"
	composer = "alakim"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})
xx = {\improvisationOn \absolute {b'16} \improvisationOff}

% HrmA = \chordmode {b1:m %{g/d%} d/g a b:m}
Hrm = \chordmode { 
	c1:maj d:7 c1:11+ b:7
	e1:maj fis:7 e:11+ es:7
	as:maj bes:7 as:11+ g:7
}

PI = {
	\tag #'Harmony {
		\Hrm 
	}
	\tag #'Theme {
		\mark \markup \circle A
		\relative c'' { e4 d8 e~e2 | r8 a4. fis8 d4. | g4 e8 g~g4. fis8~ | fis8 dis~dis2. \longBar} 
		\relative c'' { e4 cis8 b4 gis8 fis e |  ais8 gis ais cis4 ais4. | 
			dis8 b gis8 ais gis e4. | f8 es8 bes'8 g8~g2 |
		} 
		\relative c''{
			c8 bes g c es f4.~ | f4 d8 c bes g4. |   
		}
	}
}


Music = {
	\PI \break
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key c \major
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\keepWithTag #'Theme \Music
	}
>>

