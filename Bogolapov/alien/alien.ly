\version "2.18.2"

\header{
  title="Инопланетянин"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
      a1:m | e:7 | e:7 | a:m |
      a1:m | e:7 | e:7 | a:m |
      g1 | c | e:7 | a:m |
      d:m | a:m | e:7 | a:m |
  }
}

HSolo = \chordmode{
  \transpose bes c { 
      g1 | c | e:7 | a:m |
      d:m | a:m | e:7 | a:m |
  }
}



Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\HSolo}
  \tag #'Horn {
    \mark "Solo"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    \bar "||"
  }
}



Music = {
  \Verse \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  Форма: S V s V s V S
}