\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header{
  title = "Бесконеченная"
  composer = "Перьи Отметины"
  subsubtitle = \date
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}

ClarinetI = \relative c''{
	r2. d4 | a2. g4 | f1~| f4^"снегом" a2 d4^"изу-" | c2.^"веченный" d4 | 
	c2. f,4 |a1^"проберусь" | f2 r | c'2.^"дымкою" d4 | c2. g4 | a1^"где бегом" | 
	r4 c2^"где босиком" c8 d | c4. g2 d'8 | c2. g4 | a2 r^"и никем" | r4 d, f2 | 
	r2^"встреченный" r4 d' | c2. f,4 | a1^"в паре с сумкою"| c1 | r2. d4 | c2. g4 | 
	a1^"по затеням" | f2. a4 | c2. d4 | c2. g4 | f4. d4. a'4 | 
	f4.^"недотаявшим" d4. a'4 | r4^"ледком" g8 a g c4. | g2 c | r2.^"2 КУПЛЕТ Босиком" 
	<<{f8 e | f2~f8 e d c | e4.^"сумкою" f8 e2 |}\\{a,8 g | a2~a8 a a g | g4. a8 g2 |}>>
	g2. e4 f2.
	<<{f'8^"налегке" e | f2~f8 e^"с простою" d c | e4.^"думкою" f8 e2 |}\\{a,8 g | a2~a8 a a g | g4. g8 g2 |}>> e4. f g4 | a2. 
	<<{f'8 e | f2^"снега"~f8 f f g | g4. e8 c2}\\{a8 g | a2~a8 a a c | c4. g8 g2 |}>> c2. g4 a1 |
	f2^"растает"~f8 g g g | g2. r4 | g8 c d, e2 r8 | r2 r4 a8 g |
	a2.^"такая силушка" a8 c | c4. d8 \appoggiatura b8 c2 | e,4. f8 e2 | f4. c'4. a8 g |
	a2^"три вершка" a8 g a c | g4. a8 g2 | e4. d c4 | f2. a8^"все равно" g |
	a2. a8 g | g4.^"солнышка" c8 c2 | g8 c d, e2 r8 | a2. f8^"обогреюсь" e |
	f2.~f8 g | g1 |
}

ClarinetII = {
	\repeat volta 2 {g'2 c''^"(Далее как в 1м куплете кроме указанных мест)" | s1 | s1 | s1 |}
	 s1 | s1 | s1 | s1 |
	 r1^"зеленой дымкою" \relative c''{d8 c d e f g e c |d^"пешком" c d e f g e d | c4.^"босиком" g'2 r8|}
	 s1 | s1 | s1 | s1 |
	 s1 | s1 | s1 | s1 |
	 \relative c''{c4. d g,4 | f2 r^"по затеням"|}
	 s1 | s1 | s1 | s1 |
	 s1 | s1 | s1 | 
	 \relative c''{f1^"Coda" | f4. e f4 | c1 | s1 | f1 a, | c1 | s1 \bar "|."}
	 
}


<<
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble \time 4/4 \key c \major
		\ClarinetI
		\ClarinetII
	}}
>>