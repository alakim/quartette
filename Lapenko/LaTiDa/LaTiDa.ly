\version "2.18.2"

\header {
  title = "Ла-Ти-Да"
  subtitle = "мелодия из сериала \"Внутри Лапенко\""
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

vI = \relative c'{r8 a | a'8. a16 a8 a b a16 fis~fis8 e8 | e8 d8~d2 }
vII = \relative c'{e16 e8 e8. d8 e2 | e16 e8 e8. d8 e d e d | d8 a4.}
vIII = {fis8 e16 e8. d8 fis8 e16 e8. d8}

hI = \chordmode {
  d1:maj b:m d1:maj b:m
	  e1:m e2:m a2:7 d1:maj 
}
PartI = {
	\tag #'Harmony { \chordmode{
	  s1 
	  \hI d1:maj \hI
	  
	  b1:m fis:m e2:m a:7 d1:maj
	  b1:m fis:m e2:m a:7 d1:maj
	}}
	\tag #'Vocal {
		s2. \vI \vI r4
		\vII r2 | 
		r2. \vI \vI r4
		\vII r8 
		
		\relative c'{fis8 d' cis | b2. r8 b | b8 a16 a16~a8 b fis4. fis8 | \vIII | fis8 a4. r8 }
		\relative c'{fis8 d' cis | cis8 d2. d8 | cis8 b16 b8. a8 a4. fis8 | \vIII | d1 \bar "|."}
		
	}
}



Music = {
	\PartI
}



<<
	\new ChordNames{ 
		\keepWithTag #'Harmony \Music
	}
	\new Staff{ 
		\clef treble 
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\time 4/4
		\transpose bes c'{
	          \key d \major
		  \keepWithTag #'Vocal \Music
		}
	}
	
>>


\markup {"* Аккорды выписаны в тональности гитары"}


