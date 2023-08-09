\version "2.18.2"

\header{
	title="Корабль в лето"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{
	
}
%{
Intro = {
	\tag #'Harmony {
		\HrmIntro \HrmIntro
	}
	\tag #'Horn {
		\mark "Intro"
		s1 | s1 | s1 | s1 | 
		\bar "||"
	}
}
%}

HrmVerse = \chordmode{
	g2 c | d g | g2 c | d g |
	\longBar
	b1 | b2 c | b1 | c |
	\longBar
	c2 d | g1 | g1 | g1 |
}

Verse = {
	\tag #'Harmony {
		\HrmVerse
	}
	\tag #'Horn {
		\mark "Verse"
		s1 | s1 | s1 | s1 |
		\relative c'{eis1 | fis | gis1 | a |}
		s1 | s1 | s1 | s1 |
		\bar "||"
	}
}

HrmChorus = \chordmode{
	c2 d | g1 |
	c2 d | g1 |
	\longBar
	c2 d | g1 |
	c2 d | g1 |
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
	}
	\tag #'Horn {
		\mark "Chorus (x2)"
		\relative c''{cis2 b | cis1 | a2 b | a1 |}
		s1 | s1 | s1 | s1 |
		\bar "||"
	}
}


Music = {
%	\Intro \break
	\Verse \break
	\Chorus\break
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key d \major
		\keepWithTag #'Horn \Music
	}
>>


\markup{
}

