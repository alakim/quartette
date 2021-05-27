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

Verse = {
  \tag #'Harmony {\chordmode{
    es2 d | g2:m d | es1 | d1 
  }}
  \tag #'Voice {
    \mark "Verse x4"
    \relative c'' {bes4 bes a a | g8. g16 g8 g g4 d | es8 es es es es es f es | d1  \bar ":|."}
    
  }
  \tag #'Violin {
    \relative c'{r1 | r1 | r1 | r8 <<{es8 f es}\\{a, bes c}>> d2 |}
  }
}

Refrain = {
  \tag #'Harmony {\chordmode{
    es1 d1 g1:m s1 
  }}
  \tag #'Voice {
    \mark "Refrain"
    \relative c'' {bes1^"гори, гори" | r4. a8 a4 a | g2 r | r1 | }
    
  }
  \tag #'Violin {
    \relative c''{bes1 | a1 | g1~ | g1 |}
  }
}





Music = {
    \Verse \break
    \Refrain \break
    
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony  \Intro
  }

  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Violin \Intro 
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
      \keepWithTag #'Trumpet \Intro 
    }
  }
>>


<<
  \new ChordNames{
      \keepWithTag #'Harmony  \Music
  }
  \new Staff{
    \set Staff.instrumentName="Voice"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Voice \Music 
  }
  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key g \minor
    \keepWithTag #'Violin \Music 
  }
>>

