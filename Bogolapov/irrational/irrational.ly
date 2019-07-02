\version "2.18.2"

\header{
  title="Иррациональные чувства"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
  \transpose bes c {e2:7 a:7 | d:7 a:7 |}
}
HII = \chordmode { \transpose bes c {d1:7 | a:7 | d:7 | b |}}

HRiff = {
  \HI \HI 
  \HII
}



Intro = {
  \tag #'Harmony {\HRiff }
  \tag #'Horn {
    \mark "Intro"
    \relative c'' {
        \relative c''{a4. fis8~fis2 | e8 fis4 a fis4. |}
        \relative c''{a4. fis8~fis2 | e8 cis e fis~fis2 \longBar}
        %\relative c''{a4. fis8~fis2 | e8 fis4 a b4. |}
        \relative c''{\appoggiatura g8 gis4. e8~e2 | a8 fis a b4 d4. |}
        \relative c''{d8 b d b d b4 a8~ | a8 fis e fis a b r4 \bar "||"}
        
    }
  }
}

Verse = {
  \tag #'Harmony {\HRiff }
  \tag #'Horn {
    \mark "Verse"
    \relative c'' {
        r1 | r2 r8 \relative c'{fis8 e fis}  | r1 | r2  r8 \relative c'{fis8 a b} |
        r1 | \relative c'{r2 r8 fis8 fis4 | r2 fis2\< | gis4^. r2.\! \bar "||"} 
    }
  }
}


Music = {
  \Intro \break
  \Verse \break
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