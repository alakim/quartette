\version "2.12.2"

\header{
	title="Этюд"
	composer = "А. Акимов"
	subsubtitle = "http://vk.com/terseguitar"
}
lineBreak = {\break}

Melody = {
	\repeat volta 2{
		\relative c''{cis8^IV a b cis d e fis \glissando gis | gis4^VI gis, d'4 gis | a8^"VII" gis fis\mordent e d cis d e | d4^VI gis, e gis | \lineBreak}
	}
	\repeat volta 2{
		\relative c''{cis8^IV a b cis d e cis a | b8^"II" a b d cis b a gis |	r8 a fis a b e, b' e | }
	}
        \alternative{
          {\relative c''{cis8^IV a b cis  d^VI gis, e gis |}}
          {\relative c''{cis8 a b cis  b^II a gis fis |}}
        }
         \lineBreak
	\relative c''{r8^"II" a cis a r^"VII" <d fis> <d fis> <d fis> | cis8 d e cis d4 b | cis8 d e cis b a b e| r a, cis a  r <cis fis> <cis fis> <cis fis>  | \lineBreak}
	\relative c''{d8 cis d fis \glissando gis e,gis d' | cis d e fis r d fis d | e^"III" d cis b d^"VI" cis b a | gis b d f gis b d b | \lineBreak}
	\key a \minor
	\relative c'''{c8^V a e c b'^IV gis e d | c b c e b8 e, e' b | c8 b c e  b g d' b | a8^"I" f c'^"III" f, b e, d'^"VI" gis, | \lineBreak }
	\relative c'''{a8^VII g f e d c b d | c8^IV b c e b g d' b | <c e>8^III d e g f e d c | d8^III b f'^VI gis b^VII d b gis | \lineBreak}
	\key a \major
	\repeat volta 2{
		\relative c'''{a8^VII gis fis\mordent e d cis d e | d4 gis, e gis | }
	}
        \alternative{
          {\relative c''{cis8 a b cis d e fis \glissando gis | gis4 gis, d' gis |}}
          {\relative c''{cis8 a b cis b a b e | r8 a, cis a  b e, b' e| cis a b cis  d cis d fis | gis fis e d cis b a cis | b a gis fis gis a b cis | a e cis e a e cis e | a1^II\fermata }}
        }
}

Bass = {
	\set stringNumberOrientations = #'(down)
	\set fingeringOrientations = #'(down)
	\override StringNumber #'self-alignment-X = #-1 
	\textSpannerDown
	<a-2\6>1\startTextSpan | r8 e'-2~e'2.   | cis'1-2 | b2-2\stopTextSpan <e'\5> |
	<a-2\6>1\startTextSpan | gis-2 | fis2-2 \glissando gis-2 | a-2 b4-2 e'\stopTextSpan | a2-2 gis-2 |
	fis2_\markup{\italic simile} \glissando b | ais b | a gis | fis \glissando ais |
	b2 r8 e'4. | a2 d' | cis' b | r1 |
	a2 gis | a gis | a g | f4 a gis b |
	c'2 b | a g | c' a | <gis\6>4 b <f'\5> e' |
	cis'1 | b2 e' | 
        a1 | r8 e'~e'2. |
        a2 gis | fis gis | a b |r1 | r1 | a1 | a1\fermata \bar "|."
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
