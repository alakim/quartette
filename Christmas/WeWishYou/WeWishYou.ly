\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))
 
\header {
  title = "We Wish You a Merry Christmas"
  composer="traditional English"
  subtitle = \date
}

Harmony = \chordmode{
  \partial 4 {r4 |}
  g2. | c | a | d |
  b | e2:m g4 | c2 d4 | g2 d4 | g2. | 
  b | e2:m a4 | d2. | g | d | c2 d4 | g2. |
}

Tune = \relative c'{
  \clef treble \time 3/4 \key g \major
  \partial 4{d4 |}
  \repeat volta 2{
    g4 g8 a g fis | e4 e e | a4 a8 b a g | fis4 d d |
    b'4 b8 c b a | g4 e d8 d | e4 a fis | g4 r d |
  }
  g4 g g |
  fis2 fis4 | g fis e | d r a' | b4 a8 a g g | d'4 d, d8 d | e4 a fis | g2 r4

  \bar "|."
}





<<
  \new ChordNames{\transpose bes c'{
    \set chordChanges = ##t
    \Harmony
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Clarinet B"
    \Tune
  }}

>>

