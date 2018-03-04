\version "2.12.2"

\header{
  title="Сон о Белых горах"
  composer="Перьи Отметины"
  subtitle = "соло"
}

Harmony = \chordmode{
  \partial 8 {r8 |}
  e1 | cis:m | a | b |
  e1 | cis:m7 | gis:m | b |
  e1 | cis:m | a | b |
  cis:m | b | cis:m | r |
}

Solo = \relative c' {
  \partial 8 {cis16 dis |}
  e2.~e8 fis16 gis | fis4. e2 cis16 dis | e2.~e8 gis16 a | fis2 
  e8_"clarinet" \(fis gis a | b2\) 
  e,8_"flute" \(fis gis a | b2\)
  e,8_"clarinet" \(fis gis a | b2 \) 
  b4. gis8~ | gis2 r4.
  
  cis,16 dis |
  e2.~e8 fis16 gis | fis4. e2 cis16 dis | e2.~e8 gis16 a | fis2 r |
  e2~e4. cis8 | b2 dis | e2 r | fis8 fis gis2. \bar "|."
}


<<
  \new ChordNames{
    \Harmony
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 2/2 %{ Это совершенно точный размер!!! %} \key e \major
    \Solo
  }
>>
