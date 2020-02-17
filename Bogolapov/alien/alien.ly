\version "2.18.2"

\header{
  title="Инопланетянин"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { 
      a1:m | e:7 | e:7 | a:m |
      a1:m | e:7 | e:7 | a:m |
      g1 | c | e:7 | a:m |
      d:m | a:m | e:7 | a:m |
  }
}

HSolo = \chordmode{
  \transpose bes c { 
      g1 | c | e:7 | a:m |
      d:m | a:m | e:7 | a:m |
  }
}



Intro = {
  \tag #'Harmony {s1 \HVerse}
  \tag #'Horn {
    \mark "Intro"
    \relative c'{s8 b cis d e d e fis |}
    \relative c'{fis1~ | fis4 fis g4. fis8 | fis4. e8~e2 | r8 d cis d e d e fis  \longBar}
    \relative c'{fis1~ | fis4 g4 a4. g8  | fis1~ | fis4 fis g a  \longBar}
    \relative c'' {a4. g16 fis g2~ | g8 a4 <g gis>8 <fis a>4 <e b'> | <g d'>4. <fis cis'>8 <fis cis'>2~ | <fis cis'>4 <fis b>4 <e a> <d fis> \longBar}
    \relative c''{ g8 fis4 e8 d4 cis | fis8 e4 d8 e4 fis | fis1 | r8 b, cis d e d e fis }
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\HSolo}
  \tag #'Horn {
    \mark "Solo"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 
    \bar "||"
  }
}



Music = {
  \Intro \break
  \Verse \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  Форма: S V s V s V S
}