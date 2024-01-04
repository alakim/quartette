\version "2.18.2"

\header{
	title="Откровение пастухам"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


rA = \relative c{ r16 e g r    f16 a c8     r16 e, g d'16~  d16 e,16 c' e, | r16 e g r f a c8 r16 g c e~e4 | r16 e, e' r a, c f r a, c g'8. a,16 fis' a, | r16 g f' r  g,16 d' g, d'  r16 e, g c16~c4 |}
lA = \relative c{c8 f,4. c'2 | c8 f,4. c'2 | c8 f4. d2 | f4 es c2 |}

rB = {
	\relative c {r16 e g r  d16 a' c8  r16 e, g d'16~ d16 e, c' e, |}
	\relative c {r16 e g r  d16 a' c8  r16 g d' e16~ e16 g, e' g, |}
	\relative c' {r16 g e' r  a,16 c f8  r16 a, c g'16~ g16 a, fis' a, |}
	\relative c' {r16 g e' r  g,16 d' g, d'  c,16 g c'8~ c16 c, c' c, |}
	\clef treble
	<c' f' a'>8 <c' e' g'>4. <b d'>8 <c' e'>4. |
	<a c' f'>2 <b d'>8. g' f'8 |
	<c' e'>2 e'4 c' |
}
lB = {
	\relative c{c8 f,4. c'2 | c8  f,4. c2 | c8 f4. d2 | f4 es c2 |}
	\relative c,,{ f16 f'8. c16. g'32 c8  g,8. g'16  c,16. g'32 c8 | f,8. f'16    a16. f32 a8    g,8. g' f8 | g8. g16  c16. g32 c8 r8 g c16. g32 c8 |  }
}

rC = {
	r16 e16 g r   f16 a c'8   r8 e16 g  d'16 e c' e |
	r16 e16 g r   f16 a c' r16 g c' e'8~e'4 |
	r16 g e' r   a16 c' f'8  r16 a c'  g'8 a16 fis' a |
	r16 g e' r   g16 d' g d'   r16 e16 g c'~c'4 |
}
lC = \relative c {c8 g4. c2 | c8 g4. c2 | c8 f4. d2 | f4 es c2 |}

A = {
	\tag #'Violin {
		\mark \markup{\circle "1"}
		r1^"3 раза, первый из которых - вступление" | r1 | r1 | r1 \bar ":|."
	}
	\tag #'PianoR {
		\clef bass
		\rA
	}
	\tag #'PianoL { \lA }
}

B = {
	\tag #'Violin {
		\mark \markup{\circle "2"}
		\relative c' {c2 g~|g2 c~|c2 a~|a2 c~| c1 | b1 | c2 b8 c4. |}
		s1 ^"Цифра 1 - 2раза, цифра 2 - 1 раз" \bar "||"
	}
	\tag #'PianoR {
		\clef bass
		\rB
		s1
	}
	\tag #'PianoL {
		\lB
		s1
	}
}

C = {
	\tag #'Violin {
		\mark \markup{\circle "3"}
		\relative c''{g2 c,4. a'8 | g4~g8 f16 e~e4.~e16 f | g8. f e8   e8. d16  c8 b | e8. d16 c8 b c2 \bar "||"}
		s1^"Цифра 1 - 2 раза" |
	}
	\tag #'PianoR {
		\clef bass
		\rC
		s1
	}
	\tag #'PianoL {
		\lC
		s1
	}
}

Music = {
	\A \break
	\B \break
	\C \break
}

<<
	\new Staff{
		\set Staff.instrumentName="Скрипка"
		\time 4/4
		\clef treble
		\key c \major
		\keepWithTag #'Violin \Music 
	}
	\new PianoStaff <<
		\new Staff = "up"{
			\set Staff.instrumentName="Ф-но"
			\time 4/4
			\clef treble
			\key c \major
			\keepWithTag #'PianoR \Music 
		}
		\new Staff = "down"{
			\time 4/4
			\clef bass
			\key c \major
			\keepWithTag #'PianoL \Music 
		}
	>>
>>

