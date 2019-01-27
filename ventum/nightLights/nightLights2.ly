\version "2.18.2"


\header {
  title = "Ночные огни"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmI = \chordmode{
	b1:m a g fis:m
}

%{
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

SoloII = {
	\tag #'Harmony {
		\HrmI \HrmI
	}
	\tag #'Clarinet {
		\mark Solo
		\relative c'{
			r8 b e16 cis a8  fis'8 d4 a'8~ |
			a4. e4. r8 fis16 e | fis4. d2 e8 | cis2. r8 b16 cis \longBar
			d4. e16 cis fis8 d4 b'8 | fis8 e8~e16 ais, cis e g4~g16 c, es fis |
			a8 fis4. d4 b | cis 1 \bar "||"
		}
	}
}
%}

SoloIII = {
	\tag #'Harmony {
		\HrmI \HrmI
	}
	\tag #'Clarinet {
		\relative c'{
			fis2~fis8 fis, d'16 cis b8 | e8 cis16 a~a2~a16 e fis a |
			b2 g'4. d8 | cis1 \longBar
		}
		\relative c'{
			fis2~fis8 fis, d'16 cis b8 | e8 cis16 a~a4 a'4. g16 fis |
			b2 d4. cis16 d | fis1 \bar "||"
		}
	}
}


Music = {
	% \SoloI
	% \SoloII
	\SoloIII
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


