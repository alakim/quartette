\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))
 
\header {
  title = "God Rest Ye Merry Gentlemen"
  composer="traditional"
  subtitle = \date
}

Harmony = \chordmode{\transpose g e{
  \partial 4 {r4 |}
  g1:m | g:m |
  es | d | g:m|
  g:m| es | d2. r4 |
  c1:m | bes | 
  g:m | f2 r2 | bes1 |
  d1 | g:m | f2 r2 |
  bes1 | d | g:m | g:m |
}}

Tune = \transpose g e{\relative c'{
  \clef treble \time 2/2 \key g \minor
  \partial 4{f4 \mark \markup{Tune}|}
  g4 d' d c | bes a g f |
  g a bes c | d2. f,4 | g d' d c |
  bes a g f | g a bes c | d2. d4 |
  es c d es | f g d c |
  bes g a bes | c2 bes4 c | d2 es4 d |
  d c bes a | g2 bes8 a g4 | c2 bes4 c |
  d es f g | d c bes a | g1 | r1 \bar "|."
}}

TuneVIIa = \relative c'{
  \partial 4{d4|}
  e4 g g fis | e d b a | b4 d e g | g2. 
}

TuneVIIb = \relative c''{
  \partial 4{g4|}
  a4 e g a | b a g fis |
  e4 b d e | 
  d2 e4 fis |g2 fis4 g | fis4 d e d | b2 e8 d b4 |
  d2 e4 fis |g4 a b g | fis4 d e d | b1 | r |
  
}


Intro = \relative c'''{
  g4\mark \markup{Intro} g fis4 g8 fis | e4 fis e8 d b4 |
  a4 a d d8 b | 
  %b8 a g4~g2 | b1~|b~ |
  a8 g d4~d2 | e1~ | e1 |
}

IntroHarmony = \chordmode{
  e2:m b:m | a1:m | a2:m d:m | bes1 | e1:m |
  
}

<<
  \new ChordNames{\transpose bes c'{
    \IntroHarmony
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 2/2 \key e \minor
    \Intro
  }}
>>


<<
  \new ChordNames{\transpose bes c'{
    \set chordChanges = ##t
    \Harmony
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Clarinet B"
      
    <<{
      \Tune
      }\\
      {
       \TuneVIIa \TuneVIIa
       \TuneVIIb
       s1 |s1 |s1 |s1 |
       s1 |s1 |s1 |s1 |
    }>>
  }}

>>

\markup{
  \column{
    \line{God rest ye merry, gentlemen}
    \line{let nothing you dismay}
    \line{Remember Christ our Savior}
    \line{was born on Christmas Day}
    \line{To save us all from Satan's pow'r}
    \line{when we were gone a-stray}
    \line{" "}
    \line{O tidings of comfort and joy,}
    \line{comfort and joy!}
    \line{O tidings of comfort and joy }
  }
  \column{\line{"   "}}
  \column{
    \line{1 1 6 5M}
    \line{1 1 6 5M}
    \line{4 3 1 7}
    \line{3 5 1 7}
    \line{3 5 1 1}
  }
}