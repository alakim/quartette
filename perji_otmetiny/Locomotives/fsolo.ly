\version "2.12.2"

HarmonyI = \chordmode{d1:m | r | a:m |r |}

FluteSolo = \relative c''{
	%1.51
	a8 g f e f2 | d'8 c bes a bes4. f'8 | e4. a,8~a2 | r1 |
	a8 g f e f2 | d'8 c bes a bes2 | a8 g a c e2 | r1 |
	
}

	FSViolin = {
		\relative c'{f4. a g4 | a1 |c1 | a1 |}
		\relative c'{f1 | a1 | a1 | c1 |}
	}
	FSClarinet = {
		\relative c'{d8 e f d~d4 c8 d~ | d1 | e1 | e1 | }
		\relative c' {d1 | d2~ d8 e f g | a8 c4 a4. c4 | e1 |}
	}
	FSCello = {
		\relative c'{a2 f4 f~ | f4 d2 a4~ | a1 | c1 |}
		\relative c'{a2 r8 e8 d e  | f8 e d c d c d e~ | e1 | g1 |}
	}
	




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