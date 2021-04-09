\version "2.18.2"

\header{
  title="Живая вода"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Verse = {
  \tag #'Harmony {\chordmode{
    e1:m c1 g1 d1
    e1:m c1 g1 d1
    b1:m e:m b1:m e:m  
    c1 g1 d1 e1:m
    c1 g1 d1 c1 
  }}
  \tag #'Flute {
    \mark "Verse"
    <cis' fis'>1 | <a' d'>1 | <cis' a'>1 | <e' gis'>1 \longBar
    <cis' fis'>1 | <a' d'>1 | <cis' a'>1 | <e' gis'>1 \longBar \break
    e'1 | cis'1 | e'1 | cis'1 \longBar
    <d' a'>1 | a'1 | <e' gis'>1 | fis'1 \longBar
    d'1 | a1 | <e' gis'>1 | <d' a'>1 |
    \bar "||"
  }
}

HRiff = \chordmode{
  e1:m c1 g1 d1 
}

Riff = {
  \tag #'Harmony {\HRiff}
  \tag #'Guitar {
    %\relative c'{b16 d e8 g4  c,8 d g4 |} 
    %\relative c'{g8 b g'4 fis16 g fis e d4 |}
    \relative c'{e4 e' g2 | c,2 g' |g,2 g'}
    \relative c''{fis8 g fis e d4 d }
    \bar ":|."
  }
  \tag #'Flute {
    \mark "Intro"
    r1 | r1 | r1 | r1 |
  }
}




Intro = {
  \Riff \break
}

Music = {
  \Verse \break
}

<<
  \new ChordNames{\transpose bes c{
    \keepWithTag #'Harmony \Intro
  }}
  \new Staff{
    \set Staff.instrumentName="Guitar"
    \time 4/4
    \clef treble
    \transpose bes c{
        \key g \major
        \keepWithTag #'Guitar \Intro
    }
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \transpose bes c{
        \key g \major
        \keepWithTag #'Flute \Intro
    }
  }
>>

<<
  \new ChordNames{\transpose bes c{
    \keepWithTag #'Harmony \Music
  }}

  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Flute \Music
  }
>>


\markup "Форма: Intro V S V S V Coda"
