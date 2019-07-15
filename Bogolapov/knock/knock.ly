\version "2.18.2"

\header{
  title="Тук-тук"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { c1 | g | a:m | g |}
}

HRefrain= \chordmode{
  \transpose bes c { f1 | c | g | a:m |}
}


Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    s1 | s1 | s1 | s1 \bar "||"
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
