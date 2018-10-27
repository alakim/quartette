\version "2.18.2"

\header{
	title="В Тверь!"
	composer="гр.Перьи Отметины"
	subtitle="варианты соло на трубе"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Hrm = \transpose bes c { \chordmode{c2 a:m f g}}

TrI = {
	\tag #'Harmony {
		\Hrm
		\Hrm
		\Hrm
		\Hrm
	}
	\tag #'Trumpet {
		\relative c'' {d8 d d cis16 d~d8 cis b a | b8 b16 b~b8 d cis b cis e \longBar }
		\relative c'' {d8 d d cis16 d~d4. cis8 | b8 a b d cis b cis e \longBar}
		\relative c'' {d8 d d a16 b~b2 |b16 b8 b16~b8 e8 d8 cis b cis \longBar} 
		\relative c'' {a16 a r8 d cis b4. a8 | b16 b8 b16~b8 d cis b16 cis~cis8 e \bar "|."}  
	}
}

Music = {
	\TrI
}


<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet"
		\clef treble
		\key d \major
		\time 4/4
		\keepWithTag #'Trumpet \Music
	}
>>
