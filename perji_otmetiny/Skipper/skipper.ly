\version "2.16.2"

\header{
	title="Шкипер Яблоневых Ветвей"
	composer = "Перьи Отметины"
}

\include "skipper_parts.ly"


<<
	\new ChordNames{
		\Harmony
	}
	\new Staff{
		\set Staff.instrumentName = "Voice"
		\clef treble
		\Voice
	}
	\new Staff{
		\set Staff.instrumentName = "Bass"
		\clef "bass"
		\Bass
	}
>>