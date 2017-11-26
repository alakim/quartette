\version "2.18.2"

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Легенда"
	composer="гр. Перьи Отметины"
}
HrmI = \chordmode{
	b1:m b:m fis:m fis:m
}

PI = {
	\tag #'Harmony {\chordmode{
		\HrmI \HrmI 
	}}

	\tag #'Voice {
		\time 4/4
		\key a \major
		\repeat volta 2 {\relative c''{\tuplet 3/2 { e2 d cis} | d1 | \tuplet 3/2 { d2 cis b } | cis1 } }
		\repeat volta 2 {\relative c''{\tuplet 3/2 { cis2 b a } | b1 | \tuplet 3/2 { a2 gis e } | fis1 } }
	}
}

PII = {
	\tag #'Harmony {\chordmode{
		e1 e 
		s s
	}}
	\tag #'Voice {
		\repeat volta 2 {
			\relative c''{ cis4. b a8 b~ | b1 | }
		}
		\alternative{
			{ \relative c''{ a4. gis e8 fis~ | fis1 | }}
			{ \relative c''{ a4. gis~gis4 | cis,4. e~e4 \bar "|." }}
		}
	}
}

Music = {
	\PI
	\break
	\PII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\keepWithTag #'Voice \Music
	}
>>
