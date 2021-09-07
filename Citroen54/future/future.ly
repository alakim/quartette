\version "2.18.2"

\header{
  title="Future"
  composer="Citroёn 54"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Intro = {
  \tag #'Harmony {
      \chordmode {bes1:m bes1:m bes1:m bes1:m }
  }
  \tag #'Trumpet {
    \mark "Intro"
    s1 | s1 | s1 | s1 |  
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {
      \chordmode {bes1:m bes:m   es2:m f:m bes1:m}
  }
  \tag #'Trumpet {
    \mark "Куплет"
    s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {
      \chordmode {es2:m f:m | bes1:m | es2:m f:m | bes1:m |}
      \chordmode {es2:m f:m | fis1:maj | es2:m f:m | bes1:m |}
  }
  \tag #'Trumpet {
    \mark "Проигрыш"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
      \chordmode {es2:m as | bes:m des:maj | es:m as | bes1:m |}
      \chordmode {es2:m f:m | fis1:maj | es2:m f:m | bes1:m |}
  }
  \tag #'Trumpet {
    \mark "Припев"
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | 
    \bar "||"
    
  }
}


Music = {
    \Intro \break
    \Solo \break
    \Verse \break
    \Chorus \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c{ \Music}
  }

  \new Staff{\transpose bes c'{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key bes \minor
    \keepWithTag #'Trumpet \Music 
  }}
>>

