 \version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

 \include "../../lib/free.ly"
 
 \header{
   title="Волга"
   composer="Перьи Отметины"
  subsubtitle = \date
 }
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}
 
 \layout {
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
  }
}
 
 HarmI = \chordmode{gis1:m | e | cis:m | gis:m |}
 ClarinetI = \relative c''{
   \acciaccatura d8 dis4^\markup{\box"под соло флейты"} cis8 dis gis,2 |
   \acciaccatura dis'8 e4 dis8 e b2 | cis4 gis2. | fis8 (gis4.) r2 \bar "||"
 }
 
 HarmII = \chordmode{r1 | 
   b1 | fis | cis:m | gis2:m fis |
   b1 | fis | cis:m | e2 fis |  
 }
 Trl = \relative c''{dis16 cis dis8 cis}
 TrlII = \relative c''{fis16 e fis8 e}
 ClarinetII = \relative c''{
   r2^\markup{\box "мажорная вставка"} r8 \Trl| b2~b8 \Trl | ais2 b8 \Trl | e2 b8 \Trl| b2~b8 \Trl|
   dis2 r8 \TrlII |<cis fis>2 r8 \TrlII |<cis gis'>2 r8 gis'16 fis gis8 gis | 
   \textLengthOn
   e2 \parenthesize dis^"(к минору)" 
   \textLengthOff

   \bar "||"
 }
 
 HarmVerse = \chordmode{
   gis1:m | gis:m | cis | cis |
   b2 fis | gis1:m | e1 | cis:m | e | cis:m |
 }
 
 ClarinetVerse = \relative c'{
   gis4.^\markup{\box"Куплет"}_"осн.рифф"\startGroup b4 gis8 cis4 \stopGroup |
    s1 |
    \harmMel <cis gis'>1 {dis2 s2}
    |s1 |
    s1 |\harmMel <gis dis>1 {fis1^"грёзах"} |
    b,8 b4 cis b8 gis4 | s1 |
    b8 b4 cis b8 dis4 | \harmMel <gis dis>1 fis1 \bar "||"
 }
 
 HarmIntro = \chordmode{s1}
 ClarinetIntro = {gis2^\markup{\box"Intro"}_"frullato" s2 \bar "||"}
 
 
 <<
   \new ChordNames{
     \set chordChanges = ##t
     \HarmIntro
     \HarmVerse
     \HarmII |
     \HarmI 
   }
   \new Staff{
     \clef treble \time 4/4 \key gis \minor
     \set Staff.instrumentName = "Clarinet B"
     \ClarinetIntro
     \ClarinetVerse \break
     \ClarinetII \break
     \ClarinetI \break
   }
 >>
 
 
\score {
  {
    \repeat unfold 5 { s1 \break }
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