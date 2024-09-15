\version "2.18.2"

\header{
	title="Sailing"
	composer="Rod Stewart"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HrmVerse = \chordmode{
	c1 a:m f c
	d a:m d:m c
}


Verse = {
	\tag #'Harmony {
		s4
		\HrmVerse
	}
	\tag #'Trumpet {
		%\mark "Куплет"
		\partial 4 {g'8 a' |}
		\relative c''{c4 c r e8 g | a4 a r a8. g16 | g8(f4.) r4 f8. e16 | e4 r r f8 e |} \break
		\relative c''{e8(d) d4 r e8 d | c4 c r g8 a | e'8(d) d4 r d8 c | c1 |}
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
		\time 4/4
		\keepWithTag #'Trumpet \Music 
	}}
>>

\markup \column{
	\line{I am sailing, I am sailing, home again 'cross the sea}
	\line{I am sailing stormy waters, to be near you, to be free.}
	\line{I am flying, I am flying, like a bird, 'cross the sky.}
	\line{I am flying, passing hight clouds, to be with you, to be free.}
	\line{Can you hear me, can you hear me, through the dark night far away.}
	\line{I am dying, forever trying to be with you, who can say.}
	\line{We are sailing, we are sailing home again 'cross the sea.}
	\line{We are sailing stormy waters to be near you, to be free.}
}
