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
	\tag #'Trumpet {
		\mark "Вступление"
		\relative c'' {
			c1~ | c2. a4 | a4. e4.~ e4 | r8 d8 f gis b d4 c16 b | a1 | s1 |
		}
		\bar "||"
	}
	\tag #'SaxAlto {
		r1 r1 r1 r1 r1 r1
	}
}

Verse = {
	\tag #'Harmony {\HI \HI \HI}
	\tag #'Trumpet {
		\mark "Куплет"
		\relative c''{a4->\bendAfter #-4 r2. | r2. e8^"а мы сидели..." d | e8-> r r2. | r2.  e4^"на мафоне..." | a8-> r r2. | r1 |}
		\bar "||"
	}
	\tag #'SaxAlto {
		r1 r1
		r1 r1
		r1 r1
	}
}

ChorusA = {
	\tag #'Harmony {\HI}
	\tag #'Trumpet {
		\mark "Припев A"
		\relative c''{a2 g | a2 gis |}
		\bar "||"
	}
	\tag #'SaxAlto {
		\relative c'{e2 e | f2 e |}
	}
}

ChorusB = {
	\tag #'Harmony {\HI}
	\tag #'Trumpet {
		\mark "Припев B"
		\relative c''{c2 c | c2 b |}
		\bar "||"
	}
	\tag #'SaxAlto {
		\relative c''{a2 g | a2 gis |}
	}
}

ChorusC = {
	\tag #'Harmony {\HI}
	\tag #'Trumpet {
		\mark "Припев C"
		\relative c''{e2 e | f2 e |}
		\bar "||"
	}
	\tag #'SaxAlto {
		\relative c''{c2 g | a2 gis |}
	}
}

Music = {
	\Intro \break
	\Verse \break
	\ChorusA \ChorusB \ChorusC \break
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key a \minor
		\keepWithTag #'Trumpet \Music
	}}
	\new ChordNames{\transpose es c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose es c{
		\set Staff.instrumentName="Sax alto"
		\time 4/4
		\clef treble
		\key a \minor
		\keepWithTag #'SaxAlto \Music
	}}
>>

