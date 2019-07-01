\version "2.18.2"

\header{
  title="Иррациональные чувства"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
  \transpose bes c {e2:7 a:7 | d:7 a:7 |}
}
HII = \chordmode {d1:7 | a:7 | d:7 | b |}

HRiff = {
  \HI \HI 
  \HII
}



HornRiff = {
  \tag #'Harmony {\HRiff}
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