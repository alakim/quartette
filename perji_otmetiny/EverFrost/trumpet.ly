\version "2.16.2"

\header {
  title="Мерзлота"
  composer = "Перьи Отметины"
  subtitle = "партия трубы"
}

HrmI = \chordmode {
  a1:m a1:m g1 a1:m
}
HrmII = \chordmode {
  f1 | d:m | d:m | e:m |
  c1 | a:m | d:m | e:m |
  c1 | a:m | d:m | e:m |
  c1 | a:m | d:m | e:m |
  f1 | g |
}

FlI = {
  \mark "Main Riff"
  \relative c''{c4. b16 c d4. c16 d | e4 a,2 c16 b a g | a4. b8~b2 | c2. r8 a16 b |}
  \relative c''{c4. b16 c d4. c16 d | e4. a16 g a4. a8 | g4. c8~ c2 | a1 \bar "||"  }
}

TrI = {
  \relative c' {c2 d | e4 a,2 r8 e'16 f | g2 b | a1 | }
  \relative c'' {a4. g16 a b4. a16 b | c4 a2. | g2 b | a1 | }
}

TrII = {
  \mark "Refrain"
  \relative c'{ f4. a  c4 | a4. f8~f2 | a4. d a4 | g1 \bar "."}
  \relative c''{ g4. e g4 | a4. g e4 | f2. e8 f | g1 \bar "."}
  \relative c''{ g4. e g4 | a4. g e4 | f2. e8 f | g1 \bar "."}
  \relative c''{ g4. e g4 | a4. e g4 |}
  \relative c''{a2. g8 a | b2. g4 \bar "." }
  \relative c''{c2. b8 c | d8 d4 d8 d2 \bar "|."}
}

<<
  \new ChordNames{
    \HrmI \HrmI
  }
  \new Staff{
    \set Staff.instrumentName = "Flute (in B)"
    \time 4/4 
    \clef treble
    \key a \minor
    \FlI
  }
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \time 4/4 
    \clef treble
    \key a \minor
    \TrI
  }
>>

<<
  \new ChordNames{
    \HrmII
  }
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \time 4/4
    \key a \minor
    \TrII
  }
>>

