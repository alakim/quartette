\header{
  title = "На родной земле"
  composer = "Л.Щербакова"
}

Harmony = \chordmode {b2:m g | d2 a }
SoloI = \relative c''{b4 fis g8 a b4 | a4 g8 fis e4 d8 e | fis4 b2. | a4 g8 fis e4 r |}
SoloIa = \relative c''{b4. fis8 g8 a b4 | a4 g8 fis e4 d8 e | fis4 b4 d8 cis b a | a4 g8 fis e2|}
SoloIb = \relative c''{r4 b8 d cis b a b | a4 g8 fis e4 d8 e | fis4 b2. | a8 g fis4 e2 |}







<<
  \new ChordNames{
    \Harmony \Harmony
    \Harmony \Harmony
    \Harmony \Harmony
    \Harmony \Harmony
  }
  \new Staff{
    \clef treble \time 4/4 \key b \minor
    \SoloI \break \SoloI \break
    \SoloIa \break
    \SoloIb \break
  }
>>
