\version "2.18.2"

\header{
  title="Лето Господне"
  composer="Д. Студеный"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


rI = \relative c'{ f4. d8~d2 | a'8 b8 r2. | }

Verse = {
  \tag #'Harmony {\chordmode{
    d1:m g 
    d1:m g 
    d1:m g 
    c1 c
    g1 g
    
    bes1 bes
    g g
    c c
    g g
  }}
  \tag #'Trumpet {
    \mark "Verse"
    \rI \rI \rI 
    \relative c''{r2. e4 | e1 | d1 | r1 |}
    \relative c'{ r1^"все повторится" | r1 | r4 f4 d8 f g4 | a4 g f d | }
    \relative c' {e4 r2. | r1 | r2. g8 e | d8 e r2. | }
  }
}

hI = \chordmode{d1:m f g a:m}
Chorus = {
  \tag #'Harmony {
      \hI \hI
  }
  \tag #'Trumpet {
    \mark "Chorus"
    \relative c' { r1^"Лето..." | r4 f d8 f g4 | a4 r2. | r2 r8 a8 g f \longBar }
    \relative c' {d4 r2. | s1^"simile" | s1 | s1 \bar "||"}
  }
}
  


Music = {
  \Verse \break
  \Chorus \break
}

<<
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes c' {
      \key c \major
      \keepWithTag #'Trumpet \Music
    }
  }
>>



