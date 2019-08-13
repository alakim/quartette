\version "2.18.2"

\header{
  title="Как Биче и Аливьери"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
      e1:m | b:7 | a:m | e:7 |
      f1 | b:7 | f1 | b:7 |
  }
}

HRefrain= \chordmode{
  \transpose bes c {
      a1:m | b:7 | e:m | c |
      a1:m | b:7 | e:m | c |
  }
}


Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    
    \bar "||"
  }
}


Music = {
  \Verse \break
  \Refrain \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key d \major
    \keepWithTag #'Horn \Music
  }
>>

