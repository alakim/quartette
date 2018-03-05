\version "2.16.2"

\header {
  title="Я верю тебе"
  composer = "гр. День Радости"
}

%{HVerse = \chordmode {
  a1:m | d:m | f | g |
}

HIntro = {
  \HVerse \HVerse 
}
Intro = {
  \mark Intro
  \relative c''{c4 b8 c4 e,8 d e | f4 a,8 b4 a8 c d | }
    s1 | s1 | 
  s1 | s1 | s1 | s1 | 
}
%}

HRefrain = \chordmode {
  c1 | f | c | g |
}

VRefrain = {
  \mark "Refrain"
  \relative c'{
    r4. e8 e e e4 | f2. f8 f | 
    g4 g8 g g4 g8 g | g8 g g4 a g | \break
  }
  \relative c'{
    r4. e8 e e e4 | f2. f8 f | 
    g4 g8 g g4 g8 g | g8 g g4 e d | \break
  }
  \relative c'{
    r4. c8 c c c4 | c2. c4 |
    g'4 g8 g g4 g8 g | g8 g g4 a g | \break
  }
  \relative c'{
    r4. e8 e e e4 | f2. f8 f | 
    e8 e e4 e e8 e | d8 d d4 e d  \bar "||" \break
  }
}
ClRefrain = {
  \relative c'{c1 | a'1 | e1 | d4 c b d |}
  \relative c'{c1 | a'1 | e1 | d4 b g b |}
  \relative c'{e1 | f4 e f a | e1 | d4 c b d |}
  \relative c'{c1 | a'1 | g2 c | g4 a b g |}
}

%{
<<
  \new ChordNames{
    \HIntro
  }
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \Intro
  }
>>
%}

<<
  \new ChordNames{
    \HRefrain \HRefrain \HRefrain \HRefrain 
  }
  \new Staff{
    \set Staff.instrumentName = "Vocal"
    \clef treble
    \time 4/4
    \key c \major
    \VRefrain
  }
  %{\new ChordNames{\transpose bes c{
    \HRefrain \HRefrain \HRefrain \HRefrain 
  }}%}
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \time 4/4 
    \transpose bes c'{
      \key c \major
      \ClRefrain
    }
  }
>>