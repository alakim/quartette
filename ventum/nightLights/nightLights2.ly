\version "2.18.2"


\header {
  title = "Ночные огни"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmI = \chordmode{
	b1:m a g fis:m
}

SoloI = {
	\tag #'Harmony {
		s1 \HrmI
	}
	\tag #'Clarinet {
		\relative c'{r2. r8 b | 
			e4. cis16 a fis'8 d16 b e8 cis |
			d4. cis16 b cis4. b16 cis | d4. b16 d e cis e8 fis4~ | 
			fis2 e \longBar
		}
	}
}


Music = {
	\SoloI
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet"
		\time 4/4
		\key b \minor
		\keepWithTag #'Clarinet \Music
	}
>>


