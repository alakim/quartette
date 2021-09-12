\version "2.18.2"

\header{
  title="Карамель-мечта"
  composer="Citroёn 54"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Solo = {
  \tag #'Harmony {
    \chordmode{ a1:m a:m f f e e a:m a:m }
    \chordmode{ a1:m a:m f f e e a:m a:m }
  }
  \tag #'Trumpet {\transpose c bes{
    \mark "Соло"
    \relative c{d4. b8~b2 | r4 b8 cis d g4 fis8 | d1 | r4 d8 e d cis4 b8 | cis1 |}
    \relative c{r4 cis8 d e d4 cis8 | b2 r8 a4 g8 | fis1 | \break}
    
    \relative c{d4. b8~b2 | r4 b8 cis d a'4 gis8 | g1 |r4 g8 a g fis4 e8 | fis1 |}
    \relative c{r4 fis8 g a g4 fis8 | b,2 r8 a4 g8 | fis1  |}
    
    
    
    \bar "||"
  }}
}

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
    \key a \minor
    \keepWithTag #'Trumpet \Music 
  }}
>>

