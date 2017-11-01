\version "2.18.2"

\header {
  title = "Когда растает снег"
  composer = "гр. Ventum"
}


HrmA = \chordmode{d1:m d:m bes a:7}
HrmB = \chordmode{d1:m e bes d:m }
HrmC = \chordmode{d1:m bes c d:m }


HClSoloA = {\HrmA \HrmA \HrmA \HrmA }
ClSoloA = {
	\mark "Solo A"
	\relative c'{r4. b8 g'4. fis16 e | g4. d8 r4 e8 fis | 
	e2. \tuplet 3/2 {fis8 a b} | fis4~ fis16 dis d a bes8 g b gis |
	} \bar "."
	\relative c''{r2. \tuplet 3/2{b8 d e} | b1 | s1 s1} \bar "."
	s1 s1 s1 s1 \bar "."
	s1 s1 s1 s1 \bar "||"
}
HClRubato = {\HClSoloA}
ClRubato = {
	\mark "Rubato"
	s1 s1 s1 \relative c'{fis4. dis8 e16 cis bes g c a fis a |} \bar "."
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
	\new Staff{ %\transpose bes c'{
		\clef treble 
		\time 4/4
		\key e \minor
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
	\line{\bold{"I:  "} "Clarinet solo"}
}}
