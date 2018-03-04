\include "RyazanMan_parts.ly"

\header {
	title = "Рязанщина"
	composer = "Перьи Отметины"
}

\version "2.10.33"


<<
 	\new ChordNames{
 		\ChordsA \ChordsB
 	}
		
	\new Staff{
		\set Staff.instrumentName = \markup { Flute }
			\clef treble \time 4/4 \key d \minor
			\mark \markup { \box \bold A }
			\FluteA
			\mark \markup { \box \bold B }
			\FluteB 
	}
        \new Lyrics{
            \HarmonyA \HarmonyB
        }
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet }
                \transpose bes c{
			\clef treble \time 4/4 \key d \minor
			\ClarinetA 
			\ClarinetB
                      }
	}
>>


