\version "2.18.2"

\header{
  title="Карамель-мечта"
  composer="Citroёn 54"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Verse = {
  \tag #'Harmony {
    \chordmode{ a1:m a:m f f e e a:m a:m }
  }
  \tag #'Trumpet {
    \mark "Куплет, проигрыш"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |  
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
    \chordmode{ a1:m a:m c c  }
  }
  \tag #'Trumpet {
    \mark "Припев"
    s1 | s1 | s1 | s1 |
    \bar "||"
    
  }
}


Music = {
    \Verse \break
    \Chorus \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c'{ \Music}
  }

  \new Staff{\transpose bes c'{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Trumpet \Music 
  }}
>>

