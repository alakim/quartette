\version "2.18.2"

\header{
	title="House of Rising Sun"
	composer="Traditional"
	% https://musescore.com/user/5060416/scores/1448636
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HrmVerse = \chordmode{
	a2.:m c d f
	a:m c e e
	a:m c d f
	a:m e a:m e
}


Verse = {
	\tag #'Harmony {
		s2.
		\HrmVerse
	}
	\tag #'Trumpet {
		r4. r4 e'8
		\relative c''{a4.~a4 b8 | c4.~c4 e8 | d4 a8 a4. | r4. r4 a'8 | a4.~a4 a8 | g4.~g4 e8 | e2. |}
		\relative c''{r4. r4 e16 gis | a4.~a4 b,8 | c4.~c4 e8 | d8 a4~a4 a8 | c4.~c4 a8 |}
		\relative c''{ a4.~a4 a8 | gis8 e4~e gis8 | a4. r | r2. |}
	}
}

Music = {
	\Verse \bar "||" \break
	\bar "|."
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}

	\new Staff{\transpose bes c {
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key c \major
		\time 6/8
		\keepWithTag #'Trumpet \Music 
	}}
>>
