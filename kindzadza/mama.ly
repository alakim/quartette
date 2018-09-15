\version "2.18.2"


\header{
	title="Кин-дза-дза"
	subtitle="Переложение для кларнета"
}


ClI = \relative c''{
	\key c \major
	g2 e | g2 e| d4 e f e | e2 c \bar "||"
}

ClII = \relative c''{
	\repeat volta 2{
		g4 gis g,2 | g'4 gis g,2 | g'4 gis gis ais | ais gis gis g |
		f4 g g,2 | f'4 g g,2 | f'4 g g gis | gis g g f |
		f4 dis g,2 |f'4 dis g,2 | es''4 d d es | es d d es |
	}
	\alternative{
		{\relative c''{es  d d c | c1 |}}
		{\relative c''{g4 gis g,2|}}

	}
}
ClIII = \relative c''{
	gis4 a g,2 | ais'4 b g,2 | a'1 | es4 d f,2| es'4 d f,2 | 
	gis''4 gis, es gis | g'4 g, es g | gis'4 gis, es gis | g'4 g, es g |
}


<<
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\time 4/4
		\ClI
		\ClII
		\ClIII
	}}
>>
