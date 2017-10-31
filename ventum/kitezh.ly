\version "2.18.2"

\header {
  title = "Китеж"
  composer = "гр. Ventum"
}

HrmA = \chordmode {b1:m g/d a b:m}
HrmB = \chordmode {b2:m bes:m5+ | a:m as:m5+ | g:m ges:m5+ | c b:m |}

HrmI = { \HrmA \HrmA }
ClI = {
    %{
      \relative c'{
        e8 e dis16 cis gis8  e'8 e dis16 cis gis8 |  
        b16 d e8 cis a a' cis fis4~ | fis8 fis dis e cis dis b4 |
      }
    %}
    e'1 cis'1 b1 gis1 \bar "."
    e'2. e'16 fis' b'8 gis'2 a' fis'1 gis'1 \bar "||"
}
HrmII = { \HrmB \HrmB }
ClII = {
    s1 s1 s1 s1 \bar "."
    s1 s1 s1 s1 \bar "||"
}


HrmMain = {
  \HrmI
  \HrmII
}
<<
  \new ChordNames{\transpose bes c{
    \HrmMain
  }}
  \new Staff{
    \clef treble 
    \time 4/4
    \key cis \minor
    \set Staff.instrumentName = "Clarinet"
    \ClI
    \break
    \ClII
  }
>>
