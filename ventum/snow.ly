\version "2.18.2"

\header {
  title = "Когда растает снег"
  composer = "гр. Ventum"
}


HrmA = \chordmode{d1:m d:m b a:7}
HrmB = \chordmode{d1:m e b d:m }
HrmC = \chordmode{d1:m b c d:m }


HClSoloA = {\HrmA \HrmA \HrmA \HrmA }
ClSoloA = {
	\mark "Solo A"
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "||"
}
HClRubato = {\HClSoloA}
ClRubato = {
	\mark "Rubato"
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "||"
}
HClSoloB= {\HClSoloA}
ClSoloB= {
	\mark "Solo B"
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "||"
}


HrmMain = {
	\HClSoloA
	s1*8
	s1*8
	s1*8
	s1*16
	s1*6
	\HClRubato
	\HClSoloB
}
<<
	\new ChordNames{\transpose bes c{\HrmMain}}
	\new Staff{\transpose bes c'{
		\clef treble 
		\time 4/4
		\key c \major
		\set Staff.instrumentName = "Clarinet"
		\ClSoloA

		\break
		\compressFullBarRests
		\mark "Gtr, Vln"
		R1*8 \bar "||"
		\mark "Vln"
		R1*8 \bar "||"
		\mark "Riffs"
		R1*8 \bar "||"
		\mark "Gtr solo"
		R1*16 \bar "||"
		\mark "Riffs"
		R1*6 \bar "||"
		\break
		\ClRubato
		\break
		\ClSoloB
	}}
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
	\line{\bold{"I:  "} "Clarinet solo"}
}}
