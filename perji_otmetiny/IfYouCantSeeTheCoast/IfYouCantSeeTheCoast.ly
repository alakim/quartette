\version "2.12.2"

\header{
  title="Если берега не видно"
  composer="Traditional/Перьи Отметины"
}

Harmony = \chordmode{
  \partial 4 {a4:m|}
  d4:m a:m d2:m | f4 c d2:m |
  a2:m d:m | a2:m d:m |
}

Tune = \relative c'{
  \partial 4 {a8 c |}
  d8. d16 e d c8 d d f g | a8. a16 e d c8  d d d16 d8. |
  \repeat volta 2 {
    c'8. c16  a8 a16 f~ f8 a c d | a8. g16 f8 e16 d~ d8 d d16 d8. |
  }
}

<<
  \new ChordNames{
    \Harmony
  }
  \new Staff{
    \clef treble \time 4/4 \key d \minor
    \Tune
  }
>>

<<
  \new ChordNames{\transpose bes c'{
    \Harmony
  }}
  \new Staff{\transpose bes c' {
	\set Staff.instrumentName = "Clarinet B"
    \clef treble \time 4/4 \key d \minor
    \Tune
  }}
>>

<<
  \new ChordNames{\transpose es c{
    \Harmony
  }}
  \new Staff{\transpose es c {
	\set Staff.instrumentName = "Clarinet Es"
    \clef treble \time 4/4 \key d \minor
    \Tune
  }}
>>
