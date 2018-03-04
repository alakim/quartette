\version "2.16.2"

\header{
	title = "В Вифлееме"
	composer = "traditional/Перьи Отметины"
	subtitle = "партия кларнета"
}

Hrm = \chordmode{\transpose bes c{
	b4:m fis:m b:m
	b4:m fis:m b2:m
	a4 d2 fis4:m
	b2:m
}}

ClI = {
  \key cis \minor
  \time 3/4
  \relative c' {cis4 dis8 fis e dis |}
  \time 4/4
  \relative c' {cis4. e8 dis fis e dis |}
  \relative c' {e4 b gis4. b8 |}
  \time 2/4
  \relative c'{cis1}
}

HMaj = \chordmode {\transpose bes c{
  a4 e2 | a4 e2 | a2 d4 | e4 a2 |
}}

ClMaj = {
  \key b \major
  \time 3/4
  \transpose bes c'{
    \relative c''{
      cis8 e d16 cis b8 a e | cis'8 e d16 cis b8 a e | 
      a8 b cis e fis4 | a,16 b e8 a,4 a \bar "||"
    }
  }
}

<<
	\new ChordNames{
		\Hrm
		% \Hrm
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\ClI
		
	}
>>

\markup {"Мажорная часть"}

<<
  \new ChordNames{
    \HMaj
  }
  \new Staff{
    \set Staff.instrumentName = "Flute"
    \clef treble
    \ClMaj
  }
>>