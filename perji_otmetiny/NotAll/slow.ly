\version "2.18.2"

\header{
	title = "Не всё"
	subtitle = "медленная часть (в тональности кларнета)"
	composer = "гр. Перьи Отметины"
}

Fl = \relative c'''{
	\key cis \minor
	gis16 fis gis2. e8 | fis16 e fis2. dis8 | e16 dis e2. cis8 | dis16 cis dis2. r8 |
}

Cl = \relative c'''{
	\key cis \minor
	r2 b16 ais b4.~ | b8 r4 e,8 fis16 e fis4.~ | fis8 r8 e fis gis16 fis gis4 ais8 |
	b8 fis4 b8 ais16 gis fis4.
}

Bass = \relative c{
	\key cis \minor
	cis2 e | b fis' | cis e | b fis' \bar "|."
}


<<
	\new Staff{
		\set Staff.instrumentName = "Flute"
		\clef treble
		\time 4/4
		\Fl
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\time 4/4
		\Cl
	}
	\new Staff{
		\set Staff.instrumentName = "Bass"
		\clef bass
		\time 4/4
		\Bass
	}
>>
