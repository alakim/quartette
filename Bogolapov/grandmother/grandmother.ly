\version "2.18.2"

\header{
  title="Бабушка"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerseI = \chordmode{ \transpose bes c { e1 | e | a | b |} }
HVerseII = \chordmode{ \transpose bes c { a1 | b | e | a |}}


Verse = {
  \tag #'Harmony {
    \HVerseI
    \HVerseI
    \HVerseII
    \HVerseII
  }
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \bar "||"
  }
}


Music = {
  \Verse \break
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
