\version "2.18.2"

\header{
  title="Очарованная странница"
  composer="Д. Студеный"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Verse = {
  \tag #'Harmony {\chordmode{
    a1:m a:m c c g g 
    f f
    f g
  }}
  \tag #'Trumpet {
    \mark "Verse"
    \repeat volta 2 {
      s1 | s1 | s1 | s1 | 
      s1 | s1 | 
    }
    \alternative{
      { s1 | s1 |}
      { s1 | s1 }
    }
    \bar "||"
  }
}


Chorus = {
  \tag #'Harmony {\chordmode{
    a1:m a:m e:m e:m b:7 b:7 e:m e:m
    c c b:7 b:7 d d e:m b:7
  }}
  \tag #'Trumpet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 \bar "||"
  }
}
  


Music = {
  \Verse \break
  \Chorus \break
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
      \key c \major
      \keepWithTag #'Trumpet \Music
    }
  }
>>



