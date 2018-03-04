\version "2.12.2"

\header{
        title = "Ты не спи"
        composer = "Перьи отметины"
        subsubtitle = "Clarinet"
}

HarmonyII = \chordmode{
    \partial 4{r4|}
    g4. d | e2.:m |
    g4. d | e2.:m |
    g4. d | e2.:m |
    c2. | r2. |
    b2.:m| r2. |
}

RiffI = \relative c'{e4 fis16 a b8 a b | cis4 b16 cis a8 a8 fis |}

ClarinetII = \transpose c' bes{ \relative c''{
    \partial 4 {a8 fis |}
    \RiffI \RiffI \RiffI 
    \override NoteHead #'style = #'cross
    s2. |s2. |
    s2. |s2. |
    \revert NoteHead #'style 

}}


<<
  \new ChordNames{\transpose bes c'{
      \HarmonyII
  }}
  \new Staff{\transpose bes c'{
    \clef treble \time 6/8 \key e \minor
    \set Staff.instrumentName = "Clarinet B"
    \ClarinetII
}}
>>

<<
  \new ChordNames{\transpose es c{
      \HarmonyII
  }}
  \new Staff{\transpose es c{
    \clef treble \time 6/8 \key e \minor
    \set Staff.instrumentName = "Clarinet Es"
    \ClarinetII
}}
>>