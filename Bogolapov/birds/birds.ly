\version "2.18.2"

\header{
	title="Про птиц"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{
	e2 | b | e | b |
	e | b | a | b |
	% a | b | a | b |
	% e | b | a | b |
}

HrmVerse = \chordmode {
	e2 | b | a | b |
	e2 | b | a | b |
	b | e | b | e |
	b | cis | b | a |
}
HrmChorus = \chordmode {
	b2 | e | b | e |
	b | cis | b | a |
}

Solo = {
	\tag #'Harmony {\transpose bes c {
		\HrmIntro
	}}
	\tag #'Trumpet {
		\mark "Соло"
		\relative c''{ cis4 b8. ais16 gis4 fis8 gis |}
		\relative c''{ cis4 b8. ais16 gis2 |}
		\relative c''{ cis4 b8. ais16 gis4 fis8 gis |}
		\relative c'{ fis2 gis | }
	}
}

Verse = {
	\tag #'Harmony {\transpose bes c {
		\HrmVerse
	}}
	\tag #'Trumpet {
		\mark "Куплет"
		r2 | r2 | r2 | r2 | 
		r2 | r2 | r2 | r2 | 
		\relative c'{ eis2 | fis2 | gis | ais | }
		\relative c''{ b2 | fisis | gis | fis4 ais | cis4 fis |}
	}
}

Music = {
	\Solo \break
	\Verse \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}

	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 2/4
		\clef treble
		\key fis \major
		\keepWithTag #'Trumpet \Music 
	}
>>

