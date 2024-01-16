\version "2.18.2"

\header{
	title="Я рада"
	composer="О.Серебряная"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Solo = {
	\tag #'Harmony {\transpose bes c {
		s1 s1 s1 s1 
		s1 s1 s1 s1 
	}}
	\tag #'Trumpet {
		\mark "Solo"
		\time 4/4
		\partial 2 {
			\relative c''{fis4 r}
		}
		\relative c''{r8 f fis16 d~d8 fis4 r | r8 f fis16 d~d8 fis4 r8 f |}
		\relative c''{fis4 r8 d r fis r16 b r8 | d8 cis b16 fis~fis8 f4 r | r2 e8. fis16 r8 g | b8. d16~d8 cis e,8. fis16 r8 g |}
		\relative c'''{d8 cis16 b r4 g8. fis16 r8 g | r8 a b16 g~g8 fis cis bes16 cis r8 | g'8 d b16 d~d8 r2 |}
	}
}

Music = {
	\Solo \bar "||" \break
}

<<
%{
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
%}

	\new Staff{\transpose bes c{
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key d \major
		\keepWithTag #'Trumpet \Music 
	}}
>>

