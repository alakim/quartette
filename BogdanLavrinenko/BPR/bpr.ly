\version "2.18.2"

\header{
	title="Бессимптомный переносчик радости"
	subtitle="партия медных духовых"
	composer="Б.Лавриненко"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Harmony = \chordmode{
	c1 | d:m | a:m | g
}

Riff = {
	\tag #'Harmony {
		\Harmony
		\Harmony
	}
	\tag #'Trumpet {
		\mark "Рифф"
		\relative c'{r4 e d8 e4. | r4 f e8 f4. | r4 a g a8 g8~ | g1 |} \break
		\relative c'{r4 e d8 e4. | r4 f e8 f4. | r4 a g a8 g8~ | g4 a b d |}
	}
	\tag #'Trombone {
		<<
			\relative c'{r4 c b8 c4. | r4 d c8 d4. | r4 e e e8 d8~ | d1 | }
			\relative c'{r4 g g8 g4. | r4 a a8 a4. | r4 c c c8 b8~ | b1 | }
		>>
		<<
			\relative c'{r4 c b8 c4. | r4 d c8 d4. | r4 e e e8 d8~ | d1 | }
			\relative c'{r4 g g8 g4. | r4 a a8 a4. | r4 c c c8 b8~ | b1 | }
		>>
	}
}


Music = {
	\Riff \break
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}

	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key c \major
		\keepWithTag #'Trumpet \Music 
	}}

	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trombone"
		\time 4/4
		\clef bass
		\key c \major
		\keepWithTag #'Trombone \Music 
	}
>>

