\version "2.18.2"

\header{
	title="Не обмануть судьбу"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{
	g2 bes | bes c |
}

HrmVerse = \chordmode{
	g2 bes | bes c |
	bes1 | c |
	bes1 | c |
	bes1 | c |
}

HrmChorus = \chordmode{
	g4. bes c1 | bes4. c g1 |
}

Intro = {
	\tag #'Harmony {\transpose bes c {
		% \HrmIntro
		\HrmChorus
	}}
	\tag #'Trumpet {
		\time 7/4
		\mark "Intro"
		% \relative c''{b4. a4 c4.~ | c4. a8~a2 | c4. a4 fis4.~ | fis1 |}
		\relative c''{b4. a cis4. a8~a2 | g4. a e1 |}
	}
}

IntroII = {
	\tag #'Harmony {\transpose bes c {
		\HrmIntro
		\HrmIntro
	}}
	\tag #'Trumpet {
		\time 4/4
		\mark "Intro 2"
		\relative c''{a4. c8 a2 | g4. a8~a2 |}
		\relative c''{a4. c8 a2 | d1 |}
	}
}

Verse = {
	\time 4/4
	\tag #'Harmony {\transpose bes c {
		\HrmVerse
	}}
	\tag #'Trumpet {
		\mark "Куплет"
		s1 | s1 | s1 | s1 |
		s1 | s1 | s1 | s1 |
	}
}

Chorus = {
	\tag #'Harmony {\transpose bes c {
		\HrmChorus
		\HrmChorus
		\HrmChorus
		\HrmChorus
	}}
	\tag #'Trumpet {
		\mark "Припев"
		\time 7/4 % 3+4/4
		s1 s2. | s1 s2. | 
		s1 s2. | s1 s2. | 
		s1 s2. | s1 s2. | 
		s1 s2. | s1 s2. | 
	}
}

Music = {
	\Intro \bar "||" \break
	\IntroII \bar "||" \break
	\Verse \bar "||" \break
	\Chorus \bar "||" \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key a \major
		\keepWithTag #'Trumpet \Music 
	}
>>

