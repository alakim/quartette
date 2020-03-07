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

PAI = {
	\tag #'Harmony {
		\HrmA  
		\HrmA  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle "A1" }
		\relative c'{ cis8 b16 a fis4 a8 fis4 cis'16 e | 
		              %a8 fis4 b16 fis \tuplet 3/2 { a8 fis e} \tuplet 3/2 {fis8 e fis} |
		              a8 fis4 b16 fis \tuplet 3/2 { f8 e d} \tuplet 3/2 {g8 fis8 a} |
		              b8 a4 cis16 b e8 cis4 fis16 e | cis'4^> cis^> cis^> r16 cis,16 b a \longBar }
		\relative c'{fis4 a8 fis4. r8 fis16 a | b4. cis8 a fis4.  |}
		 \relative c''{ r4 \tuplet 3/2{e8 d b} e8 d4  fis16 e |} 
		cis'''1 \bar "||"
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
		\HrmD \HrmD
		\HrmD \HrmD
		\HrmD \HrmD
		\HrmD \HrmD
		\chordmode{fis1:m}
	}
	\tag #'Guitar {
	  \relative c''{a8 gis e d2 b8 | cis1 | gis8 a b fis'4 eis cis8~ | cis1 \longBar}
	  \relative c''{a8 gis e d2 b8 | cis1 | gis8 a b fis'4 eis cis8~ | cis1 \longBar}
	  \relative c''{ eis8 cis eis cis eis cis eis cis |d8 b d b d b d b | cis8 a cis a cis8 a cis a |a4 cis d4 cis \longBar}
	  \relative c''{ eis8 cis eis cis eis cis eis cis |d8 b d b d b d b | cis8 a cis a cis8 a cis a |a4 cis d4 cis \longBar}
	  s1 \bar "||"
	}
	\tag #'Horn {
		\mark \markup{ \circle D }
		\relative c''{r1 | r4. fis,4. a4 | cis4. d4 a4. | fis1 \longBar }
		\relative c''{cis2 a | fis1 | cis'4. d4 a4. | fis1 \longBar }
	        \relative c''{a2 b4 cis | d4. fis,8 fis4. r16 e'32 e |e4. fis8 cis4 a | fis4 a b a \longBar}
	        \relative c''{a2 b4 cis | d1 |e2 fis4 e | d8 cis b a b2  \longBar}
	        <\parenthesize fis' a'>1 \bar "||"
	}
}


Music = {
	\PA \break
	\PAI \break
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
		\set Staff.instrumentName = "Guitar"
		\compressFullBarRests
		\keepWithTag #'Guitar \HornMusic
	}
	\new Staff{
		\clef treble 
		\time 4/4
		\key fis \minor
		\set Staff.instrumentName = "Flugelhorn"
		\compressFullBarRests
		\keepWithTag #'Horn \HornMusic
	}
>>
