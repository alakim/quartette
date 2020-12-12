\version "2.18.2"

\header{
  title="Как тает снег..."
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HIntro = \chordmode { d1:m d:m/c d:m/b d:m/a }

Intro = {
  \tag #'Harmony {\chordmode{
    \HIntro \HIntro 
    \HIntro \HIntro 
  }}
  \tag #'Clarinet {
    \mark "Intro"
    % \relative c'{ r1 | a1 | f2 d'4 c8 d~ | d4 c a g | }
    \relative c'{ r1 | a1 | f2 d''4 c8 d~ | d4 f d g,, | }
    \relative c	{  f1 | a4. g8~ g2 | d'8 c4 a4 d4.~ | d4. a8~ a2 | }
    \relative c'{ d2. c4 | a'2.  f4 | g2~g8 r4. | d4. d'16 e f4 e | }
    \relative c''{f2~f8 c d a | g4. a8~a2 | c4. r8 a' g f e f e f e d4 c | %{d1 |%} }
    %\bar "||"
  }
  \tag #'Voice {
    \relative c'{ r4. f8~f2 | e4. f4 e8 d4~  | d1 | s1 |}
    \relative c''{r8 a8~a2. | g4. f4 e8 f4  |  | f8 e4 d c8 b4~| b2. d8 e |}
    \relative c'{f1 | e4. f4 e8 d4~ |d8 c4 b a8 g4~ | g1 |}
    \relative c''{a1 | g8 f4 e8 f2~ |f1| r1 \bar "||" }
  }
}

Verse = {
  \tag #'Harmony {\chordmode{
    d2:m c g1 
    g2:m c f1
    
    c2 g:m d1:m
    c1 g
    
    c2 g:m d1:m
    g2:m c  d1:m
  }}
  \tag #'Flute {
    \bar "||"
  }
  \tag #'Voice {
    \mark "Verse"
  }
}


Music = {
  \Intro \break
  % \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key d \minor
    \keepWithTag #'Voice \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key d \minor
    \keepWithTag #'Clarinet \Music
  }
>>

