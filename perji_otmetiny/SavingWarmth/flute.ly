\version "2.14.2"

\header {
	title = "Храня тепло"
	composer = "Перьи Отметины"
	%subsubtitle = "партия флейты"
}

HFluteI = \chordmode{
	fis2.:m | e | d4. e | fis2.:m |
}
FluteIa = {
	\repeat volta 2{
		\relative c''{cis8 b a b a gis | a8 gis e fis4. | <gis b>8 <a cis> b a gis <a e> | fis2. |}
	}
}
FluteIb = {
	\repeat volta 2{
		\relative c'{fis4^"после 1-го куплета" fis8 a4 a8 | gis4 e8 cis fis gis | a4 a8 gis fis e | fis2. |}
	}
}
FluteI = { 
	\key fis \minor 
	\time 6/8
	\FluteIa \FluteIb
}

HFluteII = \chordmode{
	a2. | e | d | b:m |
	a | fis:m | e | fis:m |
}
FluteII = {
	\relative c''{cis4.^"передаю..." b | gis4. fis | gis4. a | b8 b cis d e fis | a8 fis e~e4. | fis8 e cis~cis4. | gis4. a8 gis e | fis 2. \bar "|."}
}

<<
	\new ChordNames{
		\HFluteI \HFluteI 
		\HFluteII
	}
	\new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Flute"
		\FluteI \break
		\FluteII
	}}
>>  


