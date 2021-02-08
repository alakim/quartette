\version "2.18.2"

\header{
  title="Кармансита"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Solo = {
  \tag #'Harmony {\chordmode{
     s8
     s1  s1  s1  s1 
  }}
  \tag #'Trumpet {
    \mark "Соло"
    \partial 8 {e'8}
    \relative c''{ b4 a16 b8. g4 e8 e | a8 g a g a d b e, | b'4 a16 b8. g4 e8 e | a8 g a g b g g4 | }
  }
}

Verse = {
  \tag #'Harmony {
     s1 s1 s1 s1
  }
  \tag #'Trumpet {
    \mark "Куплет"
    s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

Bridge = {
  \tag #'Harmony {
     s1 s1 s1 s1
  }
  \tag #'Trumpet {
    \mark "Бридж"
    s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}


Music = {
    \Solo \break
    \Verse \break
    \Bridge \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c{ \Music}
  }

  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \transpose bes c'{
      \key a \minor
      \keepWithTag #'Trumpet \Music 
    }
  }
>>

