\version "2.16.2"

\header{
	title="Шкипер Яблоневых Ветвей"
	composer = "Перьи Отметины"
        subsubtitle = "соло кларнета"
}

HarmonyII = {
  \partial 8 {s8}
  \chordmode {
    c2. g f g \break
    c2. g f g \break
    a2.:m f c d:m \break
    d2.:m f d:m g 
    c2. 
  }
}

SoloII = {
  \time 6/8 \key c \major
  \partial 8 {g'8|}
  \relative c''{c8. c16 c8 c a g | d'8. d16 d8 d c b | c2 b8 c | d2 r8 g, |}
  \relative c''{c8. c16 c8 e d c | d8. d16 d8 e8 d g | a2 f8 e | d2 r4 |}
  \relative c''{a8. g16 e8 g e d | f2. | g8. e16 d8 e8 d g | a2 b8 c |}
  % \relative c''{f2. | a2. | f4. a | b8 a g b a b | c2. \bar "|."}
  \relative c''{f2. | a2. | d,8 c8. b16 a8 g e | }
  \relative c''{g8 e g a g8. b16 | c2. \bar "|."}
}

<<
	\new ChordNames{
		\HarmonyII
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\SoloII
	}
>>