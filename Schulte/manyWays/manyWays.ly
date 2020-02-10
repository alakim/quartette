\version "2.18.2"

\header{
  title="Много путей"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Verse = {
  \tag #'Harmony {\chordmode{\transpose bes c{
       g1:maj13 e:m9
  }}}
  \tag #'Clarinet {
    \mark "Verse"
    \bar ".|:" s1 | s1 \bar ":|."
  }
}

Chorus = {
  \tag #'Harmony {\chordmode{\transpose bes c{
     a1:m7 d:7 b:m7 e:7
  }}}
  \tag #'Clarinet {
    \mark "Chorus"
    \bar ".|:" s1 | s1 | s1 | s1 \bar ":|."
  }
}




Music = {
  \Verse \break
  \Chorus \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4 
    \clef treble
    \key fis \minor
    \keepWithTag #'Clarinet \Music
  }
>>
