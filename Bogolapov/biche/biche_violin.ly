\version "2.18.2"

\header{
  title="Как Биче и Алигьери"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\include "content.ly"

<<
  \new ChordNames{
    \transpose c bes{
      \keepWithTag #'Harmony \Music
    }
  }
  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key c \major
    \transpose c bes,{
      \keepWithTag #'Horn \Music
    }
  }
>>

\markup {
  Форма: Solo V V V R Solo2 V R Solo
}
