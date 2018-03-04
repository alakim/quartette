FluteI = {
	\relative c''{d8^"проигрыш A" c bes a bes4. g8 | a8 bes a4 g c | d8 c bes a bes c d e | f8 c bes a g4 c |} 
	\relative c''{d8 e f g a4 g | f8 g f4 g8 f e c | d4 f8 ges g4. d8 | f8 e d4 c2 | R1*8^"Ехал с гульбища..." |} 
}

FluteII = {
	\relative c''{g4.^"Поперек чудище" f8 g4. d8 | f4 g8 a g4 c16 bes a8 |}
	\relative c''{g4.^"Наутек" f8 g4. d8 | f8 r f r c4 c'16 bes a8 | g4.^"раздобрело зло" f8 g4. d8 | f4 g8 a g4 c | d,8 e f ges g4. d8 |}
	\relative c'{f8^"кладбище" r f r c4 r | }
}

FluteIII = {
	\repeat volta 2 {
		\relative c''{d8.^"проигрыш B" c16 bes8 a bes8. e16 f8 c | f16 g a8 c8 g16 f c4 g'16 f e8 | d8. f16 d8 f g16 f g4 d16 e | f8 f16 g a8 bes a4 <g c>4 |}
		R1*8^"Соло баса"
	}
	\repeat volta 2{\relative c''{d1^"обросло чело" a a <g c>}}
	\relative c''{f8^"горькой солью" d f d g f e4 | d8 bes d bes c e g4~| g2 r |}
}

FluteIV = {
	\relative c''{bes8^"дом покинул" a g f d4 bes' | a4 bes8 c c2 |}
	\relative c''{bes8^"с ног на голову" a g f d4 bes' |a8 bes c4 e2~ |e2 r | R1^"пропала" | }
}

FluteV = {
	\repeat volta 2{ \relative c''{a16^"быстрый проигрыш (морзянка)" a a a a8 a4 a8 a a | a16 a a a a8 g4 a8 a a |}}
}

FluteVI = {
	\repeat volta 2{
		\relative c''{d8.^"проигрыш B" c16 bes8 a bes8. d16 f8 c | f16 g a8 c8 g16 f c4 g'16 f e8 |}
		\relative c''{d8. f16 d8 f g16 f g4 d16 e | f8 f16 g a8 bes a4 <g c> |}
	}
}

FluteVII = {
	r1*8^"пауза до 'поменял на просинь'"
}
