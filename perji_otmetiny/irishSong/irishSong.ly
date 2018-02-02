\version "2.18.2"

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Irish Song"
	composer="гр. Перьи Отметины"
}

OboeI = {
	\tag #'Harmony {\chordmode{
	}}

	\tag #'Voice {
		\time 6/8 
		\key g \major
		\mark "Main riff"
		\relative c''{
			g4. d' | e d | c4. d | b4 a8 \mordent g4. \longBar
			g4. d' | e d | c4. d | b4 g8~ g4. \bar "||"
		}
	}
}

OboeII = {
	\tag #'Harmony {\chordmode{
	}}

	\tag #'Voice {
		\mark \markup{\circle 2}
		\relative c''{
			a4.^"по переулочкам..." c | b \mordent g \bar "||"
		}
	}
}



Music = {
	\OboeI
	\break
	\OboeII
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{

		\set Staff.instrumentName="Oboe"
		\clef treble
		\keepWithTag #'Voice \Music
	}
>>
