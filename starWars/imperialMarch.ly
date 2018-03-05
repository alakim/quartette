\version "2.16.2"

\header{
	title = "The Imperial March"
	subtitle = "Darth Vader's Theme"
	composer = "John Williams"
}

HTheme = \chordmode{
	a2.:m f4:m | a4:m f:m a2:m | 
	a2.:m f4:m | f2:m a:m | 
	a1:m | es1:m |
	f1:m | a4:m f4 a2:m | 
	
	f2 a:m | es1:m | f1:m | a4:m f:m a2:m |
}

Theme = {
	\time 4/4 \clef treble \key a \minor
	\relative c''{a4 a a f8. c'16 | a4 f8. c'16 a2 |}
	\relative c''{e4 e e f8. c16 | as4 f8. c'16 a2 |}
	\relative c'''{a4 a,8. a16 a'4 as8 g | ges16 f ges8 r8 bes, es4 d8 des |}
	\relative c''{c16 b c8 r f, as4 f8. as16 | c4 a8. c16 e2 |}
	
	\relative c'''{a4 a,8. a16 a'4 as8 g | ges16 f ges8 r bes,8 es4 d8 des |}
	\relative c''{c16 b c8 r f, as4 f8. c'16 | a4 f8. c'16 a2 \bar "|."}
}


<<
	\new ChordNames{\transpose a g{
		\HTheme
	}}
	\new Staff{\transpose a g{
		\set Staff.instrumentName = "Flute"
		\Theme
	}}
>>

\markup{in Bes}
<<
	\new ChordNames{
		\HTheme
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\Theme
	}
>>


<<
	\new ChordNames{\transpose a e{
		\HTheme
	}}
	\new Staff{
	  \set Staff.instrumentName = "Trumpet"
	  \transpose a e{
		\Theme
	  }
	}
>>

<<
	\new ChordNames{\transpose a d{
		\HTheme
	}}
	\new Staff{
	  \set Staff.instrumentName = "Trumpet"
	  \transpose a d{
		\Theme
	  }
	}
>>