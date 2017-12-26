\version "2.18.2"

outKey = c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Петь тебе"
	composer="гр. Перьи Отметины"
}

HornI = {
	\tag #'Harmony {\chordmode{
	}}

	\tag #'Voice {
		\time 4/4
		\key d \major
		\mark \markup{\circle 1}
		\relative c''{
			b16 a b4 d4. b8 d |
			cis16 b a4 g2 r8 |
			b16 a b4 d2 b8 |
			cis8. d e2 r8 \bar "||"
		}

	}
}

HornII = {
	\tag #'Harmony {\chordmode{
	}}

	\tag #'Voice {
		\mark \markup{\circle 2}
		\relative c''{
			r2 r8 fis8 fis fis~| fis8 e e e4 d8 d d ~ |
			d8 b b b g a b g | fis4 d' cis4. b16 a | b2 r2 \bar "||"
		}
	}
}

ClarinetI = {
	\tag #'Flute {
		\key d \major
		\repeat volta 2{
			<fis' a'>4^"петь тебе..." q <a' e''> q | <g' b'>4 q <g' d''> q |
		}
	}
	\tag #'Clarinet {
		\key d \major
		\repeat volta 2{
			\relative c'{fis4 fis a a | g4 g g g |}
		}
	}
}
ClarinetII = {
	\tag #'Flute {
		\key d \major
		\relative c''{ r4^"не сгладится" fis8 g a g fis b, | e2 g | r4 fis8 g a g fis b, | e8 r a4 g4. fis8| }
		\relative c''{fis4^"бродить от Ладоги" d2. | g8 a g fis e4. d8 | e8 fis4. a8 b a4 | d8(b) a(g) fis(e) d4~ |}
		\relative c''{d2 fis  | b2 d8 b a g | a4 d, e2~ | e2 r |}
		\relative c''{r1 | r1 | r4 fis8 g a g fis a |}
		\relative c'''{g16 a g4. b2 | d8 b a g a4. cis8 | d1 \bar "|."}
	}
	\tag #'Clarinet {
		\key d \major
		\relative c''{r1 | r8 d8 d d b cis d e | fis 2. r4 | r e b4. a8 |}
		\relative c''{d1 | b2. g4 | a1 | g |}
		\relative c''{a1 | b16 a g8 a b d16 d e8 d b | a4 d a2 | g2 r |}
		\relative c'{r4 fis8 g a g fis b, | e2 g | r4 fis8 g a g fis b, |}
		\relative c'{e16 fis e4. g2 | d8 e fis g fis4. e8 | d1 |}
	}
}

Music = {
	\HornI
	\break
	\HornII
}

MusicII = {
	\ClarinetI
	\ClarinetII
}

<<
	\new ChordNames{\transpose bes \outKey {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes \outKey {

		\set Staff.instrumentName="Trumpet"
		\clef treble
		\keepWithTag #'Voice \Music
	}}
>>
<<

	\new Staff{\transpose bes \outKey{
		\set Staff.instrumentName="Flute"
		\clef treble
		\keepWithTag #'Flute \MusicII
	}}

	\new Staff{\transpose bes \outKey{
		\set Staff.instrumentName="Clarinet"
		\clef treble
		\keepWithTag #'Clarinet \MusicII
	}}
>>
