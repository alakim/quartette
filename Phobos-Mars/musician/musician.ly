\version "2.18.2"

\header{
  title="Музыкант"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode{ b1:m b:m fis:m fis:m e:m fis:m b2:m fis:m b1:m }
  
Verse = {
  \tag #'Harmony {\Hrm}
  \tag #'Trumpet {
    \mark "Verse"
      s1 | s1 | s1 | s1 | 
      s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

  
Solo = {
  \tag #'Harmony {\Hrm}
  \tag #'Trumpet {
    \mark "Solo"
      \relative c''{ r4 d8 cis d e4. | cis8 b4 fis8~fis2 | r8 cis'8 cis b cis d4 e8~ | e4  cis8 d4 e4. | }
      \relative c''{ d4 cis8 b8~b2 | cis4 a8 fis4 cis'4. | b2 a4. b8~ | b2 r  | }
    \bar "||"
  }
}



Music = {
  \Verse \break
  \Solo
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
  
    \key b \minor
    \keepWithTag #'Trumpet \Music
    
  }
>>



