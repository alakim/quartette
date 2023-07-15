\version "2.18.2"

\header{
	title="Нравится мне такой"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmEnd = \chordmode{
	c2 d | e1:m |
}

Harmony = \chordmode{
	e1:m | d | g | d |
	c | e:m | \HrmEnd
}

Solo = {
	\tag #'Harmony {\transpose bes c {
		\Harmony
		\HrmEnd
		\HrmEnd
		\HrmEnd
	}}
	\tag #'Trumpet {
		\mark "Соло"
		\relative c' {fis2 b4 a8 b8~| b2. a8 b | cis2 b4 a8 gis8~ | gis1 | }
		\relative c'' {\tuplet 3/2 {a4 gis a} \tuplet 3/2 {b4 a b} | cis8 b4 a4. r4 |}
		\relative c''{ cis4. b2 a8~ | a2 r2 \bar "||"}
		\break
		\relative c''{a4.^"варианты окончания" gis2 fis8~ | fis2 r2 \bar "||"}
		\relative c''{cis4. e2 fis8~ | fis2 r2 \bar "||"}
		\relative c''{cis4. b2 fis8~ | fis2 r2 \bar "||"}
	}
}


Music = {
	\Solo \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key fis \minor
		\keepWithTag #'Trumpet \Music 
	}
>>

