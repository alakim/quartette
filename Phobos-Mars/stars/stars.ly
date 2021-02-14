\version "2.18.2"

\header{
  title="Звезды с небес"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

hrmChorus = \chordmode{
  d1:m | % затакт
  f1 g bes2 a:m d1:m
}

MainTheme = {
  \tag #'Harmony {\hrmChorus}
  \tag #'Trumpet {
    \mark "Main theme"
    \relative c'{r2 e4 fis | g4. d b'4 | a2. e8 fis | g8 e4 g8 fis4 d | e1 |}
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\chordmode{
      d2:m a:m   d1:m  d2:m a:m   d1:m 
      d2:m c    d1:m    bes2 a:m   d1:m
  }}
  \tag #'Trumpet {
    \mark "Verse"
      s1 | s1 | s1 | s1 | 
      s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {\hrmChorus}
  \tag #'Trumpet {
    \mark "Chorus"
      r1^"затакт" \longBar 
      \relative c''{ r4. <b fis'>16 <b fis'> <b fis'>2 | <a e'>2 r2 | <c g>4. <b fis> r4 | <e, g>1 |}
    \bar "||"
  }
}


Final = {
  \tag #'Harmony {\chordmode{
      d1:m 
      f1 g
      f g
      f g
      bes2 a:m
      d1:m
  }}
  \tag #'Trumpet {
    \mark "Final"
      r1^"затакт" \longBar 
      \relative c''{ r4. <b fis'>16 <b fis'> <b fis'>2 | <a e'>2 r2 }
      r1 r1 
      \relative c''{ r4. <b fis'>16 <b fis'> <b fis'>2 | <a e'>4 <g d'>8 <e b'>4. r4 }
      \relative c'{<e g>2 <d fis> | <e g>1 |}
    \bar "||"
  }
}

Music = {
  \MainTheme \break
  \Verse \break
  \Chorus \break
  \Final
}

<<
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
  
    \key e \minor
    \keepWithTag #'Trumpet \Music
    
  }
>>



