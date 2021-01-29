\version "2.18.2"

\header{
  title="Скворцы"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
  g2:m f | bes2 d:7 |
}

HII = \chordmode{
  g1:m | f | bes1 | d:7 |
}

MainTheme = {
  \tag #'Harmony {\HI}
  \tag #'Trumpet {
    \mark "Главная тема"
    \relative c''{a4. g a8 b | c8 b4 c8 d8 c4 b8 \bar ":|."}
  }
}

Verse = {
  \tag #'Harmony {
      \HI \HI 
      \chordmode{bes2 f | g2:m f }
      \HI 
  }
  \tag #'Trumpet {
    \mark "Куплет"
    r1 | r1 | r1 | r1 | 
    \relative c''{r1 | a4. b8~b2 | a4 r2. | e4. gis8~gis2 | }
    \bar "||"
  }
}

Bridge = {
  \tag #'Harmony {
      \chordmode{ g4:m f bes d:7 | bes2 f | }
  }
  \tag #'Trumpet {
    \mark "Бридж"
    \relative c''{a2.^"как усталый скворец" g4 | c,4 r2. | }
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {
      \HII \HII 
  }
  \tag #'Trumpet {
    \mark "Соло"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
    \bar "||"
  }
}


Music = {
    \MainTheme \break
    \Verse \break
    \Bridge \break
    \Solo \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c{ \Music}
  }

  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key a \minor
    \keepWithTag #'Trumpet \Music 
  }
>>

