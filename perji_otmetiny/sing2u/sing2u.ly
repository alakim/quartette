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

Music = {
	\HornI
	\break
	\HornII
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
