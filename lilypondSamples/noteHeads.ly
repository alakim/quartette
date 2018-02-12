\header {
	title = "Note Heads sample"
}

\version "2.12.2"

% see chapter 1.1.4 Note Heads
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Note-heads
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Note-head-styles#Note-head-styles

Melody = \relative c'' {
	\clef treble
	\time 4/4
	\key g \major
	
	g4 a b a
	\override NoteHead #'style = #'cross
	b a b fis
	\revert NoteHead #'style 
	g a b c
	\override NoteHead #'style = #'harmonic
	b a b fis
	\override NoteHead #'style = #'diamond
	b a b fis
	\override NoteHead #'style = #'xcircle
	b a b fis
	\override NoteHead #'style = #'triangle
	b a b fis
	\override NoteHead #'style = #'slash
	b a b fis
	\revert NoteHead #'style 
	g a b c
}



<<
	\new Staff \Melody
>>

