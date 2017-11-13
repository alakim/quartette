\version "2.18.2"

outKey = bes % c'

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Теплым солнцем"
}

Horn = {
	\tag #'Harmony {\chordmode{
		s1 s1 s1 s1  
		\break
		s1 s1 s1 s1  
	}}

	\tag #'Voice {
		\time 4/4
		\key b \major
		\relative c'{
			fis8 gis4 ais8 b2 | dis8 cis4 b8 ais b4 gis8 | gis2 fis | r1 \longBar
			fis8 gis4 ais8 b2 | dis8 cis4 b8 ais b4 gis8 | gis2 fis | r1 \longBar
			e8 gis4 b8 dis8 b4 gis8 | fis1 | gis4. dis'8 ~ dis2 | r1 \longBar
			e1 | b1 | cis | r1 \bar "||"
		}

	}
}

Music = {
	\Horn
	\break
}

<<
	\new ChordNames{\transpose \outKey bes{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose \outKey bes{

		\set Staff.instrumentName="Trumpet"
		\clef treble
		\keepWithTag #'Voice \Music
	}}
>>
