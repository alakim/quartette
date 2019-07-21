\version "2.18.2"

\header{
  title="Bags Groove (take 1)"
  composer="Miles Davis"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode{
  \transpose bes c{
    f1:7 | bes:7 | f:7 | f:7 |
    bes:7 | bes:7 | f:7 | d:7.9+ |
    g:m7 | c:7 | f:7 | f:7 |
  }
}


ThemeA = {
  \tag #'Harmony { s1 | \Hrm }
  \tag #'Horn {
    \mark "Theme"
      \relative c''{ r2. g4 | d'2. c8 bes | c4 bes8 g bes4 g8 f | g4. f8~f2~ | f2. g4 \longBar }
      \relative c''{ d2. c8 bes | c4 bes8 g bes4 g8 f | g4. f8~f2~| f2. g4 \longBar }
      \relative c''{ d2. c8 bes | c4 bes8 g bes4 g8 f | g4. f8~f2~| f2. g4  \bar "||" }
  }
}
ThemeB = {
  \tag #'Harmony { \Hrm }
  \tag #'Horn {
    \mark "Theme"
      \relative c''{ bes2. a8 g | a4 g8 f g4 f8 d | f4. d8~d2~ | d2. g4 \longBar }
      \relative c''{ bes2. a8 g | a4 g8 f g4 f8 d | f4. d8~d2~ | d2. g4 \longBar }
      \relative c''{ bes2. a8 g | a4 g8 f g4 f8 d | f4. d8~d2~ | d2 r8 f8 g bes \bar "||" }
  }
}

SoloI = { % t=00:41:31
  \tag #'Harmony {\Hrm}
  \tag #'Horn {
    \mark "Solo"
    \relative c''{ c2 c8 cis c bes | g8 g4. r2 | r2 c8 b4. | r8. g16 f2 r4 \longBar  }
    \relative c'{ r4. f8 g a bes cis |  c4 c \tuplet 3/2 {c4 bes g} |  bes2 c8 bes4. |  r1 \longBar } 
    \relative c'{ %{ t=53.83 %} r4. f8 g a bes cis | c8 bes g8 f g4 c8 bes8~ |bes8 g8  d4 fis8 f4. |  r2 d8 e g f8~  \bar "||"  }
  }
}
SoloII = { % t=01:01:27
  \tag #'Harmony {\Hrm}
  \tag #'Horn {
    \mark "Solo"
    \relative c'{ f4.. e'16 d4 bes8 g | f2 s | s1 | s1  \longBar}
    \relative c'{ s1 | s1 | s1 | s1  \longBar }
    \relative c'{ s1 | s1 | s1 | s1  \bar "||" }
  }
}



Music = {
  \ThemeA \break
  \ThemeB \break
  \SoloI \break
  \SoloII \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Horn \Music
  }
>>
