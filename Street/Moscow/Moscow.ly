\version "2.18.2"

\header{
	title="Лучший город Земли"
	composer="А.Бабаджанян, Л.Дербенев"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HrmRiff = \chordmode{
	c1 bes as g
}

HrmVerse = \chordmode{
	c1 | c | a:m | a:m | f | f | g | g |
	g1 | g:7 |
}

HrmChorus = \chordmode{
	c1 | c1 | a:m | a:m |
	f | f | g1 | g |
	c | c | a:m | a:m | f | g |
}

Verse = {
	\tag #'Harmony {
		\HrmRiff
		\HrmVerse
	}
	\tag #'Trumpet {
		%\mark "Куплет"
		\relative c''{r1 | r1 | r1 | r8 g g g g4 e8 d |} \break
		\repeat volta 2 {
			\relative c'{ e1 | r4 g8 g g4 e8 g | a2 e | r4 a8 a a4 e8 g  | a1 | r4 a8 a a4 f8 a |}
		}
		\alternative{
			\relative c'' {g1 | r8 g8 g g g4 e8 d |}
			\relative c'' {b1~ | b2 r |}
		}
	}
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
		\HrmRiff
	}
	\tag #'Trumpet {
		\relative c''{c1~ | c2 d4 e | e4 c2.~| c2 r | c1~ | c2 a4 c | d1~ | d2 r |}
		\relative c''{c1~ | c2 d4 e | e4 c2.~| c2 d4 e | c1 | d1 | c1 | r | r | r |}
	}
}



Music = {
	\Verse \bar "||" \break
	\Chorus
	\bar "|."
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}

	\new Staff{\transpose bes c' {
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key c \major
		\time 4/4
		\keepWithTag #'Trumpet \Music 
	}}
>>

