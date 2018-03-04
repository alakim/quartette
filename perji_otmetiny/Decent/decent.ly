
\header {
	title = "Неплохое"
	composer = "М.Лазарев (гр.Перьи Отметины)"
}

\version "2.10.33"

srcBreak = {} % {\break}

HarmI = \chordmode {R1*5 }
RecorderI = \relative c' {
  d2^"Неплохое" d' | d, f4 g | f16 g f e d2 d'4 | f,2 g4 r^"Различи" | r2.
}

HarmII = \chordmode {
  R1*4
  R1*6
  d2:m c | bes g |
  d2:m c | bes g |
  d1:m
}
RecorderII = {
  %{\partial 4%} {\relative c''{d16^"Solo" c a g} |}
  \relative c''{\appoggiatura g16 a2 g\prall | f8. e16 f8 g a8. g16 f8 c | d8. e16 d8. c16 d8. e16 f8 g | f4. c'8 c g4 f8 |} \srcBreak
  \relative c''{g4. a8 b8. a16 g4 | f2. f8 g | a4.. g16 f2| c'4. bes16 a g8 f4. | g2 f'16 e d c a8 g | bes2 a4. g16 a | }\srcBreak
  \relative c''{d4~d16 f e d c4~c16 e d c | bes4~bes16 f' e d g, a bes c d8. c16 | d4~d16 f e d c4~c16 e d c | bes4~bes16 f' e d g, a bes c d8. c16 | f,1 \bar"|."}
  
}



<<
        \new ChordNames{
          \HarmI \HarmII
        }
	\new Staff{
		\set Staff.instrumentName = \markup {Recorder C}
		\clef treble \time 4/4 \key d \minor
                \RecorderI
		\RecorderII
	}
	
>>


