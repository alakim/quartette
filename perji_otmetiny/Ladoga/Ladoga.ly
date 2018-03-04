\version "2.12.2"

\header {
  title = "Ладога"
  composer = "Перьи Отметины"
}

Tenor = \relative c''{
  \partial 4{ d4 |}
  d2 d4 | d2 d4 | d2 d4 |
  c2 c4 | bes2. | a2. | g2. | r2. |
  r2 d'4 | d2 c4 | c4 es d | c2 bes4 | a2 a4 | bes2. | a2. | g2. | r2. \bar "|."
}
Lead = \relative c''{
  \partial 4 {bes4 |}
  bes2 bes4 | bes2 bes4 | bes2 bes4 | 
  a2 a4 | g2. | f2. | es2. | r2. |
  r2 bes'4 | bes2 bes4 | bes2 bes4 | bes2 bes4 | a2 a4 | g2. | f2. | es2. | r2. |
}
Baritone = \relative c{
  \partial 4 {f4 | }
  f2 f4 |f2 f4 |f2 f4 |
  f2 f4 | g2. | f2. | es2. | r2. |
  r2 f4 | f2 f4 | f2 f4 | f2 f4 | f2 f4 | g2. | f2. | es2. | r2. |
}
Bass = \relative c{
  \partial 4 {bes4 |}
  bes2 bes4 | bes2 bes4 | bes2 bes4 | 
  bes2 bes4 | c2. | d2. | es2. | r2. |
  r2 bes4 | bes2 bes4 | bes2 bes4 | bes2 bes4 | bes2 bes4 | c2. | d2. | es2. | r2. |
}

Cl = {
  \relative c{fis2. | fis | <b fis>2. | <gis fis>2. | cis | dis | b2. |}
}

<<
\new StaffGroup <<
  \new Staff{\transpose bes a{
    \clef treble \time 3/4 \key bes \major
    <<{\Tenor}\\{\Lead}>>
  }}
  \new Staff{\transpose bes a{
    \clef bass \time 3/4 \key bes \major
    <<{\Baritone}\\{\Bass}>>
  }}
>>
  \new ChordNames {\chordmode{
    s4
    b2. b b b cis:m dis:m e s
    s
    b2. b b b cis:m dis:m e fis    
  }}
  \new Staff{
    \clef treble \time 3/4 \key b \major
    \set Staff.instrumentName="Clarinet B"
    \partial 4{r4}
    \Cl r2.
    r2. \Cl | cis'2.
  }
>>
