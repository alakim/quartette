\version "2.18.2"

\header{
  title="Свеча"
  composer="Д. Студеный"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Verse = {
  \tag #'Harmony {\chordmode{
    e1:m e:m b:m b:m
    e1:m e:m b:m b:m
  }}
  \tag #'Trumpet {
    \mark "Verse"
    \relative c'{ r1 | r1 | r2 e4 d8 e8~ | e1 |  }
    \relative c'{ r1 | r1 | r1 | r4 e4 fis2 |  }
    \relative c''{a4. g8~g2 | a4. g4. a4 | fis1 \bar "||"}
  }
}



Music = {
  \Verse \break
  %\Chorus \break
}

<<
  \new ChordNames{\transpose bes bes {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes bes {
      \key e \minor
      \keepWithTag #'Trumpet \Music
    }
  }
>>


