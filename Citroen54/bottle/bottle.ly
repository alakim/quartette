\version "2.18.2"

\header{
  title="Бутылка"
  composer="Citroёn 54"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
  e2.:m | e2.:m | e2.:m | e2.:m | 
  a:m | a:m | a:m | a:m | 
  d | d | d | d | 
  g | g | b | b |
}
HII = \chordmode{
  e1:m | e1:m | 
  a:m | a:m |  
  d | d | 
  g | b |
}

Verse = {
  \tag #'Harmony {
      \HI 
  }
  \tag #'Trumpet {
    \mark "Куплет"
    \time 3/4
    s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. | 
    s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. | 
    \bar "||"
  }
}

Bridge = {
  \tag #'Harmony {
      \HII 
  }
  \tag #'Trumpet {
    \mark "Проигрыш"
    \time 4/4
    \relative c'{e4 g8 e8~e2 | r8 e g4 a g | e4 c8 e8~e2 | s1 |}
    \relative c'{d4 e8 d8~d2 | s1 | b'2 \tuplet 3/2{b4 a g}| b1 }
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
      \HII 
  }
  \tag #'Trumpet {
    \mark "Припев"
    \time 4/4
    \relative c''{ b8 r4 b8~b2 | r4. b8 a b a b | c8 r4 c8~c2 | s1 | s1 | s1 | s1 | s1 |}
    \bar "||"
    
  }
}


Music = {
    \Verse \break
    \Bridge \break
    \Chorus \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c'{ \Music}
  }

  \new Staff{\transpose bes c'{
    \set Staff.instrumentName="Trumpet"
    \time 3/4
    \clef treble
    \key e \minor
    \keepWithTag #'Trumpet \Music 
  }}
>>

