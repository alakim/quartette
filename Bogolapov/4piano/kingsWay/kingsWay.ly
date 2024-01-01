\version "2.18.2"

\header{
	title="Путь волхвов"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

arpA = \relative c'{ r16 a e' a, r16 a e' a, r16 c g' c, r d g d'|}
arpAfis = { \relative c' { r16 a e' a,  r a e' a,  r c g' c, } \clef bass \relative c{r16 fis c' e |} }
arpE = \relative c{ r16 e bes' d   bes e, bes' d  \ottava #1 r c f c'  f, c f c' \ottava #0 |}
bassA = \relative c{a4 g a d |}
bassC  = { <c, c>2 <d, d> }

Intro = {
	\tag #'Violin {
		\mark "Вступление"
		\relative c' {a2~a4 c8 a | d1 | a2~a4 c8 a \bar"||"}
	}
	\tag #'PianoR {
		\arpA \arpA \arpA
	}
	\tag #'PianoL {
		\bassA \bassA \bassA
	}
}

Verse = {
	\tag #'Violin {
		\mark "Куплет"
		\relative c' { d1 | r | r | }
		\relative c' { a1 | e' | g4. e8 a2 | }
		\relative c'' {g4. c16 b a2 | a,1 | e'1 |}
		\relative c' {r2 r8 e a4 | r2 r8 e a,4 | r2 r4 a | r2 r4 a' \bar ":|."}
	}
	\tag #'PianoR {
		\arpA \arpA \arpA
		\arpA \arpAfis \arpE \arpE
		\clef treble \arpA \arpAfis
		\arpE \arpE \arpE \arpE
	}
	\tag #'PianoL {
		\bassA \bassA \bassA
		\bassA \bassA \bassC
		\bassC \bassA \bassA
		\bassC \bassC \bassC \bassC 
	}
}

Solo = {
	\tag #'Violin {
		\mark "Проигрыш"
		\relative c''{ e4. d8 e8 c16. c32 d8 c16. b32 | c8 g4 f8 e d16 e16~e4 | g4 b8 c4 e8 a8 g | a4. a,8~a b16. c32 d8 c16. b32 |}
		\relative c''{ c8 d4 e d8 e16. d32 e16. d32 | a4. e8~e8. d16 e16. d32 e16. d32 | a4. a8~a g4 fis16 g | a1^"К куплету..." \bar"||"}
	}
	\tag #'PianoR {
		\clef treble
		\arpA \arpA \arpA \arpA 
		\arpA \arpA \arpA \arpA 
	}
	\tag #'PianoL {
		\bassA \bassA \bassA \bassA 
		\bassA \bassA \bassA \bassA 
	}
}
Music = {
	\Intro \break
	\Verse \break
	\Solo \break
}

<<
	\new Staff{
		\set Staff.instrumentName="Скрипка"
		\time 4/4
		\clef treble
		\key a \minor
		\keepWithTag #'Violin \Music 
	}
	\new PianoStaff <<
		\new Staff = "up"{
			\set Staff.instrumentName="Ф-но"
			\time 4/4
			\clef treble
			\key a \minor
			\keepWithTag #'PianoR \Music 
		}
		\new Staff = "down"{
			\time 4/4
			\clef bass
			\key a \minor
			\keepWithTag #'PianoL \Music 
		}
	>>
>>

