\version "2.16.2"

\header {
	title = "Плат"
	subtitle = "партия флейты в переложении для кларнета Bb"
	composer = "Перьи Отметины"
}

\include "parts.ly"

\score {
  <<
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Flute"
		\Flute
    }}
    \new Staff{
      \clef treble
      \set Staff.instrumentName = "Clarinet B"
      \Clarinet
    }
    %{  \new Staff {\transpose bes c{
		\clef treble
		\set Staff.instrumentName = "Clarinet B"
		\Flute
    }} %}
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Voice"
		\Voice
    }}
  >>  
  \layout{ }
  % \midi { }
}
