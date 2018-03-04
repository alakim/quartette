\include "SevenSpans_parts.ly"

\header {
	title = "Семь пядей"
	composer = "Перьи Отметины"
}

\version "2.10.33"


<<		
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B }
			\clef treble \time 4/4 \key cis \minor
			\mark \markup { \box \bold Intro }
			\ClarinetBbIntro
                        \break
                        \mark \markup { \box \bold "Solo I" }
                        \repeat volta 2 {\ClarinetBbI}
                        \break
                        \mark \markup { \box \bold "Coda" }
                        \ClarinetBbII
	}
>>
