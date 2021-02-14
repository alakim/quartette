\version "2.18.2"

\header{
  title="Музыкант"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Verse = {
  \tag #'Harmony {\chordmode{
      b1:m b:m fis:m fis:m e:m fis:m b2:m fis:m b1:m
  }}
  \tag #'Trumpet {
    %\mark "Verse"
      s1 | s1 | s1 | s1 | 
      s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}




Music = {
  \Verse 
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
  
    \key e \minor
    \keepWithTag #'Trumpet \Music
    
  }
>>



