\version "2.18.2"

\header{
  title="Не унывай"
  composer="Северный Крест"
  subtitle="Шагающий бас для блюзовой части"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \chordmode{
	e1:m e1:m c b
}

<<
  \new ChordNames{
    \Hrm
  }
  \new Staff{
    \time 4/4
    \clef treble
    \key e \minor
    <e' g' b'>4. <e' g' b'>8~<e' g' b'>2 | 
    <e' g' b'>4. <e' g' b'>8~<e' g' b'>2 | 
    <e' g' c''>4. <e' g' c''>8~<e' g' c''>2 | 
    <dis' fis' b'>4. <dis' fis' b'>8~<dis' fis' b'>2 
    \bar ":|."
  }
  \new Staff{
    \time 4/4
    \clef bass
    \key e \minor
    \relative c{e4 g fis f | e4 dis d cis | c4 e d c | b cis dis fis \bar":|."}
  }
>>

