\version "2.10.33"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header {
	title = "Пасха на холме"
	composer = "Перьи Отметины"
	subsubtitle = \date
}

LickIHarm = \chordmode{b2 e | fis1 | b2 e |}
LickI = { \key b \major
	\relative c''{r2^"...воскрес"  b4. ais16 gis \bar "|:" fis gis fis4. r4 e16 dis cis8 | b4 r4 b'4. ais16 gis \bar ":|:"}
}

ModulationHarm = \chordmode{fis2  a | b  d |}
Modulation = {\key d \major
  \relative c{<fis' fis,>4.^\markup{\left-align "Модуляция A(B) dur -> C(D) dur"} fis,16 gis a4. fis16 a | b4. b16 cis d8 a4 b8 \bar ":|"}
}



RiffIIHarm = \chordmode{ r8 d2 b:m  g a d b:m g a}
RiffII = {\key d \major
      \relative c'{
        \partial 8 {fis8 \bar "|:"}
        d'8^\markup{\left-align "Рифф после модуляции"} e4 fis8 b,2 | r8. d16 d8. b16 a8 a16 b a8 fis | <d d'>8 e'4 fis8 b,2 | r8. d16 d8. b16 e8 e16 fis e8 cis \bar ":|"
      }
}

ClarinetSolo = \relative c''{
  % \mark \markup{\left-align "Соло в конце \"волынка\"."}
  r2._"...Христос воскрес" r8 c8|
  \repeat volta 2{
      g'8.^\markup{\left-align "Соло в конце \"волынка\"."} e16 d8 c d4. c8 | d8. c16 d8 e f4 e8 c |
      g'8. e16 d8 c d4~ d16 c d e |
      e4 e16 d8. c4 d8 c|
  }
  g'8. e16 d8 c d4. c8 | d8. c16 d8 e f4 e8 c |
  g'8. e16 d8 c d8. c16 d e f8 | e8. f16 e8 d c2 \bar "|."
}

\markup{"A(B)dur, потом то же самое в C(D)dur (регги) Проигрыш: 1 1 4 5, Куплет: 1 6 4 5"}

<<
	\new ChordNames{
		\LickIHarm
		\ModulationHarm
		\RiffIIHarm
	}
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B }
		\LickI
		\break
		\Modulation
		\break
		\RiffII
		\break
		\transpose bes c'{
		  \key c \major
		  \ClarinetSolo
	  }
	}
>>

 
\score {
  {
    \repeat unfold 4 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

