\version "2.16.2"

\header{
	title = "Air"
	subtitle = "from the Orchestral Suite no 3 BWV 1068"
	composer = "Bach J.S."
	subsubtitle = "arrangement for guitar by Akimov A."
}

ThemeI = \relative c' {
	\key d \major
	\time 4/4 
	\repeat "volta" 2 {
		fis'1 ~ |
		fis8 b16 g \acciaccatura { fis8 } e16 d cis d cis4 \acciaccatura { b8 } a4 |   % 3
		a'2 ~ a16 fis c! ( b ) e ( dis! ) a' g | g2 ~ g16 e b ( a ) d ( cis ) g' ( fis ) |   % 5
		fis4. gis!16 ( a ) d,8 d32 e fis16 ~ fis e e ( d ) | 
	} 

	\alternative {
		{
			cis16 b b32 cis d16 ~ d8 cis16 b a2 
		}
		{
			cis16 b b32 cis d16 ~ d8 cis16 b a2 
		}
	} 

	\repeat "volta" 2 {
	cis4 ~ cis16 d32 cis b cis a16 a'4. c,!8 |
	b b' ~ b16 a g fis g4 ~ g32 fis e d cis!16 b |   % 11
	ais! b cis8 ~ cis16 d e8 ~ e16 fis g8 ~ g fis |
	e16 d cis b cis (  d32 e ) d8 b2 % 13
	d4 ~ d16 fis e d b'4 ~ b8 a16 gis! |
	fis32 e a16 a,8 b8. ( cis32 d ) cis8. b16 a4 |   % 15
	d4. fis16 ( e ) e4. g16 ( fis ) |
	fis4. a16  ( g ) g2 |   % 17
	a,4 ~ a16 cis e g g e fis8 ~ fis ~ fis16 g32 a |
	d,4 ~ d16 fis a c! b4. d,8 |   % 19
	cis!16 e g4 b,8 a e'16 fis32 g~ g16 fis8 e16 |
	d32 cis b8 cis16 d8  ( cis16) \trill d d2 
	} 
} 

BassI = {
	\relative c{d8 d cis cis b b a a | g4 gis a8 a g g |}
	\relative c,{fis8 fis' e, e' dis4 b4 | e8 e' d d, cis4 a |}
	\relative c{d8 d' cis cis, b b' gis e |}
	\relative c'{a,8 d cis e,  a16 b cis d e g fis e | }
	\relative c'{a,8 d cis e, a2 |}
}

BassII = {
	\relative c{a8 a' g g, fis fis' cis4 |}
	\relative c{dis4 fis8 b, e4 d | cis4 b  ais8 b cis ais | b8 g e f b b a a | gis8 gis fis4 e8 e' d4 |}
	\relative c{cis4 d8 e  fis,4 g | fis8 fis' g g, gis gis' a a, | ais8 ais' b b, e, e' d d |}
	\relative c{cis8 cis a cis d d c c' | b8 b, a a' g g, fis fis' | e4 d4 cis8 a d g | a8 g a a, d2 }
}

HarmonyI = \chordmode{
	d2 b:m | g a | fis:dim b:7 | e:m a:7 |
	d2 e:7 | a1  | a1 |
}
HarmonyII = \chordmode{
	a2 fis:dim | b:7 e:m7 | cis:dim fis:7 | b:m b:m7 |
	e1:7 | a2:7 fis:m | b2:m e4 a4 | dis4:m b4 e2:m7 |
	a2 d4:sus c | b2:m e:m | a1:7 | d4 a4:7 d2 |
}

<<
	\new ChordNames{ \HarmonyI \HarmonyII }
	
	\new Staff{
		\clef "treble_8"
		<<{
			\transpose c' c{\ThemeI}
		}\\{
			\BassI \BassII
		}>>
	}
>>