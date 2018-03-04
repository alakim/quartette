\version "2.16.2"

\header {
  title="Про них"
  composer = "гр. Перьи Отметины"
  subtitle = "Oboe solo"
}

HSolo = \chordmode {
  d2:m bes | c2 a:m |
}

Solo = \relative c'{
  f2 f8 e d a' | g4. f16 g e2 |
  d1 | e1 |
  f2~f4. g16 f | e4 c'2 a4 |
  f8 e f g f e d a' | g2. a4 | 
}

<<
  \new ChordNames{
    \HSolo \HSolo 
    \HSolo \HSolo 
  }
  \new Staff{
    \set Staff.instrumentName = "Oboe"
    \time 4/4
    \clef treble
    \key d \minor
    \Solo \bar "|."
  }
>>