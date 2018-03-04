
\header {
	title = "Бологое (соло)"
	composer = "М.Лазарев (гр.Перьи Отметины)"
}

\version "2.10.33"

Hrm = \chordmode{
  d2:m g:m | g:m d:m | d:m a:m |
  g1:m | d2:m c | g:m d:m | d:m |
}

FlI = \relative c''{
  d8. e16 f e d8 g4 f8 e | bes'16 a g f g8 a f16 e d8 d c |
  a'8 f f16 a c8 c16 g e8 c8. f16 | g8 a bes e d16 e d e d8 c | \time 2/4 r2 |
  \time 4/4 d4 a c16 d c a g8 a | bes4 e,8 g f g4 f16 e |
  \time 2/4 d4 r |
}

ClI = \relative c''{
  a8. g16 a8. d,16 g8 a16 bes a g f8 | g8. a16 bes8 a16 g d8. f16 e8 f16 g |
  a8. g16 a8 f c'4 g8 a | g8. a16 bes8 a16 g d'8. c16 d4~ | \time 2/4 d8 c d e |
  \time 4/4 f4 f e16 f e d c8 d |g2 a8 d, d4~ |
  \time 2/4 d4 r4 |
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
	
>>


