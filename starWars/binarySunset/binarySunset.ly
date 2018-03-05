\version "2.16.2"

\header {
  title = "Binary Sunset"
  composer = "John Williams"
  subtitle = "Переложение для трубы"
}

Hrm = \chordmode {
  g1:m | g1:m | 
  g1:m | g1:m | g1:m | c1 |
  g1:m | es1:m | g1:m | bes2 d:m | 
  g1:m |
}

TrpI = {
  \key g \minor
  \relative c''{
    g2 d | g2 d4. d8 |
    g2 a4. bes16 c | bes2 d,4. d8 |  g4. a8   bes8 [ d, ] 
    \tuplet 3/2 {bes'8 g d'} |
    c2~c4 <d, fis,> |
  }
  <<{
    \relative c''{
      g4. a8 bes8. g16 d'8. bes16 | g'2  g4 \tuplet 3/2 {bes,8 a g} |
      d'4. bes16 g d2 | d1 | g1 |
    }
    }\\{
      \relative c'{
        bes4. c8 g'8. g16 bes8. bes16 | es2 bes4 \tuplet 3/2 {g8 d bes} |
        % d'4. bes16 g d4 d | 
      }
  }>>
}


<<
  \new ChordNames{\transpose bes c'{
    \Hrm
  }}
  \new Staff{
    \set Staff.instrumentName = "Trumpet"
    \clef treble
    \time 4/4
    \transpose bes c'{
      \TrpI
    }
  }
>>