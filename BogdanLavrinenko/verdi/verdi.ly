\version "2.18.2"

\header {
  title = "Марш"
  subtitle="переложение для гр. День Радости :))"
  composer = "Дж. Верди"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HA = \chordmode {as2. es4:7 | as1 | es2:7 as2 | es2:7 as4 es4:7 |}
Hrm = \chordmode {\transpose as g {
  s2. es4:7 |
  \HA as4 es:7 c:m f:m | bes2 es:7 |
  \HA as4 es:7 as es:7 | as1 |
  
  es2 as2:m | es2 as2:m | es1 |
}}

ThA = \relative c'' { 
  as2. \tuplet 3/2 {bes8 es, bes'} | 
  c4 c c \tuplet 3/2 {c8 des as} | 
  c4. bes8 as4 r4 | 
}
ThB = \relative c''{
  bes8 c c8. bes16 as8 r bes8. c16 | 
  c4 bes8. c16 c4 
}
hornA = \relative c''{ \tuplet 3/2 {as8 es as} | bes8. }

ThW = \transpose as g{
  \key as \major
  \relative c' {r2. es4 | } \ThA
  \ThB \relative c''{ as8. bes16 | bes2. es,4 |} \break
  \ThA
  \ThB \relative c''{\tuplet 3/2 {bes8 c bes} | as2.}
  {
    \hornA \relative c'{ es16 es2}
    \hornA \relative c'{ es16 es2}
    \hornA \relative c''{ es16 es2}
  }
  \bar "|."
}

PA = {
	\tag #'Harmony {\Hrm }
	\tag #'Trumpet {\transpose bes c'{
	  \ThW
	}}
	\tag #'Flute {
	  \ThW
	}
}



Music = {
	\PA 
}



<<
	\new ChordNames{ 
		\keepWithTag #'Harmony \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Flute"
		\compressFullBarRests
		\keepWithTag #'Flute \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\keepWithTag #'Trumpet \Music
	}
>>





