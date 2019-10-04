\version "2.18.2"

\header{
  title="Как Биче и Алигьери"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
      e1:m | b:7 | a:m | b:7 |
      f1 | b:7 | f1 | b:7 |
  }
}

HRefrain= \chordmode{
  \transpose bes c {
      a1:m | b:7 | e:m | c |
      a1:m | b:7 | e:m | c |
  }
}

Solo = {
  \tag #'Harmony {\HVerse \HVerse}
  \tag #'Horn {
    \mark "Solo"
    % t=02:32
    \relative c''{cis2~cis8 d4 cis8 | b2. ~b8 cis16 b | a2~a8 b4 a8 | cis1 \longBar }
    % t=09:40
    \relative c''{cis8 d4 cis8 cis b4 cis8 | cis8 b4 a4. b8 a |}
    % t=13:20
    \relative c''{a2~a8 fis e fis | gis4. a8~a2 \longBar } 
    
    % t=16:39
    \relative c''{cis2~cis8 d4 cis8 | b2. ~b8 cis16 b | a2~a8 b4 a8 | a4. gis4 a4. \longBar }
    % t=23:59
    \relative c'{fis8 gis4 a8 fis8 a4 b8 | b8 a4 b8 cis b4 d8 |e4. d8~d2 |gis8 f d b gis fis e fis }
    
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    r1 | r1 | r1 | r1 \longBar
    \relative c''{g1 | gis | b | cis |}
    
    
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    \relative c'{fis1 | gis | a | fis \longBar}
    \relative c'{fis1 | eis | fis | a |}
    
    \bar "||"
  }
}


Music = {
  \Solo \break
  \Verse \break
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
    \key d \major
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  Форма: Solo V V V R Solo V R Solo
}