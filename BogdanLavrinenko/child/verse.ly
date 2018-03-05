\version "2.16.2"


\header{
	title="Ребёнком"
	composer="гр. День Радости"
}


HVerse = \chordmode{
	e1 | b | e | b |
	a | b | a | b |
}

ClI = {
	\key fis \major
	\relative c{
		fis2. ais4 | gis1 | cis2. b4 | cis2. b8 cis |
		dis2. cis8 dis | eis2. dis8 eis | fis2. eis8 fis | gis2 ais8 gis ais gis |
	}
}

VlnI = {
	\key e \major
	s1^"ad lib." | s1 | s1 | s1 |
	\relative c'{ a1 | b1 | cis1 | dis1 |}
}

BassI = {
	\key e \major
	\relative c{e1 | b | e | b |}
	\relative c' {a2 e4 cis | b2 cis4 b | a2. bes4 | b2 dis |}
}

<<
	\new ChordNames{
		\HVerse
	}
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble
		\time 4/4
		\VlnI
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\time 4/4
		\transpose c' bes{
			\ClI
		}
	}
	\new Staff{
		\set Staff.instrumentName = "Bass"
		\clef bass
		\time 4/4
		\BassI
	}
>>