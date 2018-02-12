\header {
	title = "Eleanor Plunkett"
}

\version "2.12.2"

GuitarChords = \chordmode {
	r4 g2. | e:m | c g 
}

Melody = \relative c'' {
	\clef treble
	\time 3/4
	\key g \major
	\partial 4
	g8 a |
	% G          Em         C           G
	b4 b a8 g | g4 g a'8 g | e4 e e8 d | b4 b a8 g | 
	% Em       D             G          Em
	e4 a a8 b |  a2 g8 a   | b4 b a8 g | g4 g 
}

Accomp = \relative c''{
}

<<
	\new ChordNames { \GuitarChords } 
	\new Staff \Melody
>>

\markup {
  \general-align #Y #DOWN {
	\epsfile #X #20 #"pict1.eps"
  }
}

\markup {
  \draw-line #'(4 . 4)
  \override #'(thickness . 5)
  \draw-line #'(-3 . 0)
  
  \draw-circle #2 #0.5 ##f
  \hspace #2
  \draw-circle #2 #0 ##t
}


