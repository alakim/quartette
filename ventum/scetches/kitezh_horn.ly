\version "2.18.2"


\header{
	title="Китеж. Горн."
}

Hrm = \chordmode{
	cis1:m | gis:m |
	cis2:m bes | e1:maj
	a2 fis:m | b1:7 |
	e2 b | cis1:m |
}

Horn = {
	\time 4/4
	\key cis \minor
	\relative c''{
		gis16 fis gis8 ~gis4. fis8-. e-. fis-. | dis1 |
		e16 dis e8~e4. dis8-. cis-. b-. | dis2 b |
		% fis4. cis16 cis cis2~ | cis1 |
		% e4. b16 b b2~ | b1 |
		e4. cis16 cis cis4 b4 | dis1 |
		e4. b16 b b4 dis | cis1 \bar "||"
	}
}


<<
	\new ChordNames{
		\Hrm
	}
	\new Staff{
		\set Staff.instrumentName="Flugelhorn"
		\clef treble
		\Horn
	}
>>
