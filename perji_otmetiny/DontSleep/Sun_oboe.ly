\version "2.16.2"

\header {
  title="Не спи"
  composer = "гр. Перьи Отметины"
  subtitle = "Соло гобоя"
}

OboeI = {
  \relative c''{fis4. e8 cis b | cis2 r8 cis | e4. cis4 e8 | fis2 r8 gis |}
  \relative c'''{a4. gis8 fis d | cis2 r8 cis | e4. gis4 e8 | fis2 r4 |} \break
  \relative c''{fis4. e8 cis b | cis2 r8 cis | e4. cis4 e8 | fis4. r4 gis8 |}
  \relative c'''{a4. gis8 fis d | cis2 r8 cis | e4. gis4 e8 | fis2 r4 \bar ":|"}
}


<<
  \new Staff{
    \clef treble
    \key fis \minor
    \time 3/4
    \transpose c' c{
      \OboeI
    }
  }
>>
