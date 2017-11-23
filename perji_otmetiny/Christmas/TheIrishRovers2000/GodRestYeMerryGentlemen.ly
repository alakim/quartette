\version "2.14.2"

\header{
  title = "God Rest Ye Merry Gentlemen"
  composer = "traditional, The Irish Rovers"
}
HIntro = \chordmode {
  e4:m b:m c e:m
  a4:m g4 d4 
  e1:m
}
Intro = {
  \mark "Intro"
  \relative c'''{g8 g fis g16 fis e8 fis e16 d b8 |}
  \time 3/4
  \relative c''{a8 a e' d16 b a g d8 |}
  \time 4/4
  e'2. r8 e'8 |
  % \relative c''{\acciaccatura {e16} f8 f e f16 e  d8 e d16 c a8 |}
  % \relative c''{\time 3/4 g8 g c c16 a g a f8 | \time 4/4 g2. r8 d |}
}

HTune = \chordmode {
  e1:m c2 b:m 
  e1:m c2 e:m 
  a2:m d e:m d
  g2 b:m e:m d
  g2 b:m e1:m
}

Tune = {\transpose d e{
  \mark "Tune"
  \relative c'{d8 a' a g f [e16 d8.] c8 | d8. e16 f8 g a4. d,8 | }
  \relative c'{d8 a' a g f [e16 d8.] c8 | d8 e8 f8 g a4. a8 | }
  \relative c''{bes8 g a bes c d a g | f8 d e f g4 f8 g | }
  \relative c''{a4 bes8 a a g f e | d4 f16 e f8 g4 f8 g |}
  \relative c''{a8 bes8 c d a g f16 e8.  | d1 |}
}}

% Whistle = {\transpose d e{
%   \mark "Whistle"
%   \relative c'{d8 c16 d d8 f g8. a16 g f d f | a8. a16 f16 g a f f8 f16 e d4 |}
%   \relative c''{g8 g16 f g8 a d4 f8. e16 | d8. e16 d c a g  a8 a a4 |}
%   \relative c'{d8 c16 d d8 f g8. a16 g f d f | a8. a16 f16 g a f f8 f16 e d4 |}
%   \relative c''{g8. a16 g16 f d f a8. bes16 a16 g f8 | s1^"simile" | }
% }}

Solo = {
  \key a \minor
  \mark Solo
  s2. s8 e'8 |
  \repeat volta 2 {
    \relative c''{ a8 a16 g a8 b e8. fis16 e d b d | e8 e16 e a,8 b16 b g g g fis e8 e | a8. g16 a8 b e4 g8. fis16 | e8. fis16 e d b g a4. e8 |}
  }
  \relative c'''{a8. a16 g e g a b4 b16 a g8 | e8 d d16 e g8 g,8. a16 g8 e |}
  \relative c'''{a8. a16 g e g a b4 b16 a g8 | e8 d d16 e g8 a4. e8 |}
  \relative c'''{a8. a16 g e g a b4 b16 a g8 | e8 d d16 e g8 g,8. a16 g8 e | a16 g a b d8 b a g g'8. fis16 | e8. fis16 e d b g a8 a a4 | 
      \key e \minor
      b'16 a g a b a g d e16 g g d e4  \bar "||"
  }
}

<<
  \new ChordNames{
    \HIntro
    \HTune}
  \new Staff{
    \clef treble
    \time 4/4 \key e \minor
    \Intro \bar "||"
    \Tune \bar "||"
    %\Whistle
    \Solo
  }
>>
