\version "2.14.2"

\header {
	title = "Про них"
	composer = "Перьи Отметины"
}

Theme_vI = {
	\relative c''{r4 g8 a b4 g |}
	\repeat volta 2{
		\relative c''{c8 d c b a4 g8 b | b4 g8 a b4 g |}
	}
}
Theme_vII = {
	\relative c'{r4 e8 fis g4 e |}
	\repeat volta 2{
		\relative c''{a8 b a g fis e d fis | e4 e8 fis g4 e |}
	}
}

MainTheme = {
	\key e \minor \time 4/4
	<<{\Theme_vI}\\{\Theme_vII}>>
}

\score {
  <<
    \new Staff {\transpose c' c'{
		\clef treble
		\set Staff.instrumentName = "Clarinet Bb"
		\MainTheme
    }}
  >>  
  \layout{ }
  % \midi { }
}
