\version "2.16.2"

\header {
  title="Out of a Dream"
  composer = "Eric Truffaz"
}


HI = \chordmode {
  d1:m9 | d1:m9 | a:m7 | a:m7 | bes/d | bes/d | c:7 | c:7 |
}
TptI = {
  \relative c''{ r1 |a4 d,8 f4. g8 e~ |e1~| e2. r8 a, | bes8 f'4 a,8 g f'4. | r1  | r1 | r1 |}
  \relative c'{ r2. r8 f16 g |a4 d,8 f4. g8 e~ |e1~| e2. r8 a, | bes8 f'4 a,8 g f'4.~ | f2. r8 a,  | bes4. g'8~ g2 | r2. r8 f16 g |}
}
HII = \chordmode {
  d1:m7 | d1:m7 | a:m7 a:m7 c:7 c:7
}
TptII = {
  \relative c''{a4. d8~d2~ |d2. r8 g,16 a | bes4. e8~e2~| e2. r8 g,16 a |}
  \relative c''{bes8 e4 a,8 g2 | r2 r8 e'4 g,8 | f1~ | f2. r8 f16 g | a4. e'8~e2~ | e2. r8 g,16 a | bes4. f'8~f2~|f2. r8 g,16 a |}
  \relative c''{bes8 e4 a,8 g2~| g2 e'4 g,8 a~ | a1~| a1 \bar "|."}
  
}


<<
  \new ChordNames{\transpose bes c{
    \HI \HI
    \HII
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \time 4/4
    \key d \minor
    \TptI \break
    \TptII
  }}
>>