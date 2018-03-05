\version "2.16.2"

\header {
  title = "Солнце"
  composer = "Л.Щербакова"
}

HI = \chordmode {a1:m7| b:7 |e:m| c |}
HIc = \chordmode {a1:m7| b:7 |e:m| e:m |}
ObIa = \relative c'{e4. fis g4 | fis4. g a4 | g4. a b4 | e,1 |}
ObI = {
  \mark Intro
  \ObIa
  \relative c''{g4. fis e4 | dis4. e fis4 | g4. fis e4 | e1 |}
  \ObIa
  \relative c''{g4. fis e4 | dis4. e fis4 | e1~ | e1 \bar "||"}
}

HVerse = {
   %s1 \bar "||"
   \chordmode {a1:m7| b:7 |e:m| e:m \bar "||"} \break
   \chordmode {a1:m7| b:7 |e:m| e:m \bar "||"} \break
   \chordmode {a1:m7| b:7 |e:m| e:7 \bar "||"} \break
   \chordmode {c1 d g e:m \bar "||"} \break
   \chordmode {c1 d g e:m \bar "||"} \break
   \chordmode {c1 d g e:m \bar "||"} \break
   \chordmode {c1 d g g \bar "||"} \break
}
Verse = {
  \mark Verse
  s1 | s1 | \relative c''{r4 g b e | fis2 e |} 
  s1 | s1 | \relative c''{e2 g4 fis | e4 b g b |}
  \relative c''{a2 c | b1 |} s1 | s1 |
  \relative c'''{r4 g fis e | d1 | g | e |} 
  \relative c''{c2 e | d1 | s | s |} 
  \relative c'''{r4 g fis e | d1 | r4 fis e d  | e2 g |} 
  \relative c''{c2 e | d1 | r2 g4 d | b4 d e8 d c b |} 
  %s1 |
}

LIntro = \lyricmode {
    _1 _1 _1 _1 
    _1 _1 _1 _1 
    _1 _1 _1 _1 
    _1 _1 _1 _1 
}
LVerse = \lyricmode { 
  %_2 "Пусть мы ме-" |
  "(ме-)няемся"2  но | небо2 оста- | ется1 | 
  _2 "Все так же" | будут2 плыть4 се- | дые2 обла- | ка1 |
  _2. И4 | снова2  дождь4 на4 | нас4 с4 небес2 | из4 туч проль-2 | ется2.
  И4 | солнце1 | будет | проходить2 свой | путь1 | дни1 | месяцы2 ве- | ка1 |  
  _2. И4 | солнце1 | будет | проходить2 свой | путь1 | дни | месяцы2 ве- | ка1 | |

}


<<
  \new ChordNames{\transpose bes c'{
    \HI \HI \HI \HIc 
    \HVerse
  }}
  \new Staff{\transpose bes c'{
    \clef treble
    \time 2/2 \key e \minor
    \set Staff.instrumentName = "Clarinet B"
    \ObI \break
    \Verse
  }}
  \new Lyrics{
    \LIntro
    \LVerse
  }
>>