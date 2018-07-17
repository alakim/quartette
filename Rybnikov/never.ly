\version "2.18.2"

\header{
	title="Я тебя никогда не забуду"
	composer="А.Рыбников"
}

Hrm = \chordmode{
	s1 | e1:m | b1:7 | b:7 | e:m |
	a2:m7 d:7 | g1 | a2:m7 b:7 | e1:m |
	e1:m | e2:m e:7 |
	a1:m9 | e:7-9 | e:7-9 | a:m9 | d2:m7 g:7|
	c1:maj | d2:m7 e | a1:m9 |
	d2:m7 g:7 | c1:maj |
	d2:m7 | e1 | a1:m |
}

Trp = {
	\key e \minor
	\repeat volta 2{
		\relative c' {
			r2. r8 b | b4 r8 b16 b b4. c16 b | b4 a r4. a16 a |
			a8 r4 a16 a \tuplet 3/2 {b4 dis fis } |
			fis4 g r4. e16 fis | g4. fis16 g b4. a16 g | fis4 g r4. e16 fis |
			g4. fis16 g b4. a16 dis, | dis4 e r2 |
		}
	}
	\alternative{
		{\relative c'{dis4 e r4. b16 b}}
		{\relative c'{dis4 e r4. e16 e}}
	}

	\relative c'{
		e4. e8 e4. f16 e | e4 d2 r8 d16 d |
		d4. e8 \tuplet 3/2 {e4 gis b } | b4 c2 r8 a16 b |
		c4. b16 c e4. d16 c | b4 c2 r8 a16 b | c4. b16 c e4. d16 gis, |
		gis4 a2 r8 a,16 b | c4. b16 c e4. d16 c | b4 c2 r8 a16 c |
		\time 2/4 c4. b16 c |
		\time 4/4 e2. r8 d16 gis, | gis4 a2. |
	}
}


<<
	\new ChordNames{\transpose bes c{\Hrm}}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\transpose bes, c{\Trp}
	}
>>
