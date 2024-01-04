\version "2.18.2"

\header{
	title="Лебединая песня"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmBreak_Va = \chordmode{
	a2.:m7 d1:7 c1:m d:7
	a2.:m7 e1:m d1:7 g1:m 
}

HrmSolo = \chordmode{
	\time 3/4 g4.:m c:m \time 4/4 g1:m
	c1:m d:7
}

Break = {
	\tag #'Harmony {
		\HrmBreak_Va
	}
	\tag #'Melody {
		\relative c'{c8 b c e d c | a1 |}
		s1 s1
		s2. s1 s1 s1
	}
	\tag #'Bass {
		\mark "Break"
		\clef bass
		\relative c{ \time 3/4 a4. c | \time 4/4 d1 | g1 | d1 |}
		\relative c'{ \time 3/4 a4. g | \time 4/4 e1 | d1 | g1 |}
	}
}

Solo = {
	\tag #'Harmony {
		\HrmSolo
	}
	\tag #'Bass {
		\mark "Solo"
		s2. s1 s1 s1
	}
	\tag #'Melody {
		\mark "Solo"
		s2. s1 s1 s1
	}
}


Music = {
	\Break \bar "||" \break
	\Solo \bar "||" \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\key g \minor
		\clef bass
		\keepWithTag #'Bass \Music 
	}

	%{
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	%}
	\new Staff{
		\key g \minor
		\clef treble
		\keepWithTag #'Melody \Music 
	}
>>

