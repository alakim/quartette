\version "2.18.2"

\header{
  title="Бархат на рукавах"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

% HRiff = \chordmode { b1:m a e g} % ????

HVerse = \chordmode{
  b1:m a b:m a  % e
  b2:m a b1:m  b2:m a b1:m
}

HChorus = \chordmode{
  g1 b:m a e
  e1 b1:m g1 a1
  b1:m 
}

Solo = {
  \tag #'Harmony {\chordmode {
      b2:m a | d2 g  | s1 | s1 
      s1 | s1 | s1 | s1 | 
  }}
  \tag #'Voice {
    r1 | r1 | r1 | r1 |  
    r1 | r1 | r1 | r1 |  
  }
  \tag #'Trumpet {
    \mark "Solo"
    \relative c'{fis2. e8 d | b2. d8 e | fis2. e8 d | b2. d8 e |}
    \relative c'{fis2. e8 d | b2. d8 e | \tuplet 3/2 {fis4 e fis } \tuplet 3/2 {a4 fis a} | b1 |}
    
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse }
  \tag #'Voice {
    \relative c'{b4 fis'2 fis4 | a4 g8 fis e4 d |}
    \relative c'{b4 fis'2 fis4 | a8 g fis4 e2 | }
    \relative c'{fis4 b,2 cis4 | d8 cis a4 b b |}
    \relative c'{b4 b8 cis d cis a4 | b2 r |}
    
  }
  \tag #'Trumpet {
    \mark "Verse"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
    
    
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {\HChorus}
  \tag #'Voice {
    \relative c''{r4 b8 b b4 b8 a8~ | a4 fis2 fis8 fis | e4. d fis4~| fis4. b,8~b2 | }
    \relative c'{ r1 | r4 b8 b b b4 d8~| d8 b4. r2 | r4 a8 b d cis a4 | b4 r2. |}
  
           
  }
  \tag #'Trumpet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
    s1 |
    
    \bar "||"
  }
}

Music = {
    \Solo \break
    % \Verse \break
    % \Chorus \break
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Voice \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Trumpet \Music
  }
>>
