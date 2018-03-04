\version "2.16.2"

\header {
  title="Не спи"
  composer = "гр. Перьи Отметины"
  subtitle = "Соло гобоя и флейты"
}

FluteI = {
  \relative c''{fis4. e8 cis b | cis2 r8 cis | e4. cis4 e8 | fis4. a8 gis16 a gis8 |}
  \relative c'''{a4. gis8 fis d | cis4. e8 cis16 b cis8 | e4. gis8 e16 cis e8 | fis4. a8 gis16 a gis8 |}
  \relative c''{fis4. e8 cis b | cis2 r8 cis | e4. cis4 e8 | fis4. a8 gis16 a gis8 |}
  \relative c'''{a4. gis8 fis d | cis4. e8 cis16 b cis8 | e4. gis8 e16 cis e8 | fis4. a8 gis16 a gis8 |}
}

OboeI = {
	\relative c'{fis4. a8 gis16 a b8 | a4. fis8 a8 b | cis4. b8 e d | cis2. |} \break
	\relative c''{a8 fis'4 e b8 | cis16 b a4 gis8 a b | cis4. b4 cis8 | fis2. |} \break
	\relative c'{fis4. a8 gis16 a b8 | a4. fis8 a b | cis4. b8 e d | cis2~cis8 gis |} \break
	\relative c''{a8 fis'4 e b8 | cis16 b a4 gis8 a b | cis4. b4 cis8 |}
	\relative c''{fis2.  \bar ":|"}
}


<<
  \new Staff{
    \clef treble
	\set Staff.instrumentName = "Oboe"
    \key fis \minor
    \time 3/4
    \OboeI
  }
  \new Staff{
    \clef treble
	\set Staff.instrumentName = "Flute"
    \key fis \minor
    \time 3/4
    \FluteI
  }
>>
