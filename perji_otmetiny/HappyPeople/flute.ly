\version "2.18.2"

\header {
  title = "Песня счастливых людей"
  subtitle = "Партия флейты"
  composer = "гр. Перьи отметины"
}

outKey = c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

longBarBr = {\longBar \break}

HrmA = \chordmode{s1 s1 s1 s1}


PI = {
	\tag #'Harmony {\HrmA}
	\tag #'Flute { 
		\mark \markup{\circle "1"} 
		\relative c''{r2 r8 fis8 e d | a8 fis' e d b fis'8 e d | e8 fis e d r8 fis8 e d |
			b8 g' fis e fis e fis d~ | d1  |
		}
		
		\bar ":|."
	}
}

PII = {
	\tag #'Harmony {\HrmA}
	\tag #'Flute { 
		\mark \markup{\circle "2"} 
		\relative c'''{a2.^"Solo" fis8 a | b8 fis4 e d4 b8 | d8 e4 fis e d8 | e1 \break}
		\relative c'''{a8 fis a g4 e8 g fis~ | fis8 e fis d4 cis8 b a |  }
		\relative c''{b8 d4. g8. fis16 e8 d | cis1 \break }
		\relative c'''{b4. a8 \tuplet 3/2 {g4 fis e} | cis'4 b8 cis a4 d,8 e | }
		\relative c''{fis4 g8 fis ais4 g8 fis | b1 \break }
		\relative c'''{d4. a4. fis4 | b8 a b fis4 cis8 d cis | b8 d4 g fis8 e8. d16 | cis4. b16 cis d4. cis16 d | e4. d16 e a2 | }
		
		\bar "||"
	}
}


Music = {
	\PI \break
	\PII \break
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key d \major
		\set Staff.instrumentName = "Flute"
		% \compressFullBarRests

		\keepWithTag #'Flute \Music
		
	}
>>
