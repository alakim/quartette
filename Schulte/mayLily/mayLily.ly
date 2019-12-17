\version "2.18.2"

\header{
  title="Ландыш серебристый"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{\transpose bes c{
  g1:7 | c | g1:7 | c |
}}

HSolo = \chordmode{\transpose bes c{
  f1 | c | e | a:m |
  f1 | c | e | a:m |
  f1 | c | e | a:m |
  f1 | c | g |
}}

Verse = {
  \tag #'Harmony {
      \HVerse
      \HVerse
      \HVerse
      \HVerse
   }
  \tag #'Clarinet {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 |
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\HSolo}
  \tag #'Clarinet {
    \mark "Solo"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 |
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
    \keepWithTag #'Clarinet \Music
  }
>>
