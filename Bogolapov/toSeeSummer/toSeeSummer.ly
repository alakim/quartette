\version "2.18.2"

\header{
	title="Видеть лето"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{
	c2 d | g1 |
}

Intro = {
	\tag #'Harmony {
		\HrmIntro \HrmIntro
		\longBar
		\HrmIntro \HrmIntro
	}
	\tag #'Horn {
		\mark "Intro"
		\relative c'{fis2 gis | a1 |}
		\relative c''{a2 b | cis1 |}
		s1 | s1 | s1 | s1 | 
		\bar "||"
	}
}

HrmVerse = \chordmode{
	c2 f:maj | c1 |
	a1:m | d |
	c2 g | d g |
	c1 | d |
}

Verse = {
	\tag #'Harmony {
		\HrmVerse
		\longBar
		\HrmVerse
	}
	\tag #'Horn {
		\mark "Verse"
		s1 | s1 | s1 | s1 | 
		s1 | s1 | s1 | s1 | 
		s1 | s1 | s1 | s1 | 
		s1 | s1 | s1 | s1 | 
		\bar "||"
	}
}

HrmChorus = \chordmode{
	c1 | d | g | c |
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
	}
	\tag #'Horn {
		\mark "Chorus (x4)"
		s1 | s1 | s1 | s1 | 
		\bar "||"
	}
}


Music = {
	\Intro \break
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

