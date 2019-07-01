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


HornMainRiff = {
  \tag #'Harmony {
    \HRiffII   \HRiffII   \HRiffII   \HRiffII 
  }
  \tag #'Horn {
    \mark "Main Riff"
    \relative c'' {
      gis4. fis8~fis2 | e4. fis8~fis2 |
      gis4. fis8~fis2 | e4. fis8~fis2 |
      gis4. fis8~fis2 | e4. fis8~fis2 |
      gis2 r4 e8 ( fis) | \tuplet 3/2 {gis4 fis e}   fis2 |
    }
    
    \bar "||"
  }
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

Backs = {
  \tag #'Harmony {
    s1 s1
  }
  \tag #'Horn {
    \mark "Back phrases"
    \relative c' {r2 r8 dis8 e fis | gis4 r2. \bar "||"}
  }
  
}


Refrain = {
  \tag #'Harmony {
    s1 \longBar
    \HRiff \longBar
    \HRiff
    s1
  }
  \tag #'Horn {
    \mark "Refrain"
    r2. r8 fis' |
    \relative c'' {gis1 | fis2. e4 | cis1 | }
    \relative c' {e8 dis4 e fis4 r8 }
    \relative c'' {gis1 | fis2. e4 | cis1 | }
    \relative c'' {a1 } \longBar
    \parenthesize  gis'4  r2. 
    \bar "||"
  }
  
}

Music = {
  \HornMainRiff \break
  
  \Backs \break
  \Refrain
  % \HornRiff \break
  % \HornRiffII \break
  % \HornRiffIII \break
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