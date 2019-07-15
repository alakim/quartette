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
    \key fis \major
    \keepWithTag #'Horn \Music
  }
>>
