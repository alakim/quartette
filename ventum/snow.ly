\version "2.18.2"

\header {
  title = "Когда растает снег"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{d1:m d:m bes a:7}
HrmB = \chordmode{d1:m e bes d:m }
HrmC = \chordmode{d1:m bes c d:m }

PI = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA}
	\tag #'Clarinet {
		\mark "Solo A"
		\relative c'{r4. b8 g'4. fis16 e | g4. d8 r4 e8 fis | 
		e2. \tuplet 3/2 {fis8 a b} | fis4~ fis16 dis d a bes8 g b gis |
		} \longBar
		\relative c''{r2. \tuplet 3/2{b8 d e} | b1 | s1 s1} \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \bar "||"
	}
}

PII = {
	\tag #'Harmony { s1*8}
	\tag #'Clarinet { \break \mark "Gtr, Vln" R1*8 \bar "||" }
}

PIII = {
	\tag #'Harmony { s1*8}
	\tag #'Clarinet { \mark "Vln" R1*8 \bar "||" }
}

PIV = {
	\tag #'Harmony { s1*8}
	\tag #'Clarinet { \mark "Riffs" R1*8 \bar "||" }
}

PV = {
	\tag #'Harmony { s1*16}
	\tag #'Clarinet { \mark "Gtr solo" R1*16 \bar "||" }
}

PVI = {
	\tag #'Harmony { s1*6}
	\tag #'Clarinet { \mark "Riffs" R1*6 \bar "||" }
}

PVII = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA}
	\tag #'Clarinet { 
		\break
		\mark "Rubato"
		s1 s1 s1 \relative c'{fis4. dis8 e16 cis bes g c a fis a |} \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \bar "||"
	}
}

PVIII = {
	\tag #'Harmony { s1*16}
	\tag #'Clarinet { \mark "Vln solo" R1*16 \bar "|." }
}

Music = {
	\PI
	\PII
	\PIII
	\PIV
	\PV
	\PVI
	\PVII
	\PVIII
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ %\transpose bes c'{
		\clef treble 
		\time 2/2
		\key e \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests

		\keepWithTag #'Clarinet \Music
		
	} %}
>>

\markup{\column{
	\line{\bold{"ФОРМА:"}}

	\line{\bold{"I:  "} "Clarinet: 16m"}
	\line{\bold{"I:  "} "Guitar, Violin: 8m + Violin 8m"}
	\line{\bold{"4m "}} 
	\line{\bold{"II:  "} "Riffs: 8m"}
	\line{\bold{"III:  "} "Guitar solo with breaks"}
	\line{\bold{"II:  "} "Riffs: 8m"}
	\line{\bold{"I:  "} "Clarinet rubato"}
	\line{\bold{"I:  "} "Violin solo"}
}}
