
\header {
	title = "Рязанщина"
	composer = "Перьи Отметины"
}

\version "2.10.33"

FluteA = \relative c''{
	bes'8 a g f d4 bes' | a4 bes8 c c2 | bes8 a g f d4 bes' | a8 g f4 c2 \bar "||"
}
ClarinetA = \relative c'''{
	g4. f8 g4. d8 | f4 g8 a g2 | g8 f d c d4 c | f4 a,8 bes g2 |
}
ChordsAa = \chordmode{g2:m bes2 | f2 c |}
ChordsA = {\ChordsAa \ChordsAa }
HarmonyAa = \lyricmode{IV2 VI | III VII | }
HarmonyA = {\HarmonyAa \HarmonyAa }

FluteB = \relative c'''{
	g4. f8 g4. d8 | f4 g8 a g2 | g8 f d c d4 c | a'8 g f4 c2 |
	g'4. d8 f4. d8 | c4 f8 a g2 | bes8 a g f d4 bes' | a8 g f4 c2 \bar "||"
}
ClarinetB = \relative c''{
	d4. c8 bes2 | a4 bes c2 | g'8 f d c bes4 c | f2 g, | d'4. c8 bes2 | a4 d8 bes c2 | g'8 f d c bes4 c | f4 a,8 bes g2 |
}
ChordsB = \chordmode{\ChordsAa \ChordsAa \ChordsAa \ChordsAa }
HarmonyB = \lyricmode{\HarmonyAa \HarmonyAa \HarmonyAa \HarmonyAa }



