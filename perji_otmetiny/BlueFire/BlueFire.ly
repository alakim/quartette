\version "2.14.2"

\header{
  title="Синий огонь"
  composer="Перьи Отметины"
  subtitle = "на тему Away In A Manger"
}
Harmony = \chordmode {
  \partial 4{s4}
  f2. f2. a2.:m g2.:m
  bes2. f2. 
  g2.:m c2.
  c2. f2.
}

Tune = {
  \time 3/4 \key f \major
  \partial 4{c'4|}
  \repeat volta 2{
    \relative c'{f4 f a | f a bes | c c d | bes2 g8 a | bes4 bes c | a f a |}
  }  
  \alternative{
    \relative c''{g4 d f | e2 c4 |}
    \relative c''{g4 d e | f2. \bar"|."}
  }
}

<<
  \new ChordNames{\transpose bes c'{
    \Harmony
  }}
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble
    \transpose bes c'{
      \Tune
    }
  }
>>
