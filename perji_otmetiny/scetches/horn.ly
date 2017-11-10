\version "2.18.2"

outKey = bes % c'

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Горн."
}

Horn = {
	\tag #'Harmony {\chordmode{
		\partial 8 { s8 | }
		a1  d1  g c
		a1:m g a:m d 
	}}

	\tag #'Voice {
		\time 4/4
		\key a \major
		\partial 8 {e'8 |}
		\relative c''{
			cis4~cis16 b a b cis8 b a b | fis2. r8 fis |
			b4~b16 a gis a b8 a gis fis | e2 r8 e fis g \longBar
			a4 c e, c | b2. b4 | g'4 a e c' | d1 |
			\bar "|."
		}
	}
}

Music = {
	\Horn
}

<<
	\new ChordNames{\transpose \outKey bes{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose \outKey bes{

		\set Staff.instrumentName="Flugelhorn"
		\clef treble
		\keepWithTag #'Voice \Music
	}}
>>
