\version "2.18.2"

\header{
  title="For My Lady"
  composer="Blood, Sweat & Tears"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Verse = { % t = 24.04
  \tag #'Harmony {\chordmode{
  g1:m g:m f1 f1 
  g1:m g1:m d2:m f2 f1
  g1:m7 g1:m f1 bes 
  d1:m  g1:m d2:m f2 f1 
  bes2 f2 bes2 f
  f1 d:m
  }}
  \tag #'Voice {
    \mark "Verse"
    \relative c'{r2. d4 | g4 a bes c | a1 | r1 | }
    \relative c'{r2. d4 | g4 a bes c | d4. c16 bes c2 | r1 |}
    \relative c'{r2. d4 | g4 a bes c | a4 \glissando f2 g4 | d1 | }
    \relative c''{r1 | g4 a bes c | d4. c16 bes c2~ |c1 | g4 f f2~| f1 \bar "||" }
    r1
    s1
  }
}




Music = {
    \Verse \break
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony  \Music
  }

  \new Staff{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Voice \Music 
  }
>>


\markup{\column{
\line {"The silence of your smile\n"}
\line {"Your fingers whisper slowly"}
\line {"My lady walks a mountain mile"}
\line {"And I want her only, only"}
\line {" "}
\line {"I'll walk with you awhile"}
\line {"And whistle with the swallows"}
\line {"My lady walks a mountain mile"}
\line {"And children, they will follow, follow"}
\line {" "}
\line {"I'll give you beads and rings"}
\line {"The earth will be a mother"}
\line {"My ladys arms are angel wings"}
\line {"The sky her only lover, lover"}

}}

