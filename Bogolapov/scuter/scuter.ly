\version "2.18.2"

\header{
  title="Самокат"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
      c1 | g | c | g |
      f | c  | a:m | g |
  }
}

HRefrain= \chordmode{
  \transpose bes c {  f1 | c |a:m | g |}
}


Intro = {
  \tag #'Harmony {\HVerse }
  \tag #'Horn {
    \mark "Intro"
    
    \repeat volta 2{
      \relative c''{a2 r8 a g4 | a1 |
         r4 a4 a8 g4 a8~ |a8 a4. r2 |
      }
       \longBar
      % \relative c''{g4 g8 fis4 g4 g8 | fis1 |
        % fis4 fis8 e4 fis4 fis8 | e1 |
      % } \longBar
      
      \relative c''{g2 r8 fis8 g4 | fis1 |
          r4 fis4 fis8 e4 fis8 | e1 
      } 
      
    }
    %\bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    
    \relative c''{d2. cis8 d8~| d2. a4 |  b2 r8 a8 b8 a~ |a8 a4. r2 | }
    \bar "||"
  }
}


Music = {
  \Intro \break
  \Verse \break
  \Refrain \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key d \major
    \keepWithTag #'Horn \Music
  }
>>

\markup{
  "Форма: Intro V V R Intro V V V R R Intro"
}