\version "2.18.2"

\header {
	title = "Эскиз Ивана"
	composer = "гр. Ventum"
}

outKey = bes, 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmI = \chordmode{g1 c}

HrmII = \chordmode{
	c2 d  d4 b4:m g2
	c2 d2 c4 a:m g2
}


PI = {
	\tag #'Harmony {
		\HrmI \HrmI
		\HrmI \HrmI
	}
	\tag #'Guitar {
		\improvisationOn
		b'8. b'16 b'8 b'4 b'8 b' b' | b'4 b'8 
		\improvisationOff
		e''4. d''4 |
		\improvisationOn
		b'8. b'16 b'8 b'4 b'8 b' b' | b'4 b'8 b'4
		\improvisationOff
		g'8~g'4 |
		\longBar
		s1 s1 s1 s1 \bar "||"
	}
	\tag #'Voice {
		\mark \markup{\circle "1"}
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \bar "||"
	}
}

PII = {
	\tag #'Harmony {
		\HrmII \HrmII
	}
	\tag #'Guitar {
		\relative c'{e8 e4. fis8 fis4. | a8 fis4 d8~d2 |}
		\relative c'{e8 e4. fis8 fis4. | g8 a4 g8~g2 |}
		\longBar
		s1 s1 s1 s1 \bar "||"
	}
	\tag #'Voice {
		\mark \markup{\circle {"2"} "Horn"}
		\relative c''{g4 g16 e g a~a4 g8 a | b8 a4 g e8 d e |}
		\relative c''{g4 g16 e g a~a4 g8 a | g8 e4 d8~d2 |}
		\longBar
		s1 s1 s1 s1 \bar "||"
	}
}

PIII = {
	\tag #'Harmony {
		d1
	}
	\tag #'Guitar {
		s1
	}
	\tag #'Voice {
		\mark \markup{\circle "3"}
		s1
	}
}


Music = {
	\PI
	\break
	\PII
	\break
	\PIII
}

<<
	\new ChordNames{\transpose \outKey c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose \outKey c{
		\clef treble 
		\time 4/4
		\key g \major
		\set Staff.instrumentName = "Guitar"
		\compressFullBarRests
		\keepWithTag #'Guitar \Music
	}}
	\new Staff{\transpose \outKey c{
		\clef treble 
		\time 4/4
		\key g \major
		\set Staff.instrumentName = "Wind"
		\compressFullBarRests
		\keepWithTag #'Voice \Music
	}}
>>

