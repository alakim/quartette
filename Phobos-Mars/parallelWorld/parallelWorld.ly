\version "2.18.2"

\header{
  title="Параллельный мир"
  composer="Д. Студеный"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

vA = \chordmode{fis1:m fis:m d d cis:7 cis:7 fis:m fis:m }
vB = \chordmode {fis1:m fis:m d d e e fis:m fis:m}
vC = \chordmode {fis1:m fis:m gis:maj gis:maj gis gis cis:7 cis:7}
Verse = {
  \tag #'Harmony {
    \vA \vB \vC \vB
  }
  \tag #'Trumpet {
    \mark "Verse, Solo"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \bar "||"
  }
}

cA = \chordmode {fis1:m fis:m e e b b cis:7 cis:7}
cB = \chordmode {b1:m b ais ais cis cis fis:m fis:m}

Chorus = {
  \tag #'Harmony {
    \cA \cB \cA
  }
  \tag #'Trumpet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \break
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | \bar "||"
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
      \key fis \minor
      \keepWithTag #'Trumpet \Music
    }
  }
>>





