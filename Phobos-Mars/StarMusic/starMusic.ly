\version "2.18.2"

\header{
  title="Музыка звезд"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Chorus = {
  \tag #'Harmony {\chordmode{
    g1 d/fis e:m b:7/dis
  }}
  \tag #'Guitar {
    \mark "Chorus"
    <<{r4 b'4 a' b'}\\{g1} >> |
    <<{r4 b'8 g' a'4 b' }\\{fis1}>> |
    <<{r4 b'8 g' a'4 b' }\\{e1}>> |
    <<{r4 b'4 a'8 g'8 b'4 }\\{dis4 d des c}>> |
    
  }
  \tag #'Trumpet {
    \relative c''{ d1 | d1 | e1 | dis1 \bar "||" }
  }
}

Verse = {
  \tag #'Harmony {\chordmode{
    d1:m/f d1:m/f d1:m d1:m
    d1:m/f d1:m/f d1:m d1:m
    bes1:m bes1:m des1:dim des1:dim
  }}
  \tag #'Guitar {
    \mark "Verse"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
  }
  \tag #'Trumpet {
    \relative c''{  s1 | s1 | s1 | s1 |  }
    \relative c''{  s1 | s1 | s1 | s1 |  }
    \relative c''{  s1 | s1 | s1 | s1 |  }
  }
}



Music = {
  \Chorus \break
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName=\markup{"Guitar"}
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Guitar \Music
  }
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


