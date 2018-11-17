\version "2.18.2"


\header{
	title="When You Leave" % from "Down The Road Wherever Deluxe, 2018"
	subtitle="Trumpet solo"
	composer="Mark Knopfler"
}

Intro = {
	\tag #'Harmony {\chordmode{ s4 
	bes2.:7+ es1:7+ bes1:7+ }}
	\tag #'Trumpet {\relative c''{
		\mark \markup Intro
		\partial 4 {bes8 c }
		\time 3/4 d8 a' g d~d4 |
		\time 4/4 d8 f es g,~g4 d8 es |
		d'4. c8 a2 \bar "||"
	}}
}

SoloI = {
	% t=01:47
	\tag #'Harmony {\chordmode{
		s1 bes1:7+ es1:7+ bes2.:7+ d4:m7 c1:m
		g1:m c1:m g\breve:m  
		c1:m d1:7 g1:m 
	}}
	\tag #'Trumpet {\relative c'{
		\mark \markup "Solo 1"
		r2. d8 es | bes'1 | r4. bes8 a g f es |
		d1 | r4. g8 fis es d c | bes1 |
		r4. bes8 c d bes c | d1 |
		r2 r8 g16 bes d8 c16 bes | c4. c8~c2 |
		r2 r8 d,8 g bes~ | bes4 d,8 g4. r4 \bar "||"
	}}
}

Coda = {
	% t=02:59
	\tag #'Harmony {\chordmode{
		g1:m s1 s1 s1
		s1 s1 s1 s1
		s1 s1 s1 s1
		s1 s1 s1 s1
	}}
	\tag #'Trumpet {
		\mark \markup "Coda"
		\relative c''{
			r2. bes8 c | d8 a'4.~a4 c16 b bes a~ | a1 |
			r2 r8 f,16 g c8. f16 | c4 c16 d d8~d2 |
			r2 r4 c16 a fis es | fis16 a c a c16 d c c~c2 |
			r2 r8 g16 a bes8 a16 g | a16 a a8~a2 r8 g8 |
			bes16 bes g8 bes16 bes g8 bes16 c bes8~bes4 |
			c8 c16 c   c8  c f  c c16 c16 d8~ | d1 |
		}
		\relative c''{
			r2 g8 fis g16 a bes c | d8 a' g d~d2 | 
			d8 f es g,~g2 | r4 d8 es d'16 c8 a16~a4 \bar "|."
		}
	}
}

Music = {
	\Intro \break
	\SoloI \break
	\Coda
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet" \time 4/4
		\clef treble
		\key bes \major
		\keepWithTag #'Trumpet \Music
	}
>>






