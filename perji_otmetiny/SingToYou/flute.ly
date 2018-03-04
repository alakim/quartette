\version "2.14.2"

\header {
	title = "Петь тебе"
	composer = "Перьи Отметины"
	subsubtitle = "партия флейты"
}

FluteI = {
	r1
	\relative c'''{r2.^"не |улучу" a16 fis e d | fis2 r | }
	\relative c''{r2.^"|горькое" fis16 e d b | a4.^"|_лукавство" r8 g4 fis | d2 d'4 cis |}
	\relative c''{a2 a'4 fis | d2.^"ис|кать" fis16 e d e | fis2.^"|_искать" r4}
}

FluteII = {\repeat volta 2{
	<<{\relative c'{fis4^"о расстриженном" fis a a | b b d d |}}\\
	{\relative c'{d4 d e e | g g g g |}}>>
}}

FluteIIIa = {
	\relative c''{r4 fis8 g a g fis b, | e2  g | r4 fis8 g a g fis b,| }
	\relative c''{e16 fis e8 <a e>4 <g b,>4. <fis a,>8 | d1 |}
}
FluteIIIb = {
	\relative c'''{g8 a g fis e4. d8 | e8 fis4. a8 b a4 |}
	\relative c'''{d8(b) a(g) fis(e) d4~| d2 fis |}
	\relative c'''{b2 d8 b a g | a4 d, e2~ | e2 r |}
}
FluteIIIcb = {
	\relative c'{d8 e fis g fis4. e8 | d2 r |}
}
FluteIIIc = {
	<<{\relative c'''{d8 b a g a4. cis8 | d2 r |}}\\
	{\FluteIIIcb}>>
}
FluteIII = {
        \FluteIIIa
        \FluteIIIb
        \FluteIIIc
}
FluteIIICl = {
        \FluteIIIa
        \transpose c' c{\FluteIIIb}
        \FluteIIIcb
}

Flute = {
	\key d \major \time 4/4
	\FluteI  \bar "||" s1 |
	\FluteII 
	\break
	\FluteIII
}
FluteCl = {
	\key d \major \time 4/4
	\FluteI  \bar "||" s1 |
	\FluteII 
	\break
	\FluteIIICl
}
<<
	\new Staff {\transpose c' c'{
		\set Staff.instrumentName = "Flute"
		\Flute
	}}
>>  

\markup "Переложение для кларнета Bb"

<<
	\new Staff {\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\FluteCl
	}}
>>  

