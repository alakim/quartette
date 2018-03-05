\version "2.14.2"

\header{
	title="Заря звонаря"
	composer="гр. День Радости"
}

HI = \chordmode{
  c2 g | a1:m |
}

OboeI = {
  \relative c''{c1~ | c2 b4 c | d4. e8~e2~ | e1 | }\bar "||" 
  \relative c''{c1~ | c4 b4 c e | d4 c8 b c4 d | a1  | }\bar "||" \break

  \relative c''{\mark Solo b1 | c4 b a g |} \relative c''{c2. e4 | d4 c8 b c4 a |} 
  \relative c''{g4. d' b4 | e1~| e2 d4 b4 | c1 | } \bar "||" \break
  
  \relative c''{g4. d' b4 | c1~| c2 d4 b4 | e1 | }\bar "||"
  
  
  
  \relative c''{g4. d'4. b4 | c1 |}\bar "||"
  \relative c''{g4. d' b4 | e1 |}\bar "||"
  \relative c''{c4. d b8 g | e'1 |} \bar "||"
}

<<
  \new ChordNames{
     \HI \HI
     \HI \HI
     \HI \HI
     \HI \HI
  }
  \new Staff{
    \set Staff.instrumentName = "Oboe"
    \OboeI
  }
>>