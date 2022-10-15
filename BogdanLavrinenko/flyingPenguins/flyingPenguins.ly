\version "2.18.2"

\header{
	title="Пингвины летят"
	composer="гр. День Радости"
	subtitle="Партия трубы"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


Chorus = {
	\tag #'Harmony {\transpose bes c{
		\chordmode{d4.:m a:m d:m a:m}
		\chordmode{f2. c  }
		\chordmode{d2.:m e a:m a:m }
	}}
	\tag #'Trumpet {
		\mark "Припев"
		\relative c' {b2.~b d a}
		\relative c' {b2. cis d~d4. cis}
		\bar "||"
	}
}

HrmSoloA = \transpose bes c{\chordmode{
	d4.:m a:m
	d4.:m a:m
	d4.:m a:m
	d4.:m a:m
}}

HrmSoloB = {
	\transpose bes c{
		\chordmode{g2.:m a:m d:m d:m}
		\chordmode{g2.:m a:m d4.:m a:m d:m a:m }
	}
}

SoloA = {
	\tag #'Harmony {
		s2.
		\HrmSoloA
		\HrmSoloA
	}
	\tag #'Trumpet {
		s4. b |
		\mark "Соло A"
		\relative c''{g4.~g8 fis e | fis8 g a b4. |}
		\relative c''{b4 a16 g b4 a16 g | b8 a g fis g a |}
		\relative c'{e4. fis8 g fis | e4. b8 d fis |}
		\relative c'{e4.~e4  e8 \glissando | d'4. b |}
		\bar "||"
	}
}

SoloB = {
	\tag #'Harmony {
		\HrmSoloB \break
		\HrmSoloB
	}
	\tag #'Trumpet {
		\mark "Соло B"
		\relative c'''{g4.~g8 fis g | fis8 e4~e8 d e | b4.~b8 g a | b a g b a g |}
		\relative c''{c4 b16 a c8 b a | fis4.~fis8 g a | b4. a | b4. a |}
		\relative c''{b4 a16 g a4. | r8 fis g a4 r8 | b4 a16 g b4. | r8 d b a g fis |}
		\relative c''{g4 fis8~fis4. | r4. fis4 g8 | fis4 e8~e4. | s2. |}

		\bar "||"
	}
}


Music = {
	\Chorus \break
	\SoloA \break
	\SoloB \break
}

<<
	\new ChordNames{
			\keepWithTag #'Harmony	\Music
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 6/8
		\clef treble
		\key e \minor
		\keepWithTag #'Trumpet \Music 
	}
>>

