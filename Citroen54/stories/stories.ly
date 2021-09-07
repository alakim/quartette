\version "2.18.2"

\header{
  title="True Stroies"
  composer="Citroёn 54"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Verse = {
  \tag #'Harmony {
      \chordmode {g1:m c g:m c g:m c g:m c}
      \chordmode {g1:m c g:m c bes1:maj d:m c:m c2:m d:m}
  }
  \tag #'Trumpet {
    \mark "Куплет"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |  
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |  
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {
      \chordmode {g1:m c g:m c g:m c g:m c}
  }
  \tag #'Trumpet {
    \mark "Проигрыш"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
      \chordmode{ bes1:maj d:m c:m c:m  }
      \chordmode{ bes1:maj d:m c:m g2:m a  }
      \chordmode{ bes1:maj d:m c:m c:m  }
      \chordmode{ es1:maj d:m c:m c:m }
  }
  \tag #'Trumpet {
    \mark "Припев"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | 
    \bar "||"
    
  }
}


Music = {
    \Solo \break
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

