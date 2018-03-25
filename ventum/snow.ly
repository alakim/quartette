\version "2.18.2"

\header {
  title = "Когда растает снег"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{d1:m d:m bes a:7}
HrmB = \chordmode{d1:m e bes d:m }
HrmC = \chordmode{d1:m bes c d:m }

%{
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
%}

PI = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA}
	\tag #'Clarinet {
		\mark "Solo A"
		% t=0:37
		\relative c'{r2. r8 b8 | g'2. fis8 e |fis2 e | r8 b8 cis dis e fis g a |} \longBar
		% t=0:45
		\relative c''{g4 a2.~ | a2. \tuplet 3/2{ b8 d e} | b2 a | g'1 |}  \longBar
		\relative c''{fis4 e a8. g16 fis8 e | fis4 e a8 g4. | b2. a8 g | a8 g fis8 e g8 fis e8 d| } \longBar
		\relative c''{e1 | e2. r8 } \relative c'{e8 | fis8 e dis e g4 a | b2 e4 d } \bar "||"
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
		% g'1^"clarinet only" b'1 s1 \relative c'{fis4. dis8 e16 cis bes g c a fis a |} \longBar
		g'2.^"clarinet only" \relative c'{r16 fis16 g a }| b'1 
			%\relative c''{g8 e c a dis c a c |}
			\relative c''{g8 e c dis c a4.  |}
			\relative c'{r8 bes cis e g a c dis } \longBar
		e''1^"with rhythm section..." s1 s1 s1 \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \longBar
		r1 ^"rhythm section only"
		r1 r1 r1 \bar "||"
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
