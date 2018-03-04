
\header {
	title = "Тихий свет"
	composer = "Перьи Отметины"
}

\version "2.10.33"

ChordsMain = \chordmode{
  a1 | g:13 | a1 | g:13 | 
}

ClarinetI = \relative c''{
  \mark \markup{\bold Intro}
  \repeat volta 2 {
    a2. cis8 a | e'1 | a,2. cis8 a | g2 e2 |
  }
}

ClarinetII = \relative c''{
  \mark \markup{\bold "Проигрыш I"}
  \repeat volta 2 {
     a2. g8 fis | g2. fis8 e | fis2. e8 fis | g8 fis16 g8. a4. r4 |
  }
}

ClarinetIII = \relative c''{
  r1 | r1^"лу-" |r2.^"чей" r16 a b cis |d8 cis16 d8 e2^"засве-" r8. |
  r2.^"тить" r16 a, b cis | d8 cis16 r8 e2 r8.|
  r1^"вместе" | r1^"с ней" |
}

CRiffI = \relative c''{a8 fis16 g8 fis8. a8 fis16 g8 fis8. |}
ClarinetIV = {
  \CRiffI
  \relative c'{d8 cis16 d8 e8. e8 d16 e8 fis8. |}
  \CRiffI
  \relative c'{fis8. g8. d2 r8 |}
   \CRiffI
   \relative c'{d8 cis16 d8 e8.~e2 |}
   \CRiffI
   \relative c'{d8 cis16 d8 e2 r8. |}
}
ClarinetV = {
  r1^"исчезают..."| r1 | r1 | r1 | r1 |
   r1^"тополя - ШЕЙКЕР 8 тактов" | r1 | r1 | r1 | r1 | r1 | r1 | r1 |
   \time 2/4 r2 
   \time 4/4
   \repeat volta 2 { r1^Окарина | r1 | r1 | r1 |}
    r1 | r1 | r1 | r1 |
    \repeat volta 2 { r1^"тополя" | r1 |}
}
ClarinetRiffs = \relative c''{
  \mark \markup {\bold "РИФФЫ"}
  d8 cis16 d8 e8 fis2 r16 |
  d8 cis16 d8 fis8 b,2 r16 |
}

<<
	\new ChordNames{
		\ChordsMain
	}
		
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B }
                \transpose bes c'{
                  \clef treble \time 4/4 \key a \major
                  %\mark \markup { \box \bold Intro }
                  \ClarinetI
                  \break
                  \ClarinetII
                  \ClarinetIII
                  \ClarinetIV
                  \ClarinetV
                  \break
                  \ClarinetRiffs
                  \transpose c' c {\ClarinetRiffs}
              }
	}
>>


