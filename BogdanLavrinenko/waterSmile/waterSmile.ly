\version "2.14.2"

\header {
  title = "Улыбка воды"
  composer = "гр. День Радости"
}

HVerse = \chordmode {
  e1:m e1:m c1 c1 a1:m a1:m b1 b1 
}
HClRefrain = \chordmode {
  g1 g c c 
}
ClIntro = {
  \mark "Intro"
  \relative c''{e4 d8 e4 g4. \bar"||"}
}
ClVerse = {
  \mark "Verse"
  \repeat volta 2{
    \relative c'{
      e8 e g e4.~e4 | r4 e4 d8 e4. | c8 c e c4.~c4 | r4 c4 a8 c4. |
      a8 a c a4.~a4 | r4 a4 g8 a4. | b'4 a8 fis4.~fis4 | g8 e cis e c a fis16 a c8 |
    }
    
    %{
    s1 s1 | 
    <<{b''\trill}\\{\relative c'{r8 b a b d b a b}}>>
    | s1 
    %}
  }
}
ClSolo = {
  \mark "Solo"
  \relative c'{
    e4 g8 e4.~e4 | e'8 e d e4 g4. | c,,4 e8 c4.~c4 | e'8 e g e4 d4.  |
    a,4 c8 a4.~a4 | c'8 d e d4 c4. | b4 a8 fis4.~fis4 | g8 e cis e c a fis16 a c8 |
  }
}
ClRefrain = {
  \mark "Refrain"
  \relative c'''{r4 g4 e8 d~d4 | r4 g4 e8 d4 b8 | e8 d e g~g2 | e8 d e g4. <a e>4 | }
  \relative c'''{r4 g4 e8 d~d4 | r4 g4 e8 d4 b8 | e8 d e g~g2 | 
                 %r8 e'8 d8 c d4 e 
                 r8 d8 c16 d e8 g e8~e4 
                 | }
}
Verse = {
  \repeat volta 2{
    s1 s1 s1 s1 
    s1 s1 s1 s1 
  }
}
VRefrain = {
  \relative c''{r4 b4 a8 g~g4 | r4 b4 a8 g~g4 | g8 c4 b g8~g4 | c8 c c d4. c4 |}
  \relative c''{r4 b4 a8 g~g4 | r4 b4 a8 g~g4 | g8 c4 b g8~g4  | r1 |}
}

<<
  \new ChordNames{
    \chordmode{e1:m}
    \HVerse 
    \HVerse 
    \HClRefrain \HClRefrain 
  }
  \new Staff{
    \set Staff.instrumentName="Voice"
    \clef treble \time 4/4 \key g \major
    s1
    \Verse \Verse 
    \VRefrain
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 4/4 \key g \major 
    \ClIntro
    \ClVerse
    \ClSolo
    \ClRefrain 
  }
>>