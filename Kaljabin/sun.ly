\version "2.14.2"

\header{
  title = "Солнце не ждет"
  composer = "А.Калябин"
  subsubtitle = "for clarinet B"
}


Main = {
	\improvisationOn
	b'1 | b'1 | b'1 | b'1 \bar"||"
	\improvisationOff
}
HMain = \chordmode{
	c1 | b1:m | a1 | e1:m |
}


Intro = {\mark "Intro"
         \repeat volta 2 {
           \relative c'{e1 | e'2. d8 e | d4. b16 a b2 | a8 (b a2) g8 a | 
                   % b4. e,16 d e2 
                   b1 | c4 b a g | fis16 [g fis g] a8 g4 fis  g16 fis |
                   
           }
         }
         \alternative{
           {\relative c'' {g1 |}}
           {\relative c'' {g2 fis |}}
         }
         \bar "||"
}
HIntro = {
	s1 | \HMain
}


Voice = {
   \relative c'{\partial 4 {e8 fis |} }
   \repeat volta 2{
     \relative c''{g8 fis4 e8 e2 | r2 b'4 b | b2~b8 e,8 d4 | e2 }
     \relative c' {e4 fis | g8 fis4 e8 e2 | r2 d4 fis | e4. e4. e4 | r2. e8 fis |}
   }
}
HVoice = \chordmode{
  \partial 4{s4}
  c1 | b1:m | e1:m | e1:m |
  c1 | b1:m | e1:m | e1:m |
}


<<
  \new ChordNames{\transpose bes c'{
	%\HMain
	\HIntro
  }}
  \new Staff{
    \clef treble 
    \set Staff.instrumentName = "Cl.B"
    \transpose bes c'{
      \clef treble \key e \minor
      \time 2/2
      %\Main \break
      \Intro \break
    }
  }
>>


<<
  \new ChordNames{\transpose bes c'{
    \HVoice
  }}
  \new Staff{\transpose bes c'{
    \clef treble
    \key e \minor
    \set Staff.instrumentName = Voice
    \time 2/2
    \Voice
  }}
>>
