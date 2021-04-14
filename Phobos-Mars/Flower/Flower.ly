\version "2.18.2"

\header{
  title="Цветок"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


rI = \relative c'{ f4. d8~d2 | a'8 b8 r2. | }

Solo = {
  \tag #'Harmony {\chordmode{
    g1 g1 g1 c1
    c1 d c g
  }}
  \tag #'Trumpet {
    \mark "Solo"
     \relative c''{ r4 d8 b a g fis g | d1 | r4 d'8 b a g fis g | c4. e,8~e2 | }
     \relative c''{r4 d8 c b c b c | d2. a4 | c2. g4 | b1 \bar "|." }
  }
}


Music = {
  \Solo \break
}

<<
  \new ChordNames{\transpose bes bes {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes bes {
      \key g \major
      \keepWithTag #'Trumpet \Music
    }
  }
>>



