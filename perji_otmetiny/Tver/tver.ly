\version "2.14.2"

\header {
  title="В Тверь!"
  composer = "гр. Перьи Отметины"
}

HI = \chordmode{
	c2 g | a2:m f |
}
OboeI = {
	\relative c''{e4 e8 c d16 e d c d8 b | c4 g'8 e f e16 d c16 b c d |}
}

OboeIa = {
  \relative c''{cis4 cis8 a b16 cis b a b8 gis  a4 gis8 fis e fis d4 }
}
OboeIIaDur = {
	\repeat volta 2{
		\relative c'{e8 cis a'4 gis16 a b8 b4 | }
		\relative c'{e8 cis a'4  d16 cis b8 a4}  
		\relative c'{e8 cis a'4 gis16 a b8 b4 | }
		\relative c'{e8 cis a'4  gis16 a e fis d4 |}
	}
}

<<
  \new ChordNames{
    \HI
  }
  \new Staff{
    \set Staff.instrumentName = "Oboe"
    \clef treble
    \time 4/4
    \key c \major
	\OboeI
	\bar "|."
  }
>>

<<
  \new ChordNames{
    \transpose c a{\HI \HI \HI}
  }
  \new Staff{
    \set Staff.instrumentName = "Oboe"
    \clef treble
    \time 4/4
    \key a \major
	%\transpose c a,{\OboeI}
        \OboeIa
	\bar "|."
	\break
	\OboeIIaDur
  }
>>



