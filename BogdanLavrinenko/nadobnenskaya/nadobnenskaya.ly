\version "2.16.2"

\header {
  title = "Надобненская"
  composer = "гр. День Радости"
}

HRiff = \chordmode {
  g2 bes | c1 |
}
ClIntro = {
  \key g \minor
  \mark Intro
  \relative c' {bes2 g |d'2 f |}
  \improvisationOn
  b'1 | b'2
  \improvisationOff
  \relative c'{r8 d c bes | g2 }
  \improvisationOn
  b'2 | b'1 | b'1 | b'1 |
  \improvisationOff
  g'2 r
  \bar "||"
}

HVerse = \chordmode {
  e1:m b:m a:m g
  e1:m b:m a:m 
  g4 a g2
  g4 c g2
}
ClVerse = {
  \key g \major
  \mark Verse
  \relative c'{b1 | d1 | c1 | b1 |}
  \relative c'{b1 | d1 | e8 e g8 e16 g a8 g~g4 | 
               b8 b d b16 d e2 | d16 b d8 e16 d e8 g2 \bar "||"}  
}

<<
  \new ChordNames{
    \HRiff \HRiff 
    \HRiff \HRiff 
    \chordmode{g1 }
    \HVerse
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \time 4/4
    \ClIntro
    \break
    \ClVerse
    
  }
  \new Lyrics{\lyricmode{
    _1 _1 _1 _1 _1 _1 _1 _1 _1 
    _1 _1 _1 _1 _1 _1 _1 
    сердцу4 так надо2 
    сердцу4 так надо2 
    
  }}
>>
