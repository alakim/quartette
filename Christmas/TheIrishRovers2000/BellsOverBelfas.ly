\version "2.16.2"

\header {
  title = "Bells Over Belfast"
  composer = "The Irish Rovers"
}

HIntro = \chordmode {
  g2 c d g
  g c d g
  g g g
}
Intro = {
  \mark Intro
  \relative c''{d4 g | e c | a d | b g |}
  \relative c''{d4 g | e c | a d | g,2 |}
  {\improvisationOn b'2 b' b'  \improvisationOff \bar "||"}
  
}


HVerse = \chordmode {
  g4 d c g c d:7 g2
  g2 d4 e:m c2 d:7
  g2 d c d
  g4 d c d
  c4 d g2 
}

Verse = {
  \mark Verse
  \relative c''{g8_voice b a b16 a | g8 e d8 b16 d | e8 g g fis | g4. g8 |}
  \relative c''{b8. a16 g8 b | d8 fis, g8 d' | c8 b a g | a4. b8|}
  \relative c''{b8. a16 g8 b | d4 g,8. d'16 |c8. b16 a g8. | a2 |}
  \relative c''{b8 g a fis | g4 d | e8 g g fis | g2 \bar "||"}
}

FluteVerse = {
  \relative c'''{g4^flute fis8 d | e8 fis16 e d8 b | c8 d c a | g4. d'8 |}
  \relative c'''{g8. e16 d8 g | a4 g8 e | e8 d16 c e8 g | d2 |}
  \relative c'''{g8. e16 d8 g | a4 d, | g8 c16 b a g a8 | d2 |}
  \relative c'''{g8. g16 fis8 d | e8 g16 e d8 b | }
  \relative c''{c8 a16 g c8 d | g,2 |}
}

HChorus = \chordmode {
  g2 c d g
  g2 c d g
}
Chorus = {
  \mark Chorus
  \relative c''{<g b>4 <d g>8 <fis a> | <g b>8 <e a>4 <e a>8 |}
  \relative c'{<fis a>8. <d fis>16 <e g>8 <fis a> | <g b>2 | }
  \relative c''{<g b>8 <g b> <d g> <e b'> | <a c>4 <e a> | <fis a>8 <fis a> <e a> fis | g2 \bar "||"}
}

HBreak = \chordmode {
  c2 d4 d:7
  c4 d g2
}
Break = {
  \mark Break
  \relative c''{c8. b16 a8 g | fis16 g a fis d8 d | e8 g g fis | g2 \bar "||"}
}

ClChorusI = {
  \relative c''{e4 cis8 e16 fis8. d4 cis8 | b8. gis16 b8 d e2 | e8d cis e fis4 d | b8 gis a b a2 \bar "||"}
}
ClChorusII = {
  \relative c''{cis4 a8 cis16 d8. b4 a8 | gis8. e16 gis8 b cis2 | cis8 b a cis d4 b | gis8 e fis gis a2 |}
}


<<
  \new ChordNames{
    \HIntro
    \HVerse
    \HChorus
    \HBreak
  }
  \new Staff{
    \time 2/4
    \clef treble
    \key g \major
    \Intro \break
    <<{\FluteVerse}\\{\Verse}>>
    % \Verse \break
    \Chorus \break
    \Break
  }
>>

\markup "Chorus"
\new Staff{
  \set Staff.instrumentName = "Clarinet B"
  \clef treble
  \time 4/4
  \key a \major
  <<{\ClChorusI}\\{\ClChorusII}>>
}