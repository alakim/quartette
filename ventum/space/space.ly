\version "2.18.2"

\header {
  title = "Космос (Горизонт событий)"
  composer = "гр. Ventum"
}

outKey = bes % c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{a1:m | d1 | e:m | e:m | }

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

PII = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA    }
	\tag #'Horn {\transpose c' bes{
		\mark "Flugelhorn solo" 
		\relative c'{ fis2. e8 fis| gis1 | a2 fis | cis'2. a4 | \longBar}
		\relative c'{ b'4 d2 a4 | b2. b8 gis | a1 |}
			\relative c'{\tuplet 3/2 {fis8 e fis} \tuplet 3/2 {gis8 fis gis } \tuplet 3/2 {a8 gis a} \tuplet 3/2 {b8 a fis} } 
			\longBar
		\relative c'{ b'8 fis4 b2 a8 | gis2 \tuplet 3/2{d'4 b gis} | a1 | cis2. } 
		\relative c'{fis4 \longBar d'2 b4 a | gis2.. fis16 e | fis1 ~ | fis1 }
		\bar "||"
	}}
}

Music = {
	\PI
}

HornMusic = {
	\PII
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

<<
	\new ChordNames{\transpose \outKey c{
		\keepWithTag #'Harmony \HornMusic
	}}
	\new Staff{ \transpose \outKey c'{
		\clef treble 
		\set Staff.instrumentName = "Flugelhorn"
		\compressFullBarRests
		\time 4/4
		\key a \minor

		\keepWithTag #'Horn \HornMusic
		
	}}
>>


\markup{\column{
	\line{"Форма"}
	\line{"Guitar| break theme"}
	\line{"Clarinet | break theme"}
	\line{"Violin | break theme"}
	\line{"Violin/Flugelhorn| break theme"}
}}
