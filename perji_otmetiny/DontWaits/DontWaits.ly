\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

 \include "../../lib/free.ly"

\header{
  title = "Не ждут"
  composer = "Перьи Отметины"
  subsubtitle = \date
}


RiffI = \relative c'{
  \partial 4. cis8^"Main Riff 'Country'" cis gis | \repeat percent 4 { \acciaccatura a8 ais4 gis8 fis4 cis'8 cis gis} |
}

Verse = \relative c'{
  \cadenzaOn 
   b2^"На куплет" cis1 ais 1 
  \cadenzaOff
  \bar "||" 
  \times 2/3 {cis'4^"...подколесные" eis, gis} cis,2-> |
}

\markup{
  \column{
    \line {A/Fis dur: \bold {1 6 4 5}}
    \line {проигрыш "Нигде не ждут": \bold {4/5 1/6 4/5 1} - играть соло из риффа 'Country'}
  }
}

<<
  \new Staff{
    \clef treble \time 4/4 \key fis \major
    \set Staff.instrumentName = "Clarinet Es"
    \RiffI
    \break
    \Verse
  }
>>

\score {
  {
    \repeat unfold 8 { s1 \break }
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



