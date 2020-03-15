\version "2.18.2"

\header{
  title="Как тает снег..."
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HIntro = \chordmode { d2:m d:m/c d:m/b d:m/a }

Intro = {
  \tag #'Harmony {\chordmode{
    \HIntro \HIntro
  }}
  \tag #'Flute {
    \mark "Intro"
    s1 | s1 \longBar
    s1 | s1 | 
    \bar "||"
  }
  \tag #'Voice {
    s1 | s1 \longBar
    s1 | s1 | 
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
    \mark "Verse"
    \relative c''{ r1 | r2 g'16 fis e d e d b a \longBar bes4. a8 g2 | f2 a16 g a d c a c d \longBar}
    \relative c''{ e2 d4. c8 | f2 r \longBar r4. g16 f g4 c, | b2 a4 g \longBar }
    \relative c'{ e4. g8 bes2 | a2 r \longBar g1 | a2 r16 g16 a c d c d e }
    \bar "||"
  }
  \tag #'Voice {
    \relative c'{r8 f f f e e f e | d2.~d8 d8  \longBar d4. d8 e e f g | a16 g a4. r4. e8 \longBar }
    \relative c''{ g4. g8 bes8. d,16 d8 d | d8 a' a2~a8 f \longBar e16 e e8~e2 e16 f e8 | d1 \longBar } \break
    \relative c''{r8 g8 g g g8. g16 g8 g | f8 e  d2~d8 c \longBar d16 c d8~d4. d8 d d  | f16 e d8~d2. } 
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
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key d \minor
    \keepWithTag #'Voice \Music
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4
    \clef treble
    \key d \minor
    \keepWithTag #'Flute \Music
  }
>>

