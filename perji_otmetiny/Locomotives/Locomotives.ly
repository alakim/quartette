#(set-global-staff-size 18)
\header{
	title="Паровозики"
	composer="Перьи Отметины"
}
\version "2.12.2"

HarmonyI = \chordmode{d1:m | r | a:m |r |}
HarmonyII = \chordmode{f | r |c | r}

Harmony = \chordmode{
	\HarmonyI
	\HarmonyI
	\HarmonyII
	\HarmonyI
}

VerseVoiceI = \relative c'{r4 d8 d d d  d f | a2 r8 f8 e d | e4. c8 c2 | r1 |}
VerseVoiceII = \relative c'{r4 f8 f f f f a | c2 r8 a8 g f | g4. e8 e2 | r1 |}

VerseVoice = {
	\VerseVoiceI
	\VerseVoiceI 
	\VerseVoiceII
	\VerseVoiceI
}

FluteSolo = \relative c''{
	%1.51
	a8 g f e f2 | d'8 c bes a bes4. f'8 | e4. a,8~a2 | r1 |
	a8 g f e f2 | d'8 c bes a bes2 | a8 g a c e2 | r1 |
	
}

FSViolin = \relative c'{
  f4 d8 c d4 f8 e | f8 e c d2 f8  | a2 c8 a bes c | r1 |
  a1 | d1 | c1 |
}
FSClarinet = {
	\relative c'{d4. c a4~| a2  d2 | a2 r2 | r1 |}
	\relative c'{f1 | f1 | e1 |}
}
FSCello = \relative c'{
  a2 g8 f e d~|d4 e8 f~ f4 bes, | c2 r2| a8 g a c e d e c |
  d2 r2 | a1 | a1 |
}


EmptyStaff = {s1*16}

<<
	\new ChordNames{\Harmony}
        \new Staff{
                \set Staff.instrumentName=\markup{Voice}
                \clef treble \time 4/4 \key d \minor
                \VerseVoice
        }
        \new Staff{
                \set Staff.instrumentName=\markup{Violin}
                \clef treble \time 4/4 \key d \minor
                \EmptyStaff
        }
        \new Staff{
                \set Staff.instrumentName=\markup{Clarinet}
                \clef treble \time 4/4 \key d \minor
                \EmptyStaff
        }
        \new Staff{
                \set Staff.instrumentName=\markup{Cello}
                \clef bass \time 4/4 \key d \minor
                \EmptyStaff
        }
>>

\markup \bold {Flute Solo}
<<
	\new ChordNames{\HarmonyI \HarmonyI }
	\new Staff{
		\set Staff.instrumentName=\markup{Flute}
		\clef treble \time 4/4 \key d \minor
		\FluteSolo
	}
        \new Staff{
          \set Staff.instrumentName=\markup{Violin}
                \clef treble \time 4/4 \key d \minor
                \FSViolin
        }
        \new Staff{
                \set Staff.instrumentName=\markup{Clarinet}
                \clef treble \time 4/4 \key d \minor
                \FSClarinet
        }
        \new Staff{
                \set Staff.instrumentName=\markup{Cello}
                \clef bass \time 4/4 \key d \minor
                \FSCello
        }
>>

\markup{
	\column{
		\line{Паровозики летят – колёса топают,}
		\line{Домики на них глядят – глазами хлопают}
		\line{По ступенькам день прошёл, зажёг фонарики,}
		\line{В тучах звёздочку нашёл для нашей маменьки.}
		\line{" "}
		\line{Заметелит Рождество, сосульки свесятся.}
		\line{В переулках никого – окошки светятся.}
		\line{Паровозик развезёт гостей по полочкам…}
		\line{Тихо звёздочка плывёт над нашей ёлочкой.}

	}
}
