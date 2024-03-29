\version "2.18.2"

\header{
	title="Мельница"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmII = \chordmode{\transpose bes c{
	fis2:m b:m | a1 | d | fis:m |
}}

HrmIII = \chordmode{\transpose bes c{
	a1 | e2 fis:m |
}}

HVerseA = \chordmode{
	\transpose bes c { 
		fis2:m b:m | fis:m b:m | a1 | b2:m fis:m |
	}
}
HVerseB = \chordmode{
	\transpose bes c { 
		d1 | d2 a | b1:m | b2:m fis:m |
	}
}

HChorusA = \chordmode{
	\transpose bes c { 
		d1 | a | b:m | fis:m |
	}
}
HChorusB = \chordmode{
	\transpose bes c { 
		b1:m | fis:m | a2 b:m | fis1:m |
	}
}

Intro = {
	\tag #'Harmony {
		\HVerseA 
	\HrmII
	}
	\tag #'Horn {
		\mark "Intro"
		\relative c''{fis4. fis16 fis fis4 b, | cis4. cis16 cis cis4 b |}
		\relative c''{fis4. fis16 fis fis4 b, | cis2 r |}
	\longBar
	\relative c''{gis8 gis gis cis4 gis4. | b4. gis8~gis2 | b2~b8 gis8 b4 | dis2 r |}
		r1 |r1 |r1 |r1 |
		\bar "||"
	}
}

SoloII = {
	\tag #'Harmony {
		\HrmIII \HrmIII
		\HrmIII \HrmIII
	}
	\tag #'Horn {
	\mark "Solo II"
	\relative c''{fis8 fis4 fis b,4. | cis8 b4 gis b4. |}
	s1 | s1 
		\bar "||"
	}
}

Verse = {
	\tag #'Harmony {
		\HVerseA \HVerseA 
		\HVerseB \HVerseA 
	}
	\tag #'Horn {
		\mark "Verse"
		r1 |r1 |r1 |r1 \longBar
		r1 |r1 |r1 |r1 \longBar
		r1 |r1 |r1 |r1 \longBar
		r1 |r1 |r1 |r1 |
		\bar "||"
	}
}

Chorus = {
	\tag #'Harmony {
		\HChorusA 
		\HChorusA 
		\HChorusA 
		\HChorusB
	}
	\tag #'Horn {
		\mark "Chorus"
		\relative c''{b2. ais8 b | cis4. b16 ais b2 | r1 | r4. fis8^. gis^. ais^. b^. ais^. |} \longBar
 
		\relative c''{b4. ais16 b cis4. b16 cis | dis8 cis4 b8 ais b4. | b8 ais4 gis8 ais gis4 fis8 | gis2 r | } \longBar
		s1 |s1 |s1 |s1 \longBar
		s1 |s1 |s1 |s1 |
		\bar "||"
	}
}

ChorusII = {
	\tag #'Harmony {
		\HChorusA 
	}
	\tag #'Horn {
		\mark "Chorus II"
		\relative c''{b2. gis8 b | dis4. cis16 b cis2 | gis8 gis4. fis4 gis | dis2 r |} 
		\bar "||"
	}
}

Solo	= {
	\tag #'Harmony {
		\HChorusA 
		\HChorusA 
		\HChorusA 
		\HChorusB
	}
	\tag #'Horn {
		\mark "Solo"
		\relative c''{b8 ais4 gis8 e'4 dis4 | }
		|s1 |s1 |s1 \longBar
		s1 |s1 |s1 |s1 \longBar
		s1 |s1 |s1 |s1 \longBar
		s1 |s1 |s1 |s1 |
		\bar "||"
	}
}


Music = {
	\Intro \break
	\SoloII \break
	\Verse \break
	\Chorus \break
	\ChorusII \break
	\Solo \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key gis \minor
		\keepWithTag #'Horn \Music
	}
>>


\markup{
	Intro V C s V C s V C s	
}

