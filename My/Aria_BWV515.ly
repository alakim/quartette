\version "2.16.2"

\header{
	title = "Aria BWV 515"
	subtitle ="J.S. Bach"
	subsubtitle = "Anna Magdalena 20a"
	composer = "arranged for Guitar by Akimov A."
}

S = {
	\repeat volta 2{
		\relative c'{d4 d d | g4. (a16 bes) a4 | g4 f8 e a4 | f4 e8 f d4 | f4 f f | a4.(bes16 c) f,4 g4 e2 | f2. | }
	}
	\repeat volta 2{
		\relative c''{g4 g g | g2 e4 | a4 g8 f e d | cis2. | a4 cis e | g4. a16 bes a4 | f4(d) cis | d2. |}
	}
}

B = {
	\repeat volta 2{
		\relative c{d4 d' c | bes e, f | g a a, | d a f | d d' bes | f' c d | bes c c, | f2. |}
	}
	\repeat volta 2{
		\relative c'{ c4 e, g | b g c | f,2 g4 | a4 g8 f e d | cis8 b a b cis d | e4 d cis | d f a | d, a d, | }
	}
}
<<
	% \new Staff{
	% 	\clef treble
	% 	\time 3/4 \key d \minor
	% 	\S
	% }
	% \new Staff{
	% 	\clef bass
	% 	\time 3/4 \key d \minor
	% 	\B
	% }
	
	\new Staff{
		\clef "treble_8"
		\time 3/4 \key d \minor
		<<{\S}\\{\B}>>
	}
>>