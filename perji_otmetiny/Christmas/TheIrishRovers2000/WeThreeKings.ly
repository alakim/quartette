\version "2.14.2"

\header{
  title = "We Three Kings"
  composer = "traditional, The Irish Rovers"
}

Intro = {
  \time 6/8 \key e \minor
  \mark "Intro & breaks"
  \relative c'{e8. fis16 g8 fis8. g16 a8 | g8. fis16 e8 fis\prall e d | e2. | }
  \bar "||"
}

%{ Аккорды от Кума
   аккорды для We Three Kings: 
   проигрыш EmDCHmEm 
   куплет EmCH7Em EmCH7Em GDGGAmH7Em DD 
   припев: GGCG GGCG EmAmCD GGCG
%}
HIntro = \chordmode {e4.:m d | c b:m | e2.:m |}
HVerse = \chordmode {
  e4.:m c | b:7 e:m | 
  e4.:m c | b:7 e:m |
  g4. d | g2. | a4.:m b:7 | e2.:m | 
}
HRefrain = \chordmode {
  e4.:m d2. |
  g2. | c4. g | g2. | c4. g |
  e4.:m a:m | c d | g2. | c4. g |
}
HTune = {
  \HIntro
  \HVerse
  \HRefrain
  \HVerse
}

Tune = {
  %\time 6/8 \key e \minor
  \mark "Verse 1"
  \relative c'{e4 e8 e4 e8 | d8. e16 fis 8 e4. | e4 d8 c4 c8 | b8. c16 d8 e4. |}
  \relative c''{g4 g8 a4 a8 | b4 a8 g4 fis8 |}
  \relative c''{g8. fis16 e8 fis4 d8 | e2. |}
  \bar "||"
  
  \mark "Refrain"
  \time 9/8 <g b e'>4. <a d' fis'>2. | \time 6/8
  \relative c''{g4 g8 g4 d8 |e4 fis8 e4. | }
  \relative c''{g4 g8 g4 d8 |e4 fis8 e4. | }
  \relative c''{g4 g8 a4 a8 | b4 a8 g4 fis8 |}
  \relative c''{g4 g8 g4 d8 | e4 fis8 g4. |}
  \bar "||"
  
  \mark "Verse 2 & others"
  \relative c''{b4 a8 g4 g8 | fis8. g16 fis8 e4. | }
  \relative c''{b4 a8 g4 g8 | fis8 g fis8 e4. | }
  \relative c''{g4 g8 a4 a8 | b4 b8 d8 c b |}
  \relative c''{a8. b16 a8 g4 fis8 | e2. |}
}

ClIntro = {
  \relative c'{
    e8. fis16 g8  fis8. g16 a8 |
    g8. a16 b8 a b c | b2. |
  }
}
ClVerse = {
  s2.^"ad lib." s2. s2. s2. 
  s2. s2. s2. s2. |
}
ClRefrain = {
  \relative c'{r4.fis a}
  \relative c''{
      g4.~g4 d8 | g4 e8 g4. |
      g4.~g4 d8 | g4 e8 g4. |
      g4. a4 b8 | c4 b8 a4 b8 |
      g4.~g4 d8 | g4 d8 g4 fis8 |
  }
}
ClTune = {
  \time 6/8 \key e \minor
  \ClIntro
  \ClVerse
  \ClRefrain
  \ClVerse
}


<<
  \new ChordNames{\HTune}
  \new Staff{
    \clef treble
    \Intro
    \Tune \bar "||"
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \transpose bes c{
      \ClTune
    }
  }
>>
