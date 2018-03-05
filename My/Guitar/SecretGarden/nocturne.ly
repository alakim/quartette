\version "2.16.2"

\header{
	title = "Nocturne"
	subtitle = "by Secret Garden"
	composer = "arr. for guitar A.Akimov"
}


Tune = {
	\partial 4{\relative c''{a8 c |}}
	\relative c''{
		d2 d8 e8 | a,2 a8 c | d2 d8 e8 | c8 a16 c a4 a8 c | 
		a4 f4. g8 | e4 c4. a8 | d2.~ | d2 d8 c | d2.~ | d2.~ | d2. |
	}
}

Bridge = {
	\relative c''{r2 a8 d | e4 e a,8 e' | f4 f a,8 f' | 
		e8 d bes4. c8 | a2 a8 d |
	}
	\relative c''{ e4 e a,8 g' | f4 f a,8 f' | 
		e8 d bes4. c8 | a2.~ | a2. |
	}
}


<<
	\new Staff{
		\clef treble
		\key d \minor
		\time 3/4
		\Tune \bar "||"
		\Bridge
	}
>>