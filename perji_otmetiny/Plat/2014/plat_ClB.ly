\version "2.16.2"

\header {
	title = "Плат"
	composer = "гр. Перьи Отметины"
}

\include "parts.ly"

<<
	\new ChordNames{\transpose bes c{
		\HVerse
	}}
	\new Staff {
		\clef treble
		\set Staff.instrumentName = "Voice"
		\time 4/4 \key e \major
		\VVerse
	}

	\new Lyrics{
		\LVerse
	}
	\new Staff{\transpose bes c'{
		\clef treble
		\set Staff.instrumentName = "Clarinet B"
		\time 4/4 \key e \major
		\ClVerse
	}}
>>  

<<
\new Staff{\transpose bes c'{
	\clef treble
	\time 4/4 \key e \major
	\RiffCoda
}}
>>
