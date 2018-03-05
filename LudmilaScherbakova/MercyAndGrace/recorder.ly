\version "2.16.2"

\header {
  title = "Милость и благодать"
  composer = "Л.Щербакова"
}

HI = \chordmode {c1 g d:m a:m }
HCoda = \chordmode {d1:m a:m }

RIntro = {
  \time 4/4 \key a \minor
  \mark Intro
  \relative c''{r1 | r1 | a4. f4. e4 | d4. c8~c2 | e2. d8 c | d2. r8 d16 e | f1 | e1 |}
  \relative c'{e2 d8 c a c | d1 | f8 e4. d8 c d c | e1 |}
  \relative c''{g2 f4 g | g2. g4 | a1~ | a1 \bar "||"}
}

RSolo = {
  \mark Solo
  \relative c''{g2. a8 g | a4 g2. | a2. f4 | e4 d2. |}
  \relative c'{c2. a'8 g | a4 g2 a8 g | a1~ | a4. a8 c b a g |}
  \relative c''{a4 g2 c4 | d2. c8 a | c2. a8 g |a8 g8~g2 f4 |}
  \relative c'{e2 g8 e g4 |a8 g8~g2 a8 g | a2. f4 | e8 a8~a2. \bar "||"}
}

RCoda = {
  \mark Coda
  \relative c''{a16 g a8~a2 g4 | a1 \bar "|."}
}

<<
 %{ \new ChordNames{
    \HI \HI \HI \HI 
    \HI \HI \HI \HI 
    \HCoda
  }
  \new Staff{
    \clef treble
    \RIntro \break
    \RSolo 
    \RCoda
  }
 %}
  \new ChordNames{\transpose f c{
    \HI \HI \HI \HI 
    \HI \HI \HI \HI 
    \HCoda
  }}
  \new Staff{\transpose f c'{
    \set Staff.instrumentName = "Rec. in F"
    \clef treble
    \RIntro \break
    \RSolo 
    \RCoda
  }}
>>

\markup{
  Форма: Intro, К1, пр. К2, пр. Solo, К3, пр. Coda
}