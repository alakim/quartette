\include "SilentNight_parts.ly"

\header {
	title = "Silent Night"
	composer = "Traditional"
}

\version "2.10.33"

<<
	\new ChordNames { \ChordsA} 

	\new Staff {
		\set Staff.instrumentName = \markup { Flute }
		\clef treble \time 6/8 \key bes \major
		\FluteA 
	}
	
	\new Staff {
		\set Staff.instrumentName = \markup { Clarinet B }
          \transpose c c {
			\clef treble \time 6/8 \key bes \major
			\ClarinetA
		}
	}
	
	
	\new Staff <<
		\set Staff.instrumentName = \markup {Woodwinds}
		\clef treble \time 6/8 \key bes \major
		
		\new Voice {\voiceOne \FluteA}
		\new Voice {\voiceTwo \ClarinetA}
			
	>>
	
	\new Staff {
		\set Staff.instrumentName = \markup {Bass}
		\clef bass \time 6/8 \key bes \major
		\BassA 
	}
	
>>
