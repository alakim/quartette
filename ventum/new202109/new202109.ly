\version "2.18.2"

\header{
  title="New 202109"
  composer="гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HI = \chordmode{\transpose bes c {a1 a1 fis:m fis:m d d e e }}

PA = {
  \tag #'Harmony {
    \HI 
  }
  \tag #'Trumpet {
    \mark \markup {\circle{"A"}}
    \relative c'{f4. fis8 fis2 | r4 b ais b | ais4. b8 b2 | r2 b | gis2. cis4 | cis2. gis4 | gis1 | r1 |}
    \bar "||"
  }
}



Music = {
  \PA
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \key b \major
    \keepWithTag #'Trumpet \Music

  }
>>



