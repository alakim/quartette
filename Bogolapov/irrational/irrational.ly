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

HIntro = {
  \HI \HI
  \HI 
  \chordmode{\transpose bes c {e2:7 a:7 | d1:7 |}}
}

Bass = {
  \relative c {e4 gis b cis | d4 c a g \bar "||"}\break
  
  \relative c {
               %e4 gis b cis | d4 c a g | 
               e4. e4 e8 a4 | d4. d4 d8 e4|
               %d4. d4 d8 c4 | a4. a4 a8 cis4 |
               d,4. d4 d8 c4 | a'4. a4 a8 g4 |
               d4. d4 d8 c4 | b1 \bar "||"
  }
}


Intro = {
  \tag #'Harmony {\HIntro }
  \tag #'Horn {
    \mark "Intro"
    \relative c'' {
        \relative c''{ais4. fis8~fis2 | gis8 fis4 a4 b4. |}
        \relative c''{ais4. fis8~fis2 | gis8 fis4 a8~a2 |}
        \relative c''{ais4. fis8~fis2 | gis8 fis4 a4 b4. |}
        \relative c''{ais4. fis8~fis2 | fis8 fis4 fis8~fis2 |}
        
    }
    \bar "||"
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

Solo = {
  \tag #'Harmony {\HIntro }
  \tag #'Horn {
    \mark "Solo"
    \relative c' {
        fis4. fis4 fis8 a fis8 | gis8 fis4 a4. fis4  | cis'4. b4 a fis8~ | fis1 |
    }
    \relative c' {
        dis8 fis4 gis8 a fis4. |b8 gis4 cis4 dis4. | e4. cis4. a4 | b8 gis b d8~d2 |
        \bar "||"
    }
  }
}

Bridge = {
  \tag #'Harmony {\chordmode{\transpose bes c{
    a1:7 d:7 a1:7 d:7
    a1:7 d:7 g2:7 f:7 d1:7
  }}}
  \tag #'Horn {
    \mark "Bridge"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | \relative c''{a4. g8~g2 | gis1 }  \bar "||"
  }
}


Music = {
  \Intro \break
  \Verse \break
  \Solo \break
  \Bridge \break
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

<<
  \new ChordNames{
    \transpose c bes {\HI 
                      \HI
    }
    \chordmode{   d1:7 a:7 d:7 b}
  }
  \new Staff{
      \set Staff.instrumentName="Bass"
      \time 4/4
      \clef bass
      \key a \major
      \Bass
  }
>>

\markup{
  "Форма: Intro V1 intro  V2 solo V3 Br solo V4 solo V5 Br intro"
}