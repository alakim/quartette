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
	\mark "Intro"
	\key e \major
	r1 | r1 | r1 | r1 |
	\relative c'{
		cis2. b8 cis16 dis | dis2. cis8 dis16 e |
		e2. dis8 e16 fis | fis2 gis8 fis4 e16 fis |
	}
}

ClII = {
	\mark "Verse"
	\relative c'{
		e2 r4 gis, | fis1 | b2. gis4 | fis2 r8 gis8 a b |
		cis2. b8 cis16 dis | dis2. cis8 dis16 e |
		e2. dis8 e16 fis | fis2 gis8 fis4 e16 fis |
	}
}

ClIII = {
	\mark "Solo"
	\relative c''{
		a8 gis8~gis2 fis8. e16 | dis2 r8 dis8 e fis | fis4. e16 dis \tuplet 3/2{e8 dis cis} \tuplet 3/2{dis8 cis b} |
		b8 b16 cis dis8 cis16 dis e8 dis16 e fis4 |
	}
}

<<
	\new ChordNames{\transpose bes c{
		\HVerse
		\HVerse
		\HVerse
	}}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\time 4/4
		\transpose bes c'{
			\ClI \break
			\ClII \break
			\ClIII \ClIII \break
		}
	}
>>
