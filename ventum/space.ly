\version "2.18.2"

\header {
  title = "Космос (Горизонт событий)"
  composer = "гр. Ventum"
}

outKey = bes % c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{a1:m | d1 | e:m | a:m | }

phraseEnd = {\longBar }

PI = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA    }
	\tag #'Clarinet {
		\mark "Clarinet solo" % t=01:25
		\relative c'{ e2. c16 d e8 | fis1 | g4. e8~e2 | r4 e8 fis g fis g a \phraseEnd } 
		\relative c''{ a2 c4. d8 | fis,2. r8 e'8~ | e8 d4 c b4. | d8 e8~e2. \phraseEnd} 
		\relative c''{ e8 d c16 d e8~e2~ | e8 d4. r8 d16 b a fis d8 | e1 | \tuplet 3/2 {e8 fis g} \tuplet 3/2 {e8 g a} \tuplet 3/2 {g8 a b} a16 b c d \phraseEnd}
		\relative c'' {\tuplet 3/2 {e8 d e} fis8 e4 e4. | d8 fis4. d4 c | e1~ | e1 \phraseEnd}
	}
}

Music = {
	\PI
}

<<
	\new ChordNames{\transpose \outKey c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ \transpose \outKey c'{
		\clef treble 
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\time 4/4
		\key a \minor

		\keepWithTag #'Clarinet \Music
		
	}}
>>
