\version "2.16.2"


\header {
  title = "Петь тебе"
  composer = "гр. Перьи Отметины"
  subtitle = "2015 г."
}

HRiff = \chordmode {b2:m d g e:m }
Riff = {
  \repeat volta 2{
    \mark "Riff"
    \relative c''{b16 a b8~b8 cis8 d2 | b16 a b8~b8 d, e d e4 |}
  }
}

HMain = \chordmode {d2 a e:m g}
Main = {\mark "Verse" s1 | s \bar "||" }

<<
  \new ChordNames{
    \HRiff 
    \HMain
  }
  \new Staff{
    \set Staff.instrumentName = "Flute, Oboe"
    \time 4/4
    \clef treble
    \key d \major
    \Riff
    \Main
  }
>>
