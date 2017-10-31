\version "2.18.2"

\header {
  title = "Китеж"
  composer = "гр. Ventum"
}


HrmA = \chordmode {b2:m bes:m5+ | a:m as:m5+ | g:m ges:m5+ | c b:m |}

<<
  \new ChordNames{\transpose bes c{\HrmA}}
  \new Staff{\transpose bes c'{
    \clef treble 
    \time 4/4
    \key c \major
    \set Staff.instrumentName = "Clarinet"
  }}
>>
