 \version "2.16.2"
 
 \header {
   title="Кузнец Елизавета"
   composer = "гр. День Радости"
 }
 
 HSolo = \chordmode {
   as1 | c1:m |
   des | f2:m bes |
 }
 FlSolo = {
   \repeat volta 2{
     \relative c''{ 
       \mark Solo
       as2~as8 g16 as c8. bes32 as | g2~g8 g8 as bes | 
       bes4 f des'4. as8 | c2 bes |
     }
   }
 }
 
 
 <<
   \new ChordNames{
     \HSolo
   }
   \new Staff{
     \set Staff.instrumentName = "Flute"
     \clef treble
     \time 4/4
     \key es \major
     \FlSolo
   }
 >>