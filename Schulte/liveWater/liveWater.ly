\version "2.18.2"

\header{
  title="Живая вода"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Verse = {
  \tag #'Harmony {\chordmode{
    e1:m c1 g1 d1
    e1:m c1 g1 d1
    b1:m e:m b1:m e:m  
    c1 g1 a1:m e1:m
    c1 g1 a1:m e:m 
  }}
  \tag #'Voice {
    \relative c''{r4 g8 g g g g4 | e'8 e~e2. |
           d4. d8 d c4 b8 | a8 b a2. \longBar }
    \relative c''{r4 g8 g g g g4 | e'8 e~e2. 
        |d4. d8 d c4 b8 | a8 b a2. \longBar }
    
    \relative c''{ r4 b8 b b fis' fis fis  | fis8 g g2.  | 
          r4 b,8 b b fis'4 b,8 | g'2 fis8 g4 e8~ \longBar}
    
    \relative c''{e2~e8 d e4 | d8 c4 b8~b2 | 
        r4 a8 a a b4 c8 | b8 a g2 g8 g \longBar}
    
    \relative c''{e2. g8 e | d8 c4 b2~b8 |
         r4 a8 a a g4 fis8 | e1 |}
    \bar "||"
  }
  \tag #'Flute {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 |
    \bar "||"
  }
}

HRiff = \chordmode{
  e1:m c1 g1 d1 
}

Riff = {
  \tag #'Harmony {\HRiff}
  \tag #'Guitar {
    %\relative c'{b16 d e8 g4  c,8 d g4 |} 
    %\relative c'{g8 b g'4 fis16 g fis e d4 |}
    \relative c'{e4 e' g2 | c,2 g' |g,2 g'}
    \relative c''{fis8 g fis e d4 d }
    \bar ":|."
  }
  \tag #'Flute {
    \mark "Intro"
    r1 | r1 | r1 | r1 |
  }
}

Solo = {
  \tag #'Harmony { \HRiff \HRiff }
  \tag #'Guitar {
    \relative c'{e4 e' g2 | c,2 g' |g,2 g' |fis8 g fis e d4 d }
    
    \relative c'{e4 e' g2 | c,2 g' |g,2 g' | fis8 g fis e d4 d }
  }
  \tag #'Flute {
    \mark "Solo"
    \relative c''{r4. b8 d e g4 | e4. c4 b a8 | 
       b8 a b d4 b8 a g | a2 fis } \longBar
    \relative c''{g4. d'4 b8 g4 | b4. e8~e2 |
         c8 b r4 a8 g8 r4 | r2  a'8 b a fis | }
    \bar "||"
  }
}


Intro = {
  \Riff \break
}

Music = {
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Intro
  }
  \new Staff{
    \set Staff.instrumentName="Guitar"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Guitar \Intro
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Flute \Intro
  }
>>

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Voice \Music
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Flute \Music
  }
>>

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Solo
  }
  \new Staff{
    \set Staff.instrumentName="Guitar"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Guitar \Solo
  }
  \new Staff{
    \set Staff.instrumentName="Flute"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Flute \Solo
  }
>>

\markup "Форма: Intro V S V S V Coda"
