\version "2.16.2"

\header {
  title = "Селигерская (Coda)"
  composer = "Перьи Отметины"
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}



HCoda = \chordmode {
  as2. f:m g:m as
}

GuitarCoda = {\transpose c' bes{
	\repeat volta 2 {
		\relative c'{f8. f16 f8 f e d | g8. g16 g8 g f d | e8. e16 e8 e f g | f2._"sim., cresc." |}
	}
}}

AltoCoda = {
	\relative c''{g4. d' | a2. | f4. a | bes2. |} 
}

SopranoCoda = {
	\relative c''{g4. c4 g8 | f4. as | g4. bes4 g8 | c4. es8 d bes |}
}

<<
	\new ChordNames{
		\HCoda
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Guitar"
		\key es \major
		\time 6/8
		\GuitarCoda
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Recorders"
		\key es \major
		\time 6/8
		<<{
			\SopranoCoda
		}\\{
			\transpose g c {\AltoCoda}
		}>>
	}
>>

<<
	\new ChordNames{
		\HCoda
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Recorder S"
		\key es \major
		\time 6/8
		\repeat volta 2{\SopranoCoda}
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Recorder A"
		\key bes \major
		\time 6/8
		\AltoCoda
	}
>>
