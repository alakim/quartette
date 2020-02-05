\version "2.18.2"

\header{
  title="Заиграла"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  a1:m g f d:m
}

HChorus = \chordmode{
  c1 g a:m e:m 
  f g c g 
}

Verse = {
  \tag #'Harmony {
      \HVerse
   }
  \tag #'Clarinet {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony { \HChorus }
  \tag #'Clarinet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    \bar "||"
  }
}



Music = {
  \Verse \break
  \Chorus \break
}

<<
  \new ChordNames{\transpose bes c{
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Clarinet \Music
  }
>>

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Melodion"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Clarinet \Music
  }
>>
