\version "2.18.2"

\header {
  title = "Little digital reverb"
  subtitle="brass section"
}

Hrm = \chordmode{
	r1 | e1:m | e:m | b2:7 e2:m |
	e1:m | e1:m | a1:m | b2:7 e:m |
}

Trpt = {
	\key e \minor
	\relative c'{
		r2. e8 r | fis8 r r2 e8 r | 
		fis8 r r2 e8 r | fis8 r fis8 e4 r4. |
		r2. e8 r | fis8 r r2 e8 r | a8 r r2 g8 r | 
		fis8 r e e4 r4. \bar "||"
	}
	\relative c'{
		r4 b g'8 g fis g | e8 r r2. | r1 |
		c'8 c b c a a r4 | r4 r8 b r2 |
		r4 r8 b r2 | g8 e4 r8 r2 \bar "||"
	}
}

<<
  \new ChordNames{\Hrm}
  \new Staff{
    \clef treble 
    \time 4/4
    \set Staff.instrumentName = "Trumpet"
	\Trpt
  }
>>
