\version "2.18.2"

\header {
  title="Время вперед"
  composer = "Г. Свиридов"
}

TrpI = {
    \time 4/4
    \key as \major
    \relative c''{
      es1 | es,4 f as c8. es16 | f2.. r8 | f,4 g as c8. es16 | as1 | f2 g4. es8~ | es1~ | es2~es8 r r4 |
    }
    \relative c''{
      c1 | c,4 es g c8. es16 | g1 | es,4 g c es8. g16 | c1 | f,2 g4. es8~| es1~ |es4 r r2 |
    }
}


<<
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \TrpI
  }
>>