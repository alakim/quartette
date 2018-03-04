\version "2.12.2"

\header{
	title="Гиневер"
	composer="Андрей (Дюша) Романов"
}
\paper {
  #(set-paper-size "a4")
  between-system-padding = #1.5
  bottom-margin = 15\mm
}
Clarinet = \relative c''{
	r2. | bes4 a bes | c a bes | c a c | bes a g |
	\barNumberCheck #6
	bes a bes | c a bes | c a c | bes a g | f2. |
	c2. | g' | fis |
	g2. | a | a | g4 r g |
	g r g | g2. | bes |
	c2. | a2 c4 | bes2. |
	bes2.| c | a2 c4 |
	bes2. | f | bes4 a f |
	g2. | fis | g |
	a2. | a |
	g4 r g | g r g | g2. |
	g2 a8 bes | a2. | f2 d4 |
	g2 r4 | g2 a8 bes | a2. |
	f2 d4 | g2 r4 | f2. |
	bes4 a f | g2. | fis |
	g2. | a | a |
        bes2. | bes | <b d> \bar "|."
}

Flute = \relative c''{
	r2 d4 | g4. a8 bes4 | a4. g8 a4 | f4. d8 f4 | g2 d4 |
	\barNumberCheck #6
	g4. a8 bes4 | a4. g8 a4 | f4. d8 f4 | g2 d'4 | d4. c8 bes4 |
	\barNumberCheck #11
	c4. \times 2/3 {b16 c b} a4 | b4. \times 2/3 {a16 b a} g4 | a4 r d, |
	\barNumberCheck #14
	g4. a8 bes4 | a4. g8 a4 | f4. d8 f4 | g4 r8 d' bes16 r \times 2/3 {a16 bes a}|
	\barNumberCheck #18
	g4 r8 d' bes16 r \times 2/3 {a16 bes a }| g2 d4 | d8 g g a a bes |
	\barNumberCheck #21
	bes8 c c \times 2/3 {a16 bes a} a8 g | a4. bes8 a32 bes a16 f8 | g2 d4 |
	\barNumberCheck #24
	d8 g g a a bes | ges8 c c \times 2/3 { a16 bes a } a8 g | a4. bes8 a32 bes a16 f8 |
	\barNumberCheck #27
	g4 r8 g g16 a bes c | d4.~ d16 c bes4 | c4. \times 2/3{b16 c b} a4 |
	\barNumberCheck #30
	b4. \times 2/3 {a16 b a } g4 | a4 r d, | d8 g g a a bes |
	\barNumberCheck #33
	bes8 c c \times 2/3 {a16 bes a} a8 g | a4. bes8 a32 bes a16 f8 |
	\barNumberCheck #35
	g4 r8 d' bes16 r \times 2/3{a16 bes a} | g4 r8 d' bes16 r \times 2/3 {a16 bes a} | g4 r d |
	\barNumberCheck #38
	d8 g g a a bes | bes8 c c \times 2/3 {a16 bes a} a8 g | a4. bes8  a32 bes a16 f8 |
	g2 d4 | d8 g g a a bes | bes8 c c \times 2/3 {a16 bes a} a8 g |
	a4. bes8 a32 bes a16 f8 | g4 r8 g g16 a bes c | d4.~ d16 c bes4 |
	c4. \times 2/3 {b16 c b} a4 | b4. \times 2/3 {a16 b a } g4 | a4 r d, |
	d8 g g a a bes | bes8 c c \times 2/3 {a16 bes a} a8 g | a4. bes8 a32 bes a16 f8 |
	g4 r8 d' bes16 r \times 2/3 {a16 bes a }| g4 r8 d' bes16 r \times 2/3 {a16 bes a }| bes2. |
}
<<
	\new Staff\with {
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
      }{
		\set Staff.instrumentName="Flute"
		\clef treble \time 3/4 \key g \minor
		\Flute
	}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Clarinet"
		\clef treble \time 3/4 \key g \minor
		\Clarinet
	}}
>>