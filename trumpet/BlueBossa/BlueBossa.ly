\version "2.18.2"


\header{
	title="Blue Bossa"
	composer="K.Dorham"
}

Hrm = \chordmode {
	c1:m6 c:m6 f:m7 f:m7
	d:m7.5- g:7.5+ c:m6 c:m6
	es:m7 as:7 des:maj des:maj
	d:m7.5- g:7 c:m6 c:m6
}


Theme = {
	\tag #'Harmony {s4 \Hrm}
	\tag #'Trumpet {
		\partial 4 {g'4}
		\relative c'''{g4. f8 es d4 c8~| c2. bes4 | as2 g'4. f8~ | f1 |}
		\relative c''{ f4. es8 d c4 bes8~ |bes2. as4 | g2 f'4. es8~ | es1 |}
		\relative c''{ es4. des8 c8 bes4 as8~ | as2. ges4 | ges4 f8 bes bes f as4~ | as1 |}
		<<{
		  \relative c''{as4 g8 bes~bes4. as8 | as4 g8 bes8~bes4. as8 | g1~ | g2. r4 |}
		}\\{
		  \relative c'{f4 es8 f~f4. f8 | f4 f8 f8~f4. es8 | d1~ | d2. r4 \bar "|."}
		}>>
	}
}


Music = {
	\Theme \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\set Staff.instrumentName = "Trumpet" \time 4/4
		\clef treble
		\transpose bes c'{
			\key c \minor
			\keepWithTag #'Trumpet \Music
		}
	}
>>






