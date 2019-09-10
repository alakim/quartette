\version "2.18.2"

\header{
  title="Имя твое"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
    e1:m e:m f e:m
  }
}

HRefrain = \chordmode{
  \transpose bes c { 
    g1 fis f e 
    g1 fis f e 
    g1 fis f e 
    a1:m a:m b:m b:m
  }
}

Intro = {
  \tag #'Harmony {
    \HVerse \HVerse
    \HVerse \HVerse
  }
  \tag #'Horn {
    \mark "Intro"
    \relative c''{cis2. d8 cis | b8 a4 gis8 a gis4 fis8 |
        gis2~gis8 fis8 gis a | a2 gis } \longBar
    \relative c''{cis2. d8 cis | b8 a4 gis8 a gis4 fis8 |
        gis2~gis8 fis8 gis a | a2 gis } \longBar
    \relative c'{fis8 gis4 a8 gis a4 b8 | b4. cis8~cis2 |
        fis,8 gis4 a8 gis fis4 e8 | fis4. f8~f2 |
    }\longBar
    \relative c''{cis2. d8 cis | b8 a4 gis8 a gis4 fis8 |
        gis2~gis8 fis8 gis a | a2 gis } 
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    \relative c'{ e1 | dis2 ais  | d1 | cis1  \longBar }
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    
    \bar "||"
  }
}

Music = {
  \Intro \break
  \Refrain \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key fis \minor
    \keepWithTag #'Horn \Music
  }
>>

