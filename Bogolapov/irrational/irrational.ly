\version "2.18.2"

\header{
  title="Иррациональные чувства"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HRiff = \chordmode{
  \transpose bes c {e1 | a | d | a |}
}



HornRiff = {
  \tag #'Harmony {\HRiff \HRiff}
  \tag #'Horn {
    \mark "Riff 1"
    \relative c'' {
        s1 s1 s1 s1 
        \longBar
        s1 s1 s1 s1 
    }
    
    \bar "||"
  }
}


Music = {
  \HornRiff \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key b \major
    \keepWithTag #'Horn \Music
  }
>>