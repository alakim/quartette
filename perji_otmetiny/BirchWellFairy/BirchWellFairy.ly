
\header {
	title = "Фея березовых колодцев"
	composer = "Перьи Отметины"
}

\version "2.10.33"

ClarinetMainRiff = \relative c'{
  %\mark \markup {\bold "Основной рифф"}
  r4 cis8 d cis a e4 | a8 d2. r8 |
  r4 cis8 d cis a e4 | gis8 b2. r8 |
}

ClarinetRiffII = \relative c'{
  \time 6/4 fis8 gis4 fis8 cis'4 fis,8 gis4. fis4 |
  \time 4/4
}

ClarinetRiffIII = {
   r1^"запоет"|
  \relative c'{a8 a r2. | r8 d4 d r4. |}
  \relative c'{a8 a r2. | r8 d4 e r4. |}
  \relative c'{a8 a r2. | r8 d4 d r4. |}
  \relative c'{a8 a r2. | r8 e'2 r4. |}
}

ClarinetIV = \relative c{
  \mark \markup{"до поры..."}
  r1_violin |
  r1_flute |
  e8 fis a e'2 r8 |
  r1_violin
}

ClarinetRiffV = {
  \relative c'{e8. a e4 a8 e4 }
  \relative c'{d8. a' d,4 a'8 d,4 }
  \relative c'{e8. a e4 a8 e4 }
  \relative c''{gis8 r16 fis8 r16 gis4. r4}
}

Reggae = {
  \mark \markup {Reggae}
  r1^"она где-то рядом" | r1_"ad lib" | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
}

        \markup {
            "Gdur, гармония везде 1 4 1 5"
         }
<<	

	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B}
	 	\clef treble \time 4/4 \key fis \minor
                %\mark \markup { \box \bold Intro }
                \repeat volta 2 {
                  \ClarinetMainRiff \ClarinetMainRiff
                }
                r1^"горит"
                \ClarinetRiffII
                \break
                \mark \markup{\circle \bold 1}
                \ClarinetRiffIII
                r1 | r1 | r1 | r1 | 
                \repeat volta 2 {\ClarinetIV}
                \break
                \repeat volta 2{\ClarinetRiffV}
                \break
                \repeat volta 2{\Reggae}
                \break
                \mark \markup{"и шепчут"}
                \ClarinetMainRiff \ClarinetMainRiff
                r1^"горит"
                \ClarinetRiffII
	}
>>

\markup {\box \bold "повторить все с цифры 1"}


