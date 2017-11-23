\include "Greensleeves_parts.ly"

\header {
	title = "What Child is This"
	composer = "Traditional"
}

\version "2.10.33"

<<
	\new ChordNames { \ChordsA \ChordsB} 

	\new Staff {
		\set Staff.instrumentName = \markup { Flute }
		\clef treble \time 3/4 \key e \minor
		\FluteA \FluteB
	}
	
	%\new Staff {
	%	\set Staff.instrumentName = \markup { Clarinet B }
    %      \transpose c c {
	%		\clef treble \time 3/4 \key e \minor
	%		\ClarinetA
	%	}
	%}
	
	\new Staff {
		\set Staff.instrumentName = \markup {Bass}
		\clef bass \time 3/4 \key e \minor
		\BassA \BassB
	}
	
>>
