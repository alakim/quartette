\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header{
	title="Паровозики"
	subtitle="Clarinet"
	subsubtitle=\date
}

#(set-global-staff-size 21)

\paper {
  #(set-paper-size "letter")
  %line-width = 2\mm
  bottom-margin = 20\mm
}

lnWidth = #2

HrmI = \chordmode{e1:m | e:m | b:m | b:m |}
HrmII = \chordmode{g1| g | d | d |}
HarmonyI = \chordmode{
  r1 | r1 |
  \HrmI
  \HrmI
  
  \HrmII
  \HrmI
  
  \HrmII
  \HrmI  
}

PartI = \relative c''{
  \once \override Score.SpacingSpanner #'spacing-increment = #3.5
  r1 |
  \newSpacingSection 
  r2 e8 b a g | e2 b8 a g fis | g2 r4 e'4 | d2. b4 | fis2 r8 b8 a fis |
  b2 r8 a g fis | g2. e'4 | d2. b4 | fis4 e'8 fis a2 | b1 | g1| d2. b8 c |
  b2. a8 fis | g4_. e2 r4 | r1 | d'2. b4 | fis4 e'8 fis a2 | g1 | d1 | a2. b8 c |
  b2. a8 fis | g8 b e2. | r1 | r1 | r1 |
}

PartIIa = \relative c'{
  b8 a g fis g2 | e'8 d b a b4. g'8 |
}

PartIIb = \relative c'{
  b8 a g fis g2 | e'8 d b a b2 | fis8 a fis a b2 | r1 |
}

LyrRefr = \lyricmode{
  _4 паро..2 разве-4 |'зёт4 _2. | 'полочкам1 | _1 | 
  _4 тихо2. | _1 | 'ёлочкой1 | _1 |
}

LyricsI = \lyricmode{
  'маменьки1 | _1|
  _2. Рождес-4 | 'тво2 _2 |'свесятся1 | _1 |
  _2. нико-4 |'го2 _2 |'светятся1 | _1 |
  \LyrRefr \LyrRefr 
}


<<
  \new ChordNames{
    \set chordChanges = ##t
    \HarmonyI
  }
  \new Lyrics{
    \LyricsI
  }
  \new Staff \with {
      \override StaffSymbol #'thickness = #lnWidth
    }{
    \clef treble \time 4/4 \key e \minor
    \set Staff.instrumentName = "Clarinet B"
    \PartI
  }
>>

\markup {\bold "После соло флейты"}
\markup {"На минор"}
<<
  \new ChordNames{
    \set chordChanges = ##t
    \HrmI \HrmI
  }
  \new Staff \with {
      \override StaffSymbol #'thickness = #lnWidth
    }{
    \clef treble \time 4/4 \key e \minor
    \set Staff.instrumentName = "Clarinet B"
    \repeat volta 2 {
      \PartIIa | 
      \relative c'{fis2 b, | b r |}
      \PartIIb
    }
  }
>>
\markup {"На мажор"}
<<
  \new ChordNames{
    \set chordChanges = ##t
    \HrmII \HrmI
  }
  \new Staff \with {
      \override StaffSymbol #'thickness = #lnWidth
    }{
    \clef treble \time 4/4 \key e \minor
    \set Staff.instrumentName = "Clarinet B"
    \repeat volta 2 {
      \PartIIa | 
      \relative c'{fis2 a, | a r |}
      \PartIIb
    }
  }
>>


