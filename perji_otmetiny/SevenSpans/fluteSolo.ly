\version "2.14.2"

\header {
	title = "Семь пядей"
	composer = "Перьи Отметины"
	subtitle = "Introduction"
}

FluteI = {
	 \key d \major \time 4/4
	 \relative c'''{r4 a4 a8 g fis e~| e2 r8 b cis4 | d2 r8 cis b a | b2 d |}
	 \relative c'''{r4 a4 a8 g fis e~| e4 cis'4 cis8 b a4 | e'2 fis,8 g fis a | b a g fis a2 |}
	 \relative c''{b8 cis b a fis2 |}
	 \relative c'''{b8 a g fis a2 |}
	 \relative c''{cis1~ | cis2 e4 cis | b1 |}
}

\score {
  <<
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Flute"
		\FluteI
    }}
    \new Staff {\transpose bes c{
		\clef treble
		\set Staff.instrumentName = "Clarinet Bb"
		\FluteI
    }}
    \new Staff {\transpose f c{
		\clef treble
		\set Staff.instrumentName = "Recorder in F"
		\FluteI
    }}
  >>  
  \layout{ }
  % \midi { }
}
