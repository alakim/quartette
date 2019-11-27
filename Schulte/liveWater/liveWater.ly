\version "2.18.2"

\header{
  title="Живая вода"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  s1 s1 s1 s1
}

Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Guitar {
    r1 | r1 | r1 | r1 |
    \bar "||"
  }
  \tag #'Horn {
    \mark "Verse"
    r1 | r1 | r1 | r1 |
    \bar "||"
  }
}

Riff = {
  \tag #'Harmony {s1 s1 s1 s1 }
  \tag #'Guitar {
    \mark Riff
    \relative c'{c16 es f8 as4  des,8 es as4 |} 
    \relative c'{as8 c as'4 g16 as g f es4 |}
    s1 s1 s1
  }
  \tag #'Horn {
    r1 | r1 | r1 | r1 |
  }
}


Music = {
  \Riff \break
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Guitar"
    \time 4/4
    \clef treble
    \key as \major
    \keepWithTag #'Guitar \Music
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4
    \clef treble
    \key as \major
    \keepWithTag #'Horn \Music
  }
>>
