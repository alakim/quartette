\version "2.18.2"

\header{
  title="Бабушка"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HIntroI = \chordmode{ \transpose bes c { e1 | e | a | b |} }
HIntroII = \chordmode{ \transpose bes c { a1 | b | e | a |}}

HRefrain = \chordmode {\transpose bes c {
  e1 | a2 b |
  e1 | a2 b |
  e1 | a2 b |
  a1 | a2 b |
}}

HVerse = \chordmode { \transpose bes c {
  e1 | e | a | b |
  s1 |s1 |s1 |s1 |
}}

Intro = {
  \tag #'Harmony {
    \HIntroI
    \HIntroI
    \HIntroII
    \HIntroII
  }
  \tag #'Horn {
    \mark "Intro"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \bar "||"
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {
    \HRefrain
    \HRefrain
    
    \chordmode{\transpose bes c{
       a1 | a2 b |
       %a1 | a2 b |
       a1 |
    }}
  }
  \tag #'Horn {
    \mark "Refrain"
    \relative c'{cis1 | dis2 eis | fis1 | b2 gis | }\longBar
    \relative c''{ais1 | b2 gis |}
    \relative c' {r2 b8 cis dis4 |} 
    \relative c''{ b2 gis }
    \longBar
    s1 | s1 | s1 | s1  \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | 
    \relative c''{b4. gis2 fis8~ | fis1 |}
    
   
    \bar "||"
  }
}

RefrainII = {
  \tag #'Harmony {
    \HRefrain
    
  }
  \tag #'Horn {
    \mark "Refrain v.2"
    <<{
      \relative c''{
        cis1 |dis4. eis8~eis2 |
        cis1 |dis4. eis8~eis2 |
        cis1 |dis4. eis8~eis2 |
        dis1 | s1 |
      }
      
    }\\{
      \relative c''{
        ais4. fis2 fis8 | b4. gis2  gis8 |
        ais4. fis2 fis8 | b4. gis2  gis8 \longBar 
        ais4. fis2 fis8 | b4. gis2  gis8 |
      }
      \relative c'{fis2. fis8 fis | b8 ais4 ais8 gis4 gis \longBar}
    }>>
    
   
    \bar "||"
  }
}

HVerse = \chordmode { \transpose bes c {
  e1 | e | a | b |
  a | b | a | a |
  a | b | a | b |
  e | a | a | b |
  a | b |
}}


Verse = {
  \tag #'Harmony {
    \HVerse
  }
  \tag #'Horn {
    \mark "Verse"
    \relative c'{fis4.^"простите редко" fis fis4 | ais1 | b4. fis fis4 | gis2. r8 fis8 \longBar }
    \relative c'{fis1^"для разговора" | gis4. gis gis4 | fis1~ | fis1 \longBar }
    s1^"и жизнь моя" | s1 | s1 | s1 \longBar
    s1^"о вашей юности" | s1 | s1 | s1 \longBar
    s1^"и навсегда останутся" | s1 |
    \bar "||"
  }
}


Music = {
  \Intro \break
  \Refrain \break
  \RefrainII \break
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key fis \major
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  Форма: 
  Intro V R V R Solo V R Solo
}
