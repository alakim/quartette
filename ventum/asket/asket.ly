\version "2.18.2"

\header {
  title = "Аскет"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode {\transpose bes c{
	e1:m9 a:m7 g b
}}

HrmB = \chordmode {\transpose bes c{
	g1 a:m/fis a:m7 b
}}

HrmC = \chordmode {\transpose bes c{
	e1:m7
}}

HrmD = \chordmode {\transpose bes c{
	e1:m9 a:m7
}}

PA = {
	\tag #'Harmony {
		\HrmA  
		\HrmA  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle A }
		\relative c'{ r2. r8 cis16 e | a4. fis8~fis4. fis16 a | b4. cis8~cis2 | fis16 e16. fis32 e cis'~ cis2 r16 cis,, e fis \longBar}
		\relative c''{a8. fis16 a8 fis a fis4 r32 e fis a | b4. cis8 a fis4. | cis'4. e16 cis e8 fis4 e16 fis | cis'1 |}
		\bar "||"
	}
}

PB = {
	\tag #'Harmony {
		\HrmB
	}
	\tag #'Clarinet {
		\mark \markup{ \circle B }
		\relative c'{ r1 | r1 | r1 | r4 \tuplet 3/2 {eis8 gis b} cis2 | }
		\bar "||"
	}
}

PC = {
	\tag #'Harmony {
		\HrmC
		\HrmC
		\HrmC
		\HrmC
	}
	\tag #'Clarinet {
		\mark \markup{ \circle C }
		\relative c{ s1 s1 s1 s1 }
		\bar "||"
	}
}

PD = {
	\tag #'Harmony {
		\HrmD
		\HrmD
	}
	\tag #'Clarinet {
		\mark \markup{ \circle D }
		\relative c{ fis'1^"guitar solo" ~ fis1_"ad lib." ~ fis1 ~ fis1}
		\bar "||"
	}
}


Music = {
	\PA \break
	\PB \break
	\PC \break
}

HornMusic = {
	\PD \break
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key fis \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>

<<
	\new ChordNames{
		\keepWithTag #'Harmony \HornMusic
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key fis \minor
		\set Staff.instrumentName = "Flugelhorn"
		\compressFullBarRests
		\keepWithTag #'Clarinet \HornMusic
	}
>>
