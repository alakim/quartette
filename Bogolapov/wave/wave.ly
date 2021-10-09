\version "2.18.2"

\header{
  title="Одна волна"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Intro = {
  \tag #'Harmony {
       s1
  }
  \tag #'Trumpet {
    \mark "Intro"
    fis'1 \bar "||"
  }
}


Verse = {
  \tag #'Harmony {
       \chordmode{c1 b c b  b e a}
       \chordmode{g1 fis g fis g fis c }
       \chordmode{c4. d e1 c4. d e1}
  }
  \tag #'Trumpet {
    \mark "Куплет"
    \relative c''{c1^"... все пустота" | b2.  a8 b | c1 | b2. a4 |}
    \relative c'{fis1 | b2. gis4| cis1 |}
    \relative c''{b1^"... и кажется" | ais2. e8 fis | g1 | fis1 | d'1 | cis2. fis,4 | e2. r4 |}
    \relative c'{\time 3/4 e4.^"с тобою одна" fis | \time 4/4 gis1 | \time 3/4 c4. a | \time 4/4 b1 |}
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {
    \chordmode{e1 e d d c c b b}
  }
  \tag #'Trumpet {
    \mark "Соло"
    b'1 | s1 | fis'1 | s1 | g'1 | e'1 | b'1 | s1 |
  }
}


Music = {
    \Intro
    \Verse \break
    \Solo \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony  \Music
  }

  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key e \major
    \keepWithTag #'Trumpet \Music 
  }
>>

