\version "2.18.2"

\header {
  title = "Не всё"
  composer = "гр. Перьи Отметины"
}

outKey =  bes %c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

phraseEnd = {\longBar }

HrmA = \chordmode {\transpose c bes{
	cis2:m e b fis
}}

IntroHI = {
	\mark "Intro"
	\override NoteHead.font-size = #-5
	\relative c'''{
		gis8^"(flute)" e4 cis8 b'8 gis4 e8 | fis8 dis4 b8 cis4 cis16 e fis8 | 
		gis8 e4 gis8 b8 gis4. | r8 dis'8 cis b ais8 b4 ais8 |
	}
	\relative c'''{
		gis8 e4 cis8 b'8 gis4 e8 | fis8 dis4 b8 cis4 cis16 e fis8 | 
		gis1 | fis1\trill \bar "||"
	}
	\revert NoteHead.font-size 
}

IntroLowII = {
	\relative c''{ e8 cis4 gis8 gis8 b4 gis8 | dis'8 b4 fis8 ais2 \longBar}
	\relative c''{ e8 cis4 e8 e8 b4. | r8 fis'4. ~fis2 \longBar}
	\relative c''{ e8 cis4 gis8 gis8 b4 gis8 | dis'8 b4 fis8 ais2 \longBar}
	\relative c''{ e1 | fis1 \bar "||"}
}

Intro = {
	\tag #'Harmony { \HrmA \HrmA \HrmA \HrmA    }
	\tag #'Voice {
		\key d \major
		\transpose c' bes{ << { \IntroHI } \\ { \IntroLowII } >> }
	}
}

Music = {
	\Intro
}

<<
	\new ChordNames{\transpose \outKey c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ \transpose \outKey c'{
		\clef treble 
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\time 4/4

		\keepWithTag #'Voice \Music
		
	}}
>>
