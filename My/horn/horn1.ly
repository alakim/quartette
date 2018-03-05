\version "2.16.2"

\header {
   title="Horn theme 1"
   composer="alakim"
}

Hrm = \chordmode {\transpose bes c{
  c1 | c1 | d1:m | d1:m |
  c1 | c1 | d1:m | e1:m |
}}

Horn = {
  \partial 8{\relative c'{fis16 g |}}
  \relative c''{a2. fis4 | d'4. cis4. a4 | b2. cis8 d | a4. g4. fis4 | }
  \relative c''{b4 fis2 g8 a | 
     % e4. fis4. e8 d | b'4. cis d4 | e4 g,2 a4 | b4 e,2. |
     a2. fis4 | g1 | a1 \bar ":|."
  }
}

<<
\new ChordNames{
  \partial 8 {s8}
  \Hrm 
}

\new Staff{
  \set Staff.instrumentName = "Horn"
  \clef treble
  \time 4/4
  \key d \major
  \Horn
}
>>