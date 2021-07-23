\version "2.18.2"

\header{
  title="The Battle"
  composer="Blood, Sweat & Tears"
  subtitle = "под гусли"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Intro = {
  \tag #'Harmony {\chordmode{
    s8
    b2:m a2 b4:m fis4:m b2:m
  
  }}
  \tag #'Voice {
    \mark "Intro"
    \relative c''{
       \partial 8{b16 cis} |
       d4. e16 d cis4. b16 cis | d16 e fis8 e16 d cis b~b2 
       \bar "||"
    }
  }
}

%HrmI = \chordmode {e2:m a2 fis2:m g2}
HrmI = \chordmode {e2:m a2 fis2:m b2:m7}
Verse = { 
  \tag #'Harmony {\chordmode{
    s1
    \HrmI
    \HrmI
    \HrmI
    fis2:m e:m
    g4 a4 b2:m
  
  }}
  \tag #'Voice {
    \mark "Verse"
    \relative c''{
       s2. r8 g16 a  |
       b16 b b4 g8 fis16 e8. r8 fis16 g | a8 a a g fis4. g16 a | 
       b16 b b4 g8 fis16 e8. r8 fis16 g | a8 a a g fis4. r16 a | 
       b8 b b g8 fis16 e8. r8 g | a8 a a g fis4 r | 
       
       fis8 fis fis fis e8 d16 e~e4 | 
       d4 cis b2 \bar "||"
    }
  }
}

Chorus = { 
  \tag #'Harmony {\chordmode{
    d2 b:m  g2 a
    d2 b:m
    g4 a b2:m
  }}
  \tag #'Voice {
    \mark "Chorus"
    \relative c''{
       a8. a16 a8 a g8 f4.
       g8. g16 g8 g a2
       
       a8 a g f e d d4 |
       d8 e d cis b2 \bar "||"
    }
  }
}



Music = {
    \Intro \break
    \Verse \break
    \Chorus \break
}

<<
  \new ChordNames{\transpose b a{
      \keepWithTag #'Harmony  \Music
  }}

  \new Staff{\transpose b a{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Voice \Music 
  }}
>>



