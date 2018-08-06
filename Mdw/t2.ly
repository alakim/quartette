\version "2.18.2"

outKey = c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Theme 2"
	subtitle="4 Mdw"
}

Solo = {
	\tag #'Harmony {\chordmode{
		g1:m | f |
		g1:m | f |
		g1:m | f |
		g1:m | f |
		c1:m | g:m |
		c1:m | g:m |
		c1:m | g:m |
		f1 : g1:m |
	}}

	\tag #'Kbrd {
		\time 4/4
		\key g \minor
		\relative c'{
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
		}
	}

	\tag #'Trpt {
		\time 4/4
		\key g \minor
		\mark "Theme 1" 
		\relative c'{
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			s1 s1
			\bar "|."
		}
	}
}


Music = {
	\Solo
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Keyboards"
		\clef treble
		\keepWithTag #'Kbrd \Music
	}
	\new ChordNames{\transpose bes \outKey {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes \outKey {

		\set Staff.instrumentName="Trumpet"
		\clef treble
		\keepWithTag #'Trpt \Music
	}}
>>
