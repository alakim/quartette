\version "2.18.2"

\header{
  title="Звезда"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HIn = \chordmode{es2 d g2:m d}

Intro = {
  \tag #'Harmony {\chordmode{
    s1 s1 s1
    \HIn \HIn 
    \HIn \HIn 
  }}
  \tag #'Violin {
    \mark "Intro"
    \relative c''{s2. r16 bes16 a g | d4 d r8 g a fis | g1\fermata |}
    \relative c''{es4 d8 c bes4 bes | d4 g, bes bes | es4 d8 c bes4 bes | d1 | }
    \relative c''{es4 d8 c bes4 bes | d4 g, bes bes | es4 d8 c bes4 bes | g1 | }
  }
  \tag #'Trumpet {
    \relative c''{s2. r16 bes16 a g | d4 d r8 g a fis | g1\fermata |}
    % \relative c''{es4 d8 a bes4 c | d4 g, bes bes | es4 d8 c bes4 bes | d1 | }
    %\relative c''{es4 d8 c bes4 bes | d4 g, bes bes | es4 d8 c bes4 bes | g1 | }
    \transpose c bes {
       \relative c'{c4 b8 g e4 gis | a4 c4 b gis | a4 g8 f e4 d | e1 |}
       \relative c{f4. e8 gis4 b8 d | c4. a8 e4 gis8 b | a4 g8 f e4 gis | a2 r |}
    }
  }
}





Music = {
    \Intro \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony  \Music
  }

  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Violin \Music 
  }
  \new ChordNames{
      \keepWithTag #'Harmony  \transpose bes c{\Music}
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \transpose bes c'{
      \key g \minor
      \keepWithTag #'Trumpet \Music 
    }
  }
>>

