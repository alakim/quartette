\version "2.18.2"

\header{
  title="Подражание Шекспиру"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HIntro = \chordmode{
  \transpose bes c { d1 | c  } 
}

HVerseI = \chordmode{
  \transpose bes c { d1:m | c | a | d:m } 
}

HVerseII = \chordmode{
  \transpose bes c { g1:m | bes | c | d:m }
}


Intro = {
  \tag #'Harmony {\HIntro}
  \tag #'Horn {
    \mark "Intro"
    \repeat volta 2 {
        s1 | s1  
    }
  }
}

Verse = {
  \tag #'Harmony {
      \HVerseI
      \HVerseII
  }
  \tag #'Horn {
    \mark "Verse"
    \repeat volta 2 {s1 | s1 | s1 | s1  }
    \repeat volta 2 {s1 | s1 | s1 | s1  }
  }
}


Music = {
  \Intro \break
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
    \key d \minor
    \keepWithTag #'Horn \Music
  }
>>
