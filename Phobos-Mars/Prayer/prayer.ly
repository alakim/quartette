\version "2.18.2"

\header{
  title="Молитва"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



MainTheme = {
  \tag #'Harmony {\chordmode{
    d1:m f bes a:7
  }}
  \tag #'Trumpet {
    \relative c'{ d2. e8 f | g8 f4 c8~c2 | f8 e4 d4. f8 e~ | e1 \bar "||" }
  }
}



Music = {
  \MainTheme \break
  % \Verse \break
}

<<
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes c' {
      \key d \minor
      \keepWithTag #'Trumpet \Music
    }
  }
>>

\markup {"* В конце модуляция на тон вверх"}

