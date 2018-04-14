\version "2.18.2"

\header {
	title = "Старый маяк (Китеж)"
	composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode {b1:m %{g/d%} d/g a b:m}
HrmB = \chordmode {b2:m bes:m5+ | a:m as:m5+ | g:m ges:m5+ | c b:m |}


PIx = {
	\tag #'Harmony {
		\HrmA \HrmA 
	}
	\tag #'Voice {
		\mark \markup{\circle 1}
		%{
			\relative c'{
				e8 e dis16 cis gis8  e'8 e dis16 cis gis8 |  
				b16 d e8 cis a a' cis fis4~ | fis8 fis dis e cis dis b4 |
			}
		%}
		e'1 cis'1 b1 gis1 \longBar 
		e'2. e'16 fis' b'8 gis'2 a' fis'1 gis'1 \bar "||"
	}
}

PI = {
	\tag #'Harmony {
		\HrmA 
	}
	\tag #'Voice {
		\mark "Intro"
		\repeat volta 3{
			\relative c''{r1 | r2 gis2^"Horn" | gis8 fis~fis2. | r1 |}
		}
	}
}

PII = {
	\tag #'Harmony { R1*4 }
	\tag #'Voice {
		\mark \markup{\circle 2}
		R1*4^"Gtr"
		\bar "||"
	}
}

PIII = {
	\tag #'Harmony {
		\HrmB \HrmB
	}
	\tag #'Voice {
		\mark \markup{\circle 3}
		\relative c'{\grace gis16 e'4.^"Clarinet" cis8 gis'4. es8 | }
		\relative c'{fis4 d cis8 ais fis ais | c4. e8 gis8 fis e b | a8 e' d fis e8 cis gis'4 }
		\longBar
		% \relative c''{gis4. fis8 gis4. es8 | d8 fis a b des4. bes8 | c4. e8 ~ e8 d b gis | }
		\relative c''{
			% gis4. fis8 gis4. es8 | 
			gis8 fis16 gis16~gis8 e16 gis16~gis4. a8 | 
			% fis8 a4 b8 e8 cis g16 bes g8 | 
			fis4~fis16 d cis b     \tuplet 3/2 {fis'4 gis ais} |
			% c4. e8 ~ e4 d8 b  | 
			% e4. c'8 e4~e16 d b gis   fis'4~fis16 e d fis gis2 \fermata 
			c8 e,4. e'8 b4. | fis'4~fis16 d e fis gis2 \fermata
		}
		% \relative c''{ fis8 e d e gis2 \fermata |  }
		\bar "||"
	}
}

PIV = {
	\tag #'Harmony { R1*4 }
	\tag #'Voice {
		\mark \markup{\circle 4}
		R1*4^"Gtr"
		\bar "||"
	}
}

PV = {
	\tag #'Harmony { R1*8 }
	\tag #'Voice {
		\mark \markup{\circle 5}
		R1*8^"Vln"
		\bar "||"
	}
}

PVI = {
	\tag #'Harmony { R1*4 }
	\tag #'Voice {
		\mark \markup{\circle 6}
		R1*4^"Drums"
		\bar "||"
	}
}

PVII = {
	\tag #'Harmony {
		\HrmB
	}
	\tag #'Voice {
		\mark \markup{\circle 7}
		\repeat volta 2{
			\relative c''{gis1^"Horn/Gtr" | b2 bes | e,1 | fis2 gis | }
		}
	}
}

PVIII = {
	\tag #'Harmony { R1*8 }
	\tag #'Voice {
		\mark \markup{\circle 8}
		R1*8^"Vln"
		\bar "||"
	}
}

PIX = {
	\tag #'Harmony {
		\HrmA
	}
	\tag #'Voice {
		\mark \markup{\circle 9}
		\repeat volta 2{
			\relative c''{gis1^"Horn/Bass" ~| gis1 | gis8 fis8~ fis2. | e2 fis8 e  fis e | }
		}
	}
}


Music = {
	\PI
	\PII
	\break
	\PIII
	\break
	\PIV
	\PV
	\PVI
	\break
	\PVII
	\break
	\PVIII
	\PIX
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\clef treble 
		\time 4/4
		\key cis \minor
		\set Staff.instrumentName = "Clarinet/Flugelhorn"
		\compressFullBarRests
		\keepWithTag #'Voice \Music
	}
>>


\markup{
	\column{
		\line{"Cm+5 -> G#7; Bbm+5 -> F#7; Abm+5 -> E7"}
	}
}
