\version "2.16.2"

\header {
	title = "Плат"
	composer = "гр. Перьи Отметины"
}

\include "parts.ly"

<<
	\new ChordNames{
		\HVerse
	}
	\new Staff {
		\clef treble
		\set Staff.instrumentName = "Voice"
		\time 4/4 \key e \major
		\VVerse
	}
	\new Lyrics{
		\LVerse
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Clarinet"
		\time 4/4 \key e \major
		\ClVerse
	}
>>  

<<
\new Staff{
	\clef treble
	\time 4/4 \key e \major
	\RiffCoda
}
>>
