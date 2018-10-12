\version "2.18.2"


\header{
	title="Средневековый город"
	composer="гр.Vita Nova"
	subtitle="кавер на Зимовье Зверей"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})
doubleBar = \bar "||"


HrmVerse = \chordmode{
	c1:m c1:m f1:m f1:m f1:m \longBar
	f1:m f1:m f1:m d:m7.5- g:7 \longBar
	c1:m c1:m c1:m f1:m f1:m \longBar
	f1:m f1:m f1:m d:m7.5- g:7 
}

HrmRefrain = \chordmode{
	c1:m c1:m7 f1:m f1:m \longBar
	d1:m7.5- g1:7 c1:m gis2 g2:7 \longBar
	c1:m c1:m7 f1:m f1:m \longBar
	f1:m d1:m7.5- gis1 g1:7 
}

Intro = {
	\tag #'Harmony {\chordmode{
		R1*4 % percussion
		R1*4 % percussion with tambourine
		s1 s1 s1 s1 
	}}
	\tag #'Flute {
		\mark \markup Intro
		R1*4 % percussion
		R1*3 % percussion with tambourine
		\relative c''{r2 r8 g8 as bes | 
			c4 g es'8 d c bes | as4. c8 g4. c16 bes |
			c4 as f'4. es8 | d2. r4 |
		}
		\doubleBar
	}
}

VerseI = {
	\tag #'Harmony {\chordmode{
		% R1*5*4
		\HrmVerse
	}}
	\tag #'Flute {
		\mark \markup \circle "v1"
		R1*5*4
		\doubleBar
	}
}

RefrainI = {
	\tag #'Harmony {\chordmode{
		% R1*4*4
		\HrmRefrain
	}}
	\tag #'Flute {
		\mark \markup \circle "r1"
		R1*4*4
		\doubleBar
	}
}

VerseII = {
	\tag #'Harmony {\chordmode{
		R1*5*4
	}}
	\tag #'Flute {
		\mark \markup \circle "v2"
		R1*5*4
		\doubleBar
	}
}

RefrainII = {
	\tag #'Harmony {\chordmode{
		R1*4*4
	}}
	\tag #'Flute {
		\mark \markup \circle "r2"
		R1*4*4
		\doubleBar
	}
}

Solo = { %t=03:03
	\tag #'Harmony {\chordmode{
		c1:m es1 g1
		as:1 as:1 as:1 
		d1:m7.5- g1:7 

		%t=03:21
		c1:m c1:m c1:m 
		%t=03:28
		d1:m7.5- d1:m7.5- g1
		d1:m7.5-  g1 g1
		
		%R1*5*2
	}}
	\tag #'Flute {
		\mark \markup Solo
		R1*8
		\longBar
		R1*9
		\doubleBar
	}
}

VerseIII = {
	\tag #'Harmony {\chordmode{
		R1*5*4
	}}
	\tag #'Flute {
		\mark \markup \circle "v3"
		R1*5*4
		\doubleBar
	}
}

RefrainIII = {
	\tag #'Harmony {\chordmode{
		R1*4*4
	}}
	\tag #'Flute {
		\mark \markup \circle "r3"
		R1*4*4
		\bar "|."
	}
}



Song = {
	\Intro
	\VerseI \RefrainI
	\VerseII \RefrainII
	\break
	\Solo
	\break
	\VerseIII \RefrainIII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Song
	}
	\new Staff{
		\set Staff.instrumentName = Flute
		\compressFullBarRests
		\time 4/4
		\key c \minor
		\keepWithTag #'Flute \Song
	}
>>
