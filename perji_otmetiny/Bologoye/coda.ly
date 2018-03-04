
\header {
	title = "Бологое (coda)"
	composer = "Перьи Отметины"
}

\version "2.10.33"

Hrm = \chordmode{
	r1 | d1:m | g2:m d:m | f2 c |
	g2 bes4 c | d1:m |
}

FlI = \relative c'''{
	d8^"где" c a g a4^"весть" c8^"бо-" a^"ло-" | c8^"гая" d d2~d8 d, |
	d2 a'8 bes a g | e'8 d c4 g'4. c,8 |
	bes8 c d e f4 e16 d c8 | d1 |
}

ClI = \relative c''{
	r1 | f4^"(эх!)" f8 e a d, d f | g8 a g f d2 | f2 e8 f e d | g4. f8 d4 e16 d c8 | d1 \bar "|."
}
BI = \relative c{
	bes4 bes16 r16 bes r c4 c16 r c r | d4 d8. c16 c8 c d f |
	g4 g8. f16 d8 d d c | f4 f8. d16 c8 c d f |
	g4 g bes, c | d1 |
}

<<
	
	\new ChordNames{\Hrm}
	\new Staff{
		\set Staff.instrumentName = \markup {Flute}
		\clef treble \time 4/4 \key d \minor
		\FlI
	}
	
	\new ChordNames{\transpose bes c'{\Hrm}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = \markup {Clarinet B}
		\clef treble \time 4/4 \key d \minor
		\ClI
	}}
	
	\new Staff{
		\set Staff.instrumentName = \markup {Bass}
		\clef bass \time 4/4 \key d \minor
		\BI
	}
>>


