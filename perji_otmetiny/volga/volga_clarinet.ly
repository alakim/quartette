\version "2.18.2"

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Волга"
	composer="гр. Перьи Отметины"
}

ClI = {
	\tag #'Harmony {\chordmode{
		fis1:m fis:m
		b b
	}}

	\tag #'Voice {
		\time 4/4
		\key a \major
		\relative c''{
			cis4. e a,8 b | cis1 | 
			b4. cis8 b8 a fis e | e4. fis8 fis 2 \longBar
		}
	}
}

ClII = {
	\tag #'Harmony {\chordmode{
		% a2 e fis1:m 
		a2 e fis1:m 
		d4. d/cis b1:m
		d4. d/cis b1:m
	}}

	\tag #'Voice {
		% \relative c'''{ a4. gis fis8 e | cis4. fis8 fis2 }
		\relative c''{ cis4. b e4 | fis2 r | }
		\relative c''{\time 3/4 fis4. e | \time 4/4 d1 |}
		\relative c''{\time 3/4 d4. e | \time 4/4 b1 \bar"|." }
	}
}

Music = {
	\ClI
	\break
	\ClII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Clarinet"
		\clef treble
		\keepWithTag #'Voice \Music
	}
>>
