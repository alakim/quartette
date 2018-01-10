\version "2.18.2"

outKey = c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Найди свой путь"
	composer="М. Ильина"
}

HRefr = \chordmode{
	f1 g c a:m
}

Solo = {
	\tag #'Harmony {
		\HRefr  \HRefr
	}

	\tag #'Voice {
		\time 4/4
		\key c \major
		\mark Solo
		\relative c'{
			c2. e4 | g4. c, b4 | c2. c'4 | b4. a g4 | f1 | c4. b d4 | e1 | r1 \bar "||"
		}

	}
}


Music = {
	\Solo
}

<<
	\new ChordNames{\transpose bes \outKey {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes \outKey {

		\set Staff.instrumentName="Clarinet"
		\clef treble
		\keepWithTag #'Voice \Music
	}}
>>
