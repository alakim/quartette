\version "2.18.2"

\header{
  title="Люби меня"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HRiff = \chordmode{
  \transpose bes c {b1:m | a | g | a |}
}

HornRiff = {
  \tag #'Harmony {\HRiff \HRiff}
  \tag #'Horn {
    \relative c'' {gis2 fis8 e4 fis8 | gis4. cis16 cis cis4 b |}
    %\relative c'' {cis2 b8 gis4 fis8 | gis2 fis4 dis |}
    \relative c'' {cis4. e,16 e e8 fis4 gis8 | fis2 e4 dis \longBar}
    
    \relative c'{e4. cis'16 cis cis8 b4 gis8 |
      b2 gis4 fis |
      s1 s1 
    }
    
    \bar "||"
  }
}

Music = {
  \HornRiff
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Flugelhorn"
    \time 4/4
    \clef treble
    \key cis \minor
    \keepWithTag #'Horn \Music
  }
>>