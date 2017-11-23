\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))
 
\header {
  title = "God Rest Ye Merry Gentlemen"
  composer="traditional"
  subsubtitle = \date
  subtitle = "bridge"
}


BridgeHarmony = \chordmode{
  %joy
  e2:m c4 d4 |
  %t=1:48
  g2 d | b:m7 e:m |
}
Bridge = \relative c''{
  %joy
  r1 |
  %t=1:48
  e8 [\acciaccatura e d16 b ]   d [e g8]
  \acciaccatura g a8 [a16 b ] a [g e g ] |
  \acciaccatura g a8 [a16 b] e, [ e g a ]
  \acciaccatura g e8 [e16 d] b [d  \acciaccatura d e8  ] |
}

<<
  \new ChordNames{\transpose bes bes{
    \BridgeHarmony
  }}
  \new Staff{\transpose bes bes{
%     \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 2/2 \key e \minor
    \Bridge
  }}
>>

