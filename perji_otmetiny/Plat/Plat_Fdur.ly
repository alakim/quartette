\version "2.16.2"

\header {
	title = "Плат"
	%subtitle = "партия блокфлейты"
	composer = "Перьи Отметины"
}

\include "parts.ly"

\score {
  <<
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Flute"
		\transpose c c{
			\transpose e f{\Flute}
		}
    }}
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Voice"
		\transpose e f{\Voice}
    }}
  >>  
  \layout{ }
}
