\version "2.18.2"

\header{
	title="Крылья"
	composer="гр. Северный крест"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
	a2:m c f e
}

Intro = {
	\tag #'Harmony {\HI \HI \HI}
	\tag #'Horn {
		\mark "Intro"
		\relative c'' {
			c1~ | c2. a4 | a4. e4.~ e4 | r8 d8 f gis b d4 c16 b | a1 | s1 |
		}
		\bar "||"
	}
}

Music = {
	\Intro \break
}

<<
	\new ChordNames{\transpose bes c'{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key a \minor
		\keepWithTag #'Horn \Music
	}}
>>

