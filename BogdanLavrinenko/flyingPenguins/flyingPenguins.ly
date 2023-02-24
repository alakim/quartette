\version "2.18.2"

\header{
	title="Пингвины летятъ"
	composer="гр. День Радости"
	subtitle="Партіи мѣдныхъ духовыхъ"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmChorus = \transpose bes c{
	\chordmode{d4.:m a:m d:m a:m}
	\chordmode{f2. c  }
	\chordmode{d2.:m e a:m a:m }
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
	}
	\tag #'Trumpet {
		\mark "Припѣвъ"
		\relative c' {b2.~b | d~d4. a |}
		\relative c' {b4.~b8 a8 b | cis4.~cis8 b cis | d4. e4. | fis2. |}
		\bar "||"
	}
	\tag #'Trombone' {\transpose c bes {
		\relative c, {e4 b16 b b8 c d | e4 b16 b b8 c d | b4. g' | fis2. |}
		\relative c, {e2. | fis4. ais, | b2.~ | b2. |} 
	}}
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
		% \relative c'''{g4.~g8 fis g | fis8 e4~e8 d e | b4.~b8 g a | b a g b a g |}
		\relative c'''{g4.~g8 fis g | fis8 e4~e8 d e | b4.~b8 g a | b4 g16 a b8 a b |}
		% \relative c''{c4 b16 a c8 b a | fis4.~fis8 g a | b4. a | b4. a |}
		\relative c''{c4.~c8 b a| fis4.~fis8 g a | b2.~ | b4. r |}
		% \relative c''{b4 a16 g a4. | r8 fis g a4 r8 | b4 a16 g b4. | r8 d b a g fis |}
		\relative c''{ c4 b16 a b4. | r8 b,8 d fis4. | e8 d e fis e fis | g8 fis g a g a |}
		% \relative c''{g4 fis8~fis4. | r4. fis4 g8 | fis4 e8~e4. | s2. |}
		\relative c''{ c4 b16 a g8 fis e | b'4. b, | e2. | r2. | }

		\bar "||"
	}
}

SoloC = {
	\tag #'Harmony {
		s2.
		\HrmChorus
		\HrmChorus
	}
	\tag #'Trumpet {
		s4. b |
		\mark "Соло C"
		\relative c''{g4.~g8 fis e | fis8 g a b4. |}
		\relative c''{d8 b d e4 b8 | d8 b a b4. |}
		\relative c''{b8 a g fis g a | e4. cis | g' fis | r4. r4 fis8 \glissando |}
		\relative c'''{g4.~g4 g16 g16 | fis4 e8~e8 b c | d4 d,16 d d8 e fis | a4 fis8~fis4 fis8| }
		\relative c'{e4 d8~d4. | r4 fis16 fis fis8 e fis | b2. | r2. }
		\bar "||"
	}
}
MusicA = {
	\Chorus \break
}

Music = {
	\SoloA \break
	\SoloB \break
	\SoloC \break
}

<<
	\new ChordNames{
			\keepWithTag #'Harmony	\MusicA
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 6/8
		\clef treble
		\key e \minor
		\keepWithTag #'Trumpet \MusicA
	}

	\new Staff{
		\set Staff.instrumentName="Trombone"
		\time 6/8
		\clef bass
		\key d \minor
		\keepWithTag #'Trombone' \MusicA
	}
>>

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

