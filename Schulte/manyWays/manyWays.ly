\version "2.18.2"

\header{
  title="Много путей"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{\transpose bes c{
     g1:maj13 e:m9
}}

Verse = {
  \tag #'Harmony { \HVerse }
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

Solo = {
  \tag #'Harmony {
    \HVerse
    \HVerse
  }
  \tag #'Clarinet {
    \mark "Solo"
    \relative c'' { r2 gis8 b cis4 | dis8 e4. r2 | }
    \relative c'' { 
      r2 e8 cis dis b8~ | b8 a4. r2  | s1 \bar "||"
    }
  }
}




Music = {
  \Verse \break
  \Chorus \break
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
    \key fis \minor
    \keepWithTag #'Clarinet \Music
  }
>>
