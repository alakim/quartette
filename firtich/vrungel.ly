\version "2.18.2"

\header{
	title="Песня капитана Врунгеля"
	composer="Г.Фиртич"
}

Hrm = \chordmode{
	s1 | c1 | c2 dis:dim | d2:m7 g:7| 
	a1:7 | d1:m | d2:m g:9- | c1 |
	g2:m7 c:5+ | f1 | d1:m7 | e2:7 a:m |
	dis2:dim d:m7 | a1:m7 | d2:m7 g:7 | c2:  e:m7|
	f2 fis:dim | a1:m7 | d1:m7 | g2 a:m7 |

}

Trp = {
	\key c \major
	\relative c'{
		r8 g8 g g a g c, d | e1 | r8 c' c c c4 d | c2 b |
		r8 a a a b a d, e | f1 | r8 d'8 d d d4 e | d2 c |
		r8 c8 c c c c d c | a1 |
		r8 c8 c c d4 c | e4. (d8) c2 |
		r8 c8 c c d c a c | g1 | r8 g g f e4 d | a'2 g |
		r8 c8 c c d c a c | g1 | r8 a a f d4 b | d2 c \bar "|."

	}
}


<<
	\new ChordNames{\transpose bes c{\Hrm}}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\transpose bes, c'{\Trp}
	}
>>
