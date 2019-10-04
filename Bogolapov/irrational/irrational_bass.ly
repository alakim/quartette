\version "2.18.2"

\header{
  title="Иррациональные чувства"
  composer="А.Боголапов"
  subtitle = "Партия баса"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
  \transpose bes c {e2:7 a:7 | d:7 a:7 |}
}

Bass = {
  \mark \markup "Вступление"
  \relative c {e4 gis b cis | d4 c a g \bar "||"}\break
  
  \mark \markup "Куплет"
  \relative c {
               %e4 gis b cis | d4 c a g | 
               e4. e4 e8 a4 | d4. d4 d8 e4|
               %d4. d4 d8 c4 | a4. a4 a8 cis4 |
               d,4. d4 d8 c4 | a'4. a4 a8 g4 |
               d4. d4 d8 c4 | b1 \bar "||"
  }
}

<<
  \new ChordNames{
    \transpose c bes {\HI 
                      \HI
    }
    \chordmode{   d1:7 a:7 d:7 b}
  }
  \new Staff{
      \set Staff.instrumentName="Bass"
      \time 4/4
      \clef bass
      \key a \major
      \Bass
  }
>>
