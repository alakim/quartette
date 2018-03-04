\version "2.16.2"

\header {
  title="Полынь"
  composer = "Перьи Отметины"
}

HI = \chordmode {
  e2:m | c | g | d |
}
GuitarI = {
  <<{\mark \markup{\circle 1}
    \relative c''{g8^V fis e\prall d | e8^VII c16 d e8 c | b8^II g16 a b8 d | fis16^V e d c d e fis a |}
    }\\{
      e4. b,8 | c2 | g,4. b,8 | d2 \bar "||"
  }>>
}

GuitarII = {
  <<{\mark \markup{\circle 2}
     \relative c'{e16 d b d e8 g | e2 | r8 g,8 d' g | fis2 | r2\fermata \bar "||" }
    }\\{
      g2 | r8 c8 e g, | b,2| r8 a, fis d | e2 |
  }>>
}

<<
  \new ChordNames{
      \HI
      \HI \chordmode{e2:m}
  }
  \new Staff{
    \set Staff.instrumentName = "Guitar"
    \clef "treble_8"
    \key e \minor
    \time 2/4
    \GuitarI
    \GuitarII
  }
>>