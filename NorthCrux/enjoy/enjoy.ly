\version "2.18.2"

\header{
	title="Радуйся"
	composer="гр. Северный крест"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HI = \chordmode{
	c1 g a:m f
}

Riff = {
	\tag #'Harmony {\HI}
	\tag #'PianoR {
		\mark "Основной рифф"
		\relative c''{e8 c4 g e'8 c g | d'8 b4 g d'8 b g | c8 a4 c e8 c a | f'8 c a f' c a f' c |}
		\bar "||"
	}
	\tag #'PianoL {
		<e' c' g>1 | <d' b g> | <e' c' a> | <f' c' a>
		\bar "||"
	}
}

Chorus = {
	\tag #'Harmony {\HI}
	\tag #'Trumpet {
		\mark "Припев"
		\relative c''{r4 fis4 fis8 fis4.| e2. d8 e | d1 | g8 g4 g g4. }
		\bar "||"
	}
}

Piano = {
	\Riff \break
}

Trumpet = {
	\Chorus \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Piano
	}
	\new PianoStaff <<
		\new Staff{
			\set Staff.instrumentName="Piano"
			\time 4/4
			\clef treble
			\key c \major
			\keepWithTag #'PianoR \Piano
		}
		\new Staff{
			\clef bass
			\key c \major
			\keepWithTag #'PianoL \Piano
		}
	>>
>>

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Trumpet
	}}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key c \major
		\keepWithTag #'Trumpet \Trumpet
	}
>>

