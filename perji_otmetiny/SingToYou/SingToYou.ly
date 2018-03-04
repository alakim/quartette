
\header {
	title = "Петь тебе"
	composer = "Перьи Отметины"
}

\version "2.10.33"

SoloIChords = \chordmode{e2 b fis:m a }
SoloI = \relative c''{
  r4 gis8 a | b8 a gis cis, | fis2 | r2 |
}

<<
  \new ChordNames{
    \SoloIChords \SoloIChords
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \clef treble \time 2/4 \key e \major
    \mark \markup{"Intro solo"}
    \SoloI \SoloI \bar "|."
  }
>>


MainRiffAChords = \chordmode{
  \partial 4{e4}
  b2 fis:m a e
}
MainRiffA = \relative c''{
    \partial 4{gis16 a gis e|}
    \mark \markup{"Main Riff A"}
    \repeat volta 2{
      fis4 fis16 gis fis e |
      cis4 cis16 e cis b | a4 cis16 b cis dis | 
      e4 gis16 a gis e |
    }
}

MainRiffBChords = \chordmode{
  cis2:m
  e2 a fis:m cis:m
}
MainRiffB = \relative c''{
    {r4 gis16 a gis e|}
    \mark \markup{"Main Riff B"}
    \repeat volta 2{
      b'4 fis16 gis fis e |
      cis4 r | r4 cis16 b cis dis | 
      e4 gis16 a gis e |
    }
}


<<
  \new ChordNames{
    \MainRiffAChords
    \MainRiffBChords
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \clef treble \time 2/4 \key e \major
    \MainRiffA \break
    \MainRiffB
  }
>>


ClarinetToVoice = \relative c'{
  r2 a8^"чаще настоящего" fis e d | e8 fis~fis2. \bar "||"
}

ClarinetCoda = \relative c'{
  d8^"E" e fis g fis4. e8 | fis1 \bar "||"
}

<<
		
	\new Staff{
		\set Staff.instrumentName = \markup {Clarinet}
                \transpose bes c' {
                  \clef treble \time 4/4 \key b \minor
                  \mark \markup { \box \bold "На вокал" }
                  \ClarinetToVoice
                  \break
                  \mark \markup { \box \bold "Coda" }
                  \ClarinetCoda
                  
                }
        
	}
                
        

>>


