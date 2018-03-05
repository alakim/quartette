\version "2.12.2"

\header{
	title="Этюд \"Светло\""
	composer = "alakim"
	subtitle="11.06.2012"
}
lineBreak = {\break}

Melody = {
	\repeat volta 2{
		\relative c''{cis8^IV a b cis e cis d e| gis2^VI d | a'8^"VII" gis fis e d cis d e | d4^VI gis, e gis | \lineBreak}
	}
	\repeat volta 2{
		\relative c''{cis8^IV a b cis d e cis a | b8^"II" a b d cis b a gis |	a cis b a b e d b | cis b cis e d gis, e gis | \lineBreak}
	}
	\relative c''{cis8^"II" a cis a fis'^"VII" d fis d | cis8 d e cis d4 b | cis8 a b cis gis e e' d | cis b a cis fis e d cis | \lineBreak}
	\relative c''{d8 cis d fis gis e,gis d' | cis d e cis d d,fis d' | e^"III" d cis b d^"VI" cis b a | gis b d f gis b d b | \lineBreak}
	\key a \minor
	\relative c'''{c8^V a e c b'^IV gis e d | c b c e b4 e, | c'8 b c e d b g b | a8^"I" f c'^"III" f, b e d^"VI" gis, | \lineBreak }
	\relative c'''{a8^VII g f e d c b d | c8^IV b c e d c b d | c^III d e g f e d c | b8^III d f^VI gis b^VII d b gis | \lineBreak}
	\key a \major
	\repeat volta 2{
		\relative c'''{a8^VII gis fis e d cis d e | d4 gis, e gis | cis8 a b cis d cis b gis | b4 e, d' gis, |}
	}
}

Bass = {
	\set stringNumberOrientations = #'(down)
	\set fingeringOrientations = #'(down)
	\override StringNumber #'self-alignment-X = #-1 
	\textSpannerDown
	<a-2\6>1\startTextSpan | b-2 | cis'-2 | b2-2\stopTextSpan <e'\5> |
	<a-2\6>1\startTextSpan | gis-2 | fis2-2 gis-2 | a-2 b-2\stopTextSpan |
	fis2_\markup{\italic simile} b | ais b | a gis | fis ais |
	b2 e' | a d' | cis' b | r1 |
	a2 gis | a gis | a g | f4 a gis b |
	c'2 b | a g | c' a | <gis\6>4 b <f'\5> e' |
	cis'1 | b2 e' | a1 | gis2 b |
}

<<
	\new Staff{
		\clef "treble_8" \key a \major \time 4/4
		\set Staff.instrumentName="Guitar"
	\transpose c' c{
		<<{\Melody}\\{\Bass}>>
	}
	}
>>
