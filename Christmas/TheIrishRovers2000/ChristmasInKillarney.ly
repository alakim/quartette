\version "2.14.2"

\header{
  title = "Christmas in Killarney"
  composer = "traditional, The Irish Rovers"
}

Intro = {
  \mark "Intro"
  \relative c'''{c8 g a  g8 a g | e8 d c d8 c a | a8 c c g4 b8 | c8 c c c4. | }
}

Tune = {
  r4. r4 c''8 | 
  \repeat volta 2{
    \mark "Refrain"
    \relative c''{c4 g8 g4 c8 | c4 g8 g4 g8 | c8 a g c a g | c4 g8 g4 a8}
    \relative c''{c4 d8 e4 d8 | c4 g8~g4 a8 | g8 a c b4 d8 | }
  }
  \alternative{
    {c''2 r8 c''8 |}
    {c''2 r8 g'8 |}
  }
  {
    \mark "Verse"
    \relative c''{a4 g8 a4 b8 | c4 a8~a4 b8 |c4 b8 a4 g8 | a2 r8 e8 |}
    \relative c''{g4 a8 a4 b8 | c4 a8 g4 a8 | c4 c8 b4 a8 | g2 r8 a8 |}
    \relative c''{g4 c,8 c4 a'8 | g4 c,8 c4 a'8 | g4 b8 c4 a8 |b4 a8 a4 b8 |}
    \relative c''{c4 b8 c4 a8 | b8 a g~g4 c,8 | d8 e d c4 b8 | c2. |}
  }
}

Solo = {
  \mark "Solo"
  \relative c''{g4 a8 c8 b a | g8 e g a g e |}
  \relative c''{g4 a8 a b c| a8 g e d c d | }
  \relative c'{d8 d a' a g e | d8 d e g e d |}
  \relative c'{d8 d a' a b c | g8 f e d c d | d2.^"simile" }
}

<<
  \new Staff{
    \clef treble
    \time 6/8 \key c \major
    \Intro \bar "||"
    \Tune \bar "||"
    \Solo
  }
>>
