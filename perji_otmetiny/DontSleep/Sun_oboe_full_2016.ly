\version "2.16.2"

\header {
  title="Не спи"
  composer = "гр. Перьи Отметины"
  subtitle = "Партия гобоя"
}

OboeI = {
	\mark Intro
	\relative c'{fis4. a8 gis16 a b8 | a4. fis8 a8 b | cis4. b8 e d | cis2. |} \break
	\relative c''{a8 fis'4 e b8 | a4. gis8 a b | cis4. b4 cis8 | fis2. |} \break
	\relative c'{fis4. a8 gis16 a b8 | a4. fis8 a b | cis4. b8 e d | cis2~cis8 gis |} \break
	\relative c''{a8 fis'4 e b8 | cis16 b a4 gis8 a b | cis4. b4 cis8 |}
	\relative c''{fis2.  \bar "||"}
}

OboeII = {
	\mark "Break 1"
	\relative c'{fis4. b8 a gis | a2 b8 a | cis4 b8 cis e cis | fis2 r4 \bar "||"}
}

OboeIII = {
	\mark "Break 2"
	\relative c'{fis4. a8 gis16 a b8 | a4. fis8 a8 b | cis4. b8 e d | cis2. |} \break
	\relative c''{a8 fis'4 e b8 | cis16 b a4 gis8 a b | cis4. b4 cis8 | fis2. \bar "||"}
}

OboeMajSolo = {
	\mark "Solo"
	\repeat volta 2{
	\relative c''{r2 a8 b | e4 e8 fis e d | e4 a, a8 b | e4 a8 fis e d |
		e4 a, d8 cis | a8 e a cis b cis | a4 fis d'8 cis |
		a8 e a cis b cis | a2 a8 b |
	}
	}
}

<<
  \new Staff{
    \clef treble
	\set Staff.instrumentName = "Oboe"
    \key fis \minor
    \time 3/4
    \OboeI \break
	\OboeII \break
	\OboeIII \break
	\OboeMajSolo
  }
>>
