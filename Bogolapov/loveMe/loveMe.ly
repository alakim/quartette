\version "2.18.2"

\header{
  title="Люби меня"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HRiff = \chordmode{
  \transpose bes c {b1:m | a | g | a |}
}

HRiffII = \chordmode{
  \transpose bes c {b2:m a | g a |}
}


HornRiff = {
  \tag #'Harmony {\HRiff \HRiff \chordmode {\parenthesize cis1:m}}
  \tag #'Horn {
    \mark "Riff 1"
    \relative c'' {gis2 fis8 e4 fis8 | gis4. cis16 cis cis4 b |}
    %\relative c'' {cis2 b8 gis4 fis8 | gis2 fis4 dis |}
    \relative c'' {cis4. e,16 e e8 fis4 gis8 | fis2 e4 dis \longBar}
    
    \relative c'{e4. cis'16 cis cis8 b4 gis8 | b2 fis4 gis |
      % a8 e16 e e8 cis e fis gis a |
      a8 e16 e e8 cis a'8 e16 e e8 fis | 
      dis2 e4 fis \longBar
      \parenthesize gis1
    }
    
    \bar "||"
  }
}

HornRiffII = {
  \tag #'Harmony {
    \HRiffII 
    \HRiffII 
  }
  \tag #'Horn {
    \mark "Riff 2"
    \bar ".|:"
    \relative c'' {gis2 fis8 e4 fis8 | gis2 fis4 dis | }
    \relative c' {e2 dis8 cis4 dis8 | e2 fis4 dis |}
    \bar ":|."
  }
}

HornRiffIII = {
  \tag #'Harmony {
    \HRiffII \HRiffII 
    \HRiffII \HRiffII 
    \chordmode {\parenthesize cis1:m}
  }
  \tag #'Horn {
    \mark "Riff 3"
    \bar ".|:"
    \relative c'' {gis2 fis8 e4 fis8 | gis4. cis16 cis cis4 b | }
    \relative c'' {cis4. e,16 e e8 fis4 gis8 | fis2 e4 dis \longBar}
    
    \relative c'{e4. cis'16 cis cis8 b4 gis8 | a2 e4 fis4 |
      % a8 e16 e e8 cis a'8 e16 e e8 fis | dis2 e4 fis \longBar
      gis2 b | cis2 dis  \longBar
      \parenthesize cis1
    }
    \bar ":|."
  }
}

Music = {
  \HornRiff \break
  \HornRiffII \break
  \HornRiffIII \break
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