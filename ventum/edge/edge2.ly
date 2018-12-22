\version "2.18.2"

\header {
	title = "На краю"
	composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})
% xx = {\improvisationOn \absolute {b'16} \improvisationOff}

HrmI = \chordmode {d1 fis:m d a}
HrmII = \chordmode {fis:m e d fis:m} % уточнить!

PI = {
	\tag #'Harmony {
		\HrmI 
		\HrmI 
	}
	\tag #'Winds {
		\mark \markup "Horn" 
		\transpose bes c'{
			\relative c'{e4. g16 g g2 | b4. g16 g g2  } 
			\relative c'{e4. g16 g g2 | b4. g16 g g2  } \longBar
			\relative c''{c4. g16 g g4 a | b4. e,16 e e2  } 
			\relative c''{g4. g16 g g2 | b1  } 
			\bar "||"
		}
	}
}

PII = {
	\tag #'Harmony {
		\HrmII 
	}
	\tag #'Winds {
		\mark \markup "Horn" 
		\transpose bes c'{
			\repeat volta 2{
				\relative c'{e4 g2 g8. e16 | fis1 | g4. e8 c'4. g8  | fis8 e8~e2. | }
			}
		}
	}
}

PIII = {
	\tag #'Harmony {
		s1
		\HrmI
		\HrmI
	}
	\tag #'Winds {
		\mark \markup "Clarinet" 
		% по записи 2018-11-22
		\relative c''{r2. r8 a8 | 
			fis'8 e16 fis~fis2~fis8 e16 d | cis4 a'2 r8 gis16 a |
			b8 fis  e8 fis8~fis2 | fis16 e fis e  d e d cis  d32 (cis) b16 cis d e d e a, \longBar
		}
		\relative c''{
			fis8. e16 fis8 cis16 e fis4 \tuplet 3/2{ e8 cis e}| a4. b8 fis4. a16 ais |
			b16 fis e fis^>  e16 d cis d s2
		}

		s1 
		\bar "||"
	}
}

PIV = {
	\tag #'Harmony {
		\HrmI
	}
	\tag #'Winds {
		\mark \markup "Coda(clarinet)" 
		\transpose bes c'{
			\relative c'{ r4. e8 fis4 g | g2. a8 b | b8 g8~ g2 r8 e8 | e8 d8~d2. }
		}
		\bar "||"
	}
}

Music = {
	\PI \break
	\PII \break
	\PIII \break
	\PIV \break
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key d \major
		\set Staff.instrumentName = "Winds"
		\compressFullBarRests
		\keepWithTag #'Winds \Music
	}
>>

