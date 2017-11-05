\version "2.18.2"

\header{
	title="Strange music"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

global = {
	\time 4/4
	\key a \minor
}

PI = {
	\tag #'Harmony {\chordmode{a1:m | d2:m e:7 |}}
	\tag #'Voice {\relative c'{e1 \longBar | f2 e}}
	\tag #'Bass {a1 | d4 f e b, 
		\once \override Staff.BarLine.bar-extent = #'(-3 . 3)
		|
	}
}

PII = {
	\tag #'Harmony {\chordmode{a2:m d:m | g e:7 |}}
	\tag #'Voice {\relative c'{e2 f \longBar | d2 b}}
	\tag #'Bass {a4 g d f | g4 b, e b, |}
}

PIII = {
	\tag #'Harmony {\chordmode{c2 d:m | g a:m | }}
	\tag #'Voice {\relative c'{e2 f | g4 b d e |}}
	\tag #'Bass {c4 e d f | g4 b, a2 |}
}

Music = {
	\PI
	\PIII
	\PII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\global
		\clef treble
		\set Staff.instrumentName="Violin"
		\keepWithTag #'Voice \Music
	}
	\new Staff{
		\global
		\clef bass 
		\set Staff.instrumentName="Double Bass"
		\keepWithTag #'Bass \Music
	}
>>
