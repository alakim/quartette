\version "2.18.2"

\header{
  title="Бархат на рукавах"
  composer="А.Боголапов"
  subtitle = "партия кларнета"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HRiff = \chordmode {b2:m a2 e2 g2}
HIntro = {
  \chordmode {\partial 8.{s8.}}
  \HRiff \HRiff 
  \HRiff \HRiff 
}

HVerse = {
   s1 s1 s1 s1 s1
   s1 s1 s1 s1 s1
}

Intro = {
  \tag #'Harmony {\HIntro}
  \tag #'Clarinet {
    \mark "Intro" \transpose c c,{
      \partial 8. {\relative c''{ b16 a b |}}
      \relative c''{d4. b a4 | e'8 b4 d4. b4 | b'4. e, d4 | e8 d4 d4. b4 | }
      \relative c''{b'4. e, d4 | e8 d4 b4. a4 |d4. b a4 | b1 |}
       
    \bar "||"
  }}
}

Verse = {
  \tag #'Harmony { 
    s1 s1 s1 s1 
    s1 s1 s1 s1 s1 
    s1 s1 s1 s1 
    s1 s1 s1 s1 s1 
  }
  \tag #'Clarinet {
    \mark "Verse" 
       r1 | r1 | r1 | r1 | 
     \relative c'{ b1 | a4 fis a b | b2 d8 b d4 | e1 | fis8 e4 fis8~fis2 |}\break
       r1 | r1 | r1 | r1 | 
     \relative c'{ e1 | d2 b | b2 d8 b d4 | e1 | fis8 e4 fis8~fis2 |}
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony { 
       s1 | s1 | s1 | s1 |  
       s1 | s1 | s1 | s1 |
  }
  \tag #'Clarinet {
    \mark "Chorus" 
       \relative c''{ b1 | a4. fis8~fis2 | e4. d2 fis8 |r4 b,8 cis d cis a4 |  }
       \relative c'{b2 r | b1 | cis2 r | r1 |  }
    \bar "||"
  }
}


Music = {
    \Intro \break
    \Verse \break
    \Chorus
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c{ \Music}
  }

  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Clarinet \transpose bes c' { \Music }
  }
>>

