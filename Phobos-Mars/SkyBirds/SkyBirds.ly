\version "2.18.2"

\header{
  title="Птицы небесные"
  composer="Д. Студеный"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


rI = \relative c'{ f4. d8~d2 | a'8 b8 r2. | }

Verse = {
  \tag #'Harmony {\chordmode{
    e1:m g d d
    a1:m c g g
  }}
  \tag #'Trumpet {
    \mark "Verse, Solo"
    \relative c'{r4 e4 g8 a4 b8~ | b4 a g e | d4. e8 d2 | r1 | }
    \relative c'{r4 e4 g8 a4 b8~ | b4 a g e | d1 | r1 | }
  }
}


Chorus = {
  \tag #'Harmony {
    f1 c f c
    g1 g a a
    d1 d
  }
  \tag #'Trumpet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 \bar "||"
    s1^"перед переходом" | s1 |
  }
}
  


Music = {
  \Verse \break
  \Chorus \break
}

<<
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes c' {
      \key g \major
      \keepWithTag #'Trumpet \Music
    }
  }
>>

\markup{"* на процессоре лучше выставить C dur"}



