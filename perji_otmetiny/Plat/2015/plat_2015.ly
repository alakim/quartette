\version "2.16.2"

\header{
	title="Плат"
	composer="гр. Перьи Отметины, 2015 г."
}

HI = \chordmode{
	e1 e e e e e e1. 
	e1 e e 
	e e
	e e e
	e e e e 
	e e e2
	a1:9 e e 
}

FlI = {
	\relative c'{
		r1 | e4 e'2. | b8 d a2. | b1~ | b1 |
		r2. r8 e16 d | b1 | 
		\time 6/4 r1. | \time 4/4
	}
	\relative c'''{cis2 cis4 b8 cis | b2 a8 b a4 | a8 b b2. |}
	\relative c''{
		r8 gis8 a e' fis8. e cis8 | b2 e | 
		fis2 a8. gis fis8 | e4. b'16 b gis4. gis,8 | a8. cis e8~e4 b'16 a gis fis | 
		e2 e | b1 | gis1 | e8. d e4 r4. | 
		gis2 a | b2 gis'16 a gis e gis,8 b | \time 2/4 e8 b' e,4 | \time 4/4
	}
	\relative c''{cis2. b8 cis | b2 a8 b a4 | a8 b b2. | gis'8 e16 e e8 b4 e4. |}
}
LI = \lyricmode{
	_1 _ _ неразделимая _ _ неопалимое _1.
	плат1 _ городом _ _ _ _ _
	неразделимая _ _ _ неопалимое _ _2
	плат1 _ городом _
	"а за Валдаем"1 _ _ _
	велика _ _ _2 ставя2
	перьи1 "с края" _ _ перьи
	"с края" _ _ 
	перьи "с края"
}
FlII = {
	\relative c''{
		gis4. a16 b e4. dis16 cis | b4 gis8 a b cis b4 | 
		gis2 gis'8\trill gis a gis~| gis8 e4 gis a8 gis4 |
		e16 fis gis a gis8 gis16 gis fis8 e e4 | gis4 e8 e d e e d~ | d1 | 
		d16 e d e d2. | e1 |
		g8 e d b a2 | b2. r4 |
		gis'8 e16 e e8 gis e16 e e4. | e1 |
		d8 e g e d2 | e,8 fis gis4 b2 | r1 |
	}
	\relative c''{e16 e e r e' r8 e,16 r e e r e' r8. |}
	\relative c''{e16 e e r e' r8 e,16 r e e r e'8.\trill \bar "||"}
}

ObI = \relative c''{
	\mark Coda
	\repeat volta 2{e2. fis8 gis | a2. gis8 fis | gis1~ | gis2. fis8 gis | fis8 gis e2. |}
}

<<
	% \new ChordNames{
	% 	\HI
	% }
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Flute"
		\time 4/4
		\key e \major
		\FlI \break
		\FlII
	}
	\new Lyrics {
		\LI
	}
>>

<<
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Oboe"
		\time 4/4
		\key e \major
		\ObI
	}
>>