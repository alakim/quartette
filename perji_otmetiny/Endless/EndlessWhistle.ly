\version "2.12.2"

\header{
  title = "Бесконеченная"
  composer = "Перьи Отметины"
  subsubtitle = "for whistle"
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}

Harmony = \chordmode{
	d1  | d1 | a1 | a1 | 
	d1  | d1 | a1 | a1 | 
	d1  | d1 | a1 | a1 | 
	b1:m  | b1:m | a1 | a1 | 
}

WhistleI = {
	\relative c''{r1^"боси-" | r1^"ком" | a4.^"сумкою" b8 a2 | cis4. d8 cis4 e, | d4. a'^"налег-" d4 | b4.^"ке" a e'8 fis |}
	\relative c''{e4.^"думкою" a, e'8 fis | e4. d e4 | a,2. r4 | r2 r8 a8 b^"нена-" a | a4.^"валено" d8 e4 e8 fis | e4. cis8 fis4 e | }
	\relative c''{a'2~a8 e d b | a2~a8 e^"без сле-" fis e | a2^"да" r | r4. e8 \(a b a e | fis4. \) a^"и та-" d,4  | fis4.^"кая" a b4 |}
	\relative c''{e4.^"силушка" cis8 a2 | r4. e8 a b a e | fis4. e8 a b a e | fis2^"в землю" r | e'4.^"три вершка" cis8 a4. e'8 | fis4. e8 a,4. e8 \( |}
	\relative c'{fis4. a8~a2 \) | r1 | a2.^"солнышка" e'8 fis | e4. a,8 fis'4 e | d4. fis,8 a4^"обо-" r | r8^"греюсь" e8 fis a b a fis d | a'2^"тогда" r |}
	\relative c'{r4. e8 a b a e | fis2 r | r1 | r1 |}
	\relative c'{r4. e8 a b a e | fis2 r | r1 | r1 |}
	\relative c'{r4. e8 a b a e | fis2 r | r1 | r1^"дымкою" | r1 |}
	\relative c''{fis8 e d cis b4. e8^"пеш-" | fis8^"ком" e d cis b2^"боси-" | d8^"ком" cis b a~a2 | r4. e8 a b a e | fis2 r | r1 | a2.^"встреченный" e'8 fis | e4. e,8 a b a e | fis2 r | r1^"за-" | r1^"плеченной" | cis'4. b a4 | fis2 r |}
}

HCoda = \chordmode{
	d1 | d1 | a1 | a1 |
}
Coda = {
	\mark "Coda"
	\repeat volta 2{
		\relative c''{fis8 e d cis b4. e8 | fis8 e d cis b2 | d8 cis b a~a2 | r4. e8 a b a e |}
	}
}

<<
	\new ChordNames{
		\Harmony
		\Harmony
		\Harmony
		\chordmode{
			d1 | d1 | a1 | a1 |
			d1 | d1 | a1 | a1 |
			d1 |
		}
		% \Harmony
		\HCoda
	}
	\new Staff{
		\set Staff.instrumentName = "Whistle in D"
		\clef treble \time 4/4 \key a \major
		\WhistleI \bar "||" \break
		\Coda
	}
>>

