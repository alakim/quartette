\version "2.12.2"


\header{
  title = "Duo"
}

HarmonyI = \chordmode{
  d2 a:7 | d a:7 | d g4 a | d g8 a d2 |
}

FluteI = \relative c''{
  fis8 e16 d e8 fis d cis16 b a8 g | fis8 e16 d a'8 d cis a e' g, | fis8 d' a fis' g d16 b a8 cis | d cis16 d b8 cis d2 |
}

ClarinetI = \relative c'{
  d8 cis a16 b cis d e8 cis g' e | d8 a' fis4 e cis | a4 d16 cis d e b8 e4 g8 | fis4 g8 a d,2 |
}

\score{
  <<
    \new ChordNames{
      \set chordChanges = ##t
      \HarmonyI
    }
    \new Staff{
      \set Staff.instrumentName = "Flute"
      \set Staff.midiInstrument = #"flute"
      \clef treble \time 4/4 \key d \major
      \FluteI
    }
    \new Staff{
      \set Staff.instrumentName = "Clarinet"
      \set Staff.midiInstrument = #"clarinet"
      \clef treble \time 4/4 \key d \major
      \ClarinetI
    }
  >>
  
  \layout{}
  
%   \midi {
%       \context {
%           \Score
%           tempoWholesPerMinute = #(ly:make-moment 90 4)
%       }
%   }
}
