\version "2.18.2"

\header {
	title="Line sample"
}

PI = {
	\relative c'{ e4 d c d | }
	
	\hideNotes
	% -\tweak minimum-length #55
	% \once \override Bar.minimum-length = #20
	r4
	-\markup { \postscript #"0 2 moveto 4 -1 rlineto 5 2 rlineto 3 -2 rlineto stroke " }
	r4 
	r4
	r16 r16 r16 r16
	\unHideNotes

	\relative c'{ e4 d c d | }
}

<<
	\new Staff{
		\clef treble
		\time 4/4
		\key e \minor
		\PI
	}
>>

