\version "2.18.2"
#(set-global-staff-size 22)


\header{
	title="Пример соло к All Of Me"
	subtitle="https://www.youtube.com/watch?v=8W8W0rMH_bg"
}

Hrm = \chordmode{
	c1:maj | s | e:7 | s |
	a:7 | s | d:m7 | s |
	e:7 | s | a:m7 | s |
	d:7 | s | g:7 | s |

	c1:maj | s | e:7 | s |
	a:7 | s | d:m7 | s |
	d:m7 | f:m7 | c | s |
	d:m7 | g:7 | c | s | 

	c | s | e:7 | s | a:7 | s |
	d:m7 | s |
	e:7 | s | a:m7 | s | d:7 | s |
	g:7 | s | c | s | e:7 |

	e:7 | a:7 | s | d:m7 | s |
	d:m7 | e:m7 | c | a:7 |
	d:m7 | g:7 | c2 a:7 | d:m7 g:7 | c1 |
}

<<
	\new ChordNames{
		\Hrm
	}
	\new Staff{
	\clef treble \time 4/4 \key c \major
	\relative c''' {
		c4 g8. e16~e2~  | e4 r c'8. d16 c4 | b4 as8. e16~e2~ | e2. r4 |
		a4 g8. e16~e2 | r8. e16 es8. e16 bes'4 a | g2. e8. f16~ | f1 |
		r8 e~e es d4. c8 | b a as b d f d es | e bes (b) d c as b a | e4 d8 c~c2 |
		d8 e fis a~a4 b8 c~ | c4 as8 b a e r8. e16 | \tuplet 3/4 {f^"Обыгрывается SUS" a c} e8 c e c r e~ | e8 c16 a f a c e es8 b r4 |
		
		d16 es d c b8 c a c r g~ | g a b c~c4 r | r8 e as a bes b a g | as f e d g fis f e | \tuplet 3/2 {e16 f e} d8 cis e bes as a g | fis e f es e4 r8 cis |
		d8 f e d g e f16 a cis e | d8 a~a4 r2 | r8 c~c4 a8 c d es~ | es c as f g fis f g | e g b d r4 r8 fis~ | fis8 d16 b  g b d fis f8 cis r4 |
		r8 e c a f a c e | g fis f g as c bes a | g f \tuplet 3/2 {e16 f e} d8 cis e d4 | c8 bes b as' \tuplet 3/2 {bes16 b bes} a8 g f | e8 c~c4 f8 c fis g~ | g4 r2 \tuplet 3/2 {e8 f fis} |
		g8 fis f es \tuplet 3/2 {e16 f e} d8 c bes | b8 a as b f es e d | cis8 e g a bes4 r8 as, | \tuplet 3/2 {a8 cis e} g8 a r4. e8 | g8 f~f4 cis4 e8 d~ | d2. r4 |

		r4 \tuplet 3/2 {e'8 f fis } g8 fis f es | \tuplet 3/2 {e16 f e} d8 cis e c bes b as | a c b a  d b c fis,~ | fis2 e8 c r4 | r4 d8 e fis g a b | c as b as a4 r4 |
	}
	% bar 47
	\relative c''{ r8 c a c e e e e | \tuplet 3/2{es16 e es} b8 d c b c a b | g4 a8 g bes b d b | c d e g  a bes b d | c bes b a as b r4 | }
	% bar 52
	\relative c''{ f8 es e b~b4 a8 g~ | g4 r8 a bes a as a | c4 b bes8 cis c bes | a8 es e g  e f a cis | e d~d4 r2 |}
	% bar 57
	\relative c ''{\tuplet 3/2 {e8 f fis} g8 f \tuplet 3/2 {e16 f e} d8 c4 | c8 as g f \tuplet 3/2 {bes16 b bes} a8 g f | \tuplet 3/2 {e8 g b} d8 b c e g a | bes8 a as a e'4 r |}
	% bar 61
	\relative c'''{e4 r8 \tuplet 3/2{c16 a f} e8 f a c | e4 r es8 b r4 | d8 c b c  a c g fis | f g as c   bes a g f | e8 c~c4 r2 |}
  }
>>


