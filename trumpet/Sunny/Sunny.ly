\version "2.18.2"


\header{
	title="Sunny" 
}


Solo = {
	% t=01:47
	\tag #'Harmony {\chordmode{
	    c1:m | es | as | g:7 |
	    c1:m | es | as | g:7 |
	    c1:m | es | as | des:9 |
	    d1:m5-7 | g:7 | c:m | as2 g |
	}}
	\tag #'Trumpet {
		\key c \minor
		\relative c'' {
		  <<{ g8 g4. r2 | r2  c8 bes g f }\\{ r2 r8 c8 es g8~ | g2 r2 }>>|
		  es4. c8 es4 c8 g' | 
		  <<{g2 r2}\\{r2 r8 d d16 d f8}>>
		  | \break
		}
		\relative c'' {
		  <<{ g8 g4. r2 | r2  c8 bes g f }\\{ r2 r8 c8 es g8~ | g2 r2 }>>|
		  | es4. c8 es4 c8 g' | 
		  <<{g2 r4. g8}\\{r2 r8 d f g}>> | \break
		}
		\relative c'' {g8 es f es~es4 c8 es| g8 es f es~es4  r8 g | g8 es f es~es c4. | bes'4 g f2 | \break}
		\relative c'' {g8 g4. g8 es4 f8~| f2 f4 g | es8 c4. r2 | r1 |}
	}
}

Music = {
	\Solo \break
}

<<
	\new ChordNames{
		\transpose bes c { \keepWithTag #'Harmony \Music}
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet" \time 4/4
		\clef treble
		\transpose bes c' {
		  \keepWithTag #'Trumpet \Music
		}
	}
>>






