\version "2.16.2"

\header {
	title = "Плат"
	%subtitle = "партия блокфлейты"
	composer = "Перьи Отметины"
}

\include "parts.ly"



RecorderCI = {
	\relative c'{r4 e4 e'2 | b8 d a2. | b1 | R1 | r2. r8 e16 d | b1 | R1 | r2 |}
	\transpose c' c{<cis''' e'''>2. b''8 cis'''  | <e'' b''>2  <d'' a''>8 <d'' b''> <d'' a''>4 | <d'' a''>8 <e'' b''> <e'' b''>2. |}
}

RecorderCII = {
  \relative c''{r8 gis8 a e' fis8. e cis8 | }
  \relative c'{b2 e | fis2 a8. gis fis8 | e4. b'16 b gis4. }
  \relative c''{gis8 | a8. cis e4. b'16 a gis fis |}
}

RecorderCIII = {
	\relative c''{e2  r2 | e,8. b' e4 b'8 e, b | e,8. b' e4 b'8 e, b | e,8. b' e8~e2 | }
	\relative c'{e2~e2 | r4 }
        \relative c''{gis16 a gis e b'2 | }
	\relative c''{gis8 b e b'|}
	\relative c''{cis2. b8 cis | b2 a8 b a4 | a8 b b2. |}
}

RecorderCIV = \relative c'''{gis8 e16 e e8 b4 e4. |}

RecorderCV = { % а за Валдаем
	R1*2
	\relative c'''{r2 gis8\trill gis\trill a gis~| gis8 e4 gis a8 gis4 |}
	\relative c'{e16 fis gis a gis8 gis16 gis16 b8 cis e4 | }
        \relative c'''{gis16 a gis fis e8 e16 e d8 e e4 | }
	\relative c'''{gis16 a gis a gis4 e16 fis e fis e4 | }
        \relative c''{b16 cis b cis b4 r2 | e1 | g8 e d b a2 | b2. r4 |}
	\relative c'''{gis8 e16 e e8 gis e16 e e4. | e1 | d8 e g e d2 | e,8 fis gis4 b2 | R1 | }
	\relative c'{e16 e e r e' r8 e,16 r e e r e' r8. | e,16 e e r e' r8 e,16 r e e r e'4\trill | }
	R1*2
}

RecorderCVI = {% прямая тропинка
	R1*7
	\relative c''{b8 e,16 e e8 g16 e g8 e g a |}
	\relative c''{\time 3/4 b8 e,16 e e8 d16 e a8 e | \time 4/4 g8 e16 e a8 e g e g g16 fis | e4 r2. | }
	\relative c''{d8. e e8\trill~e2 | d8 e e4. g8 g16 fis e8 | d8. e e8\trill~ e2 | a,8 gis fis e4 fis8 e4 |}
	\relative c'{e8 fis gis a b4 a8 gis | a8 gis fis e4 fis8 e4 | }
}


RecorderC = {
	\key e \major
	\time 4/4
	\RecorderCI
	\RecorderCII
	\RecorderCIII
	\RecorderCIV
	\RecorderCV
	\RecorderCVI
}

\score {
  <<
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Recorder in C"
		\transpose c c{
			\transpose e f{\RecorderC}
		}
    }}
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Voice"
		\transpose e f{\Voice}
    }}
  >>  
  \layout{ }
}
