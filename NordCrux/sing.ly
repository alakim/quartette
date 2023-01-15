\version "2.18.2"

\header{
	title="Пой"
	composer="гр. Северный крест"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
	a1:m f c g
}

TrptSolo = {
	\tag #'Harmony { s1 \HI \HI \HI \HI}
	\tag #'Horn {
		\mark "Solo"
		\relative c'' {
			r2 d8 e d c | e1 | f1 | e1 | r1 |
			r4 c4 c8 d4 g,8~ | g4. f'2 e8~| e1 | 
			r2 d8 e d c | e1 | f1 | e1 | r1 |
			r2 e8 e e e | e8 f a,4. g4 e'8~ | e1 | s1 |
		}
		\bar "||"
	}
}

Music = {
	\TrptSolo \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key a \minor
		\keepWithTag #'Horn \Music
	}
>>

