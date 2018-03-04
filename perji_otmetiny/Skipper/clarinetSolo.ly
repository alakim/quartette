\version "2.16.2"

\header{
	title="Шкипер Яблоневых Ветвей"
	composer = "Перьи Отметины"
        subsubtitle = "соло кларнета"
}

HrmI = \chordmode {a2.:m | f | c | g |}
Harmony = {
  s8
  \HrmI
  \HrmI
  \chordmode{a2.:m}
}

SoloI = {
  \time 6/8 \key c \major
  \partial 8{g'8 |}
  \relative c''{
    c8 b8. c16 c4 g8 |  c8 b8. c16 c8 b c | e4.~e8 d c | g4. b |
    
    c4.~ c4 e8 | f8 e d c b d | 
    e4.~e8 d c | 
    g4 g8 d'8 c8. b16 | c4. r |
  }
}

<<
	\new ChordNames{
		\Harmony
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\SoloI
	}
>>