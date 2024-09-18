\version "2.18.2"

\header{
	title="Besame mucho"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HrmVerse = \chordmode{
	d2:m g:m6 | d1:m | g2:sus2 g:m | g1:m | g2:m/bes a:dim | g:m a:7 |
	d2:m a:7/e | d1:m/f | d2:7 c:sus2/e | d2:7/fis d4:7.9- d:aug | g2:sus2 g:m | g1:m |
	d1:m | e2:7.9- a:7 | d2:m g:m6 | d1:m |
}

HrmChorus = \chordmode{
	g1:m | d:m | a2:7 g:m6 | d1:m |
	g1:m | d:m | e2:7 bes:7 | a1:7 |
}


Verse = {
	\tag #'Harmony {
		\HrmVerse
	}
	\tag #'Trumpet {
		\relative c' {d4 d8 d~d2~ | d2 \tuplet 3/2 {d4 e f} | a2 g~ | g2. r4 | } \break
		\relative c'' { \tuplet 3/2 {g4 g g} \tuplet 3/2  {a4 a a } | \tuplet 3/2 {bes4 bes bes} \tuplet 3/2{cis4 d e}|}
		\relative c'' {a1~ | a2. r4 |} \break
		\relative c''{ d1~ | d2 c4 bes | a2 g~| g2. r4 |} \break
		\relative c'' {\tuplet 3/2 {d4 a f} \tuplet 3/2 {a4 f d} | \tuplet 3/2 {f4 e d} \tuplet 3/2 {e4 d cis} | d1~ | d2. r4 |}
	}
}

Chorus = {
	\tag #'Harmony {
		\HrmChorus
	}
	\tag #'Trumpet {
		\relative c''  {g4 g8 g \tuplet 3/2{g4 f e} | f4 f8 f \tuplet 3/2{f4 e d} | e8 e4. e8. e16 f8.  g16| a1 |} \break
		\relative c''  {g4 g8 g \tuplet 3/2{g4 f e} | f4 f8 f \tuplet 3/2{f4 e d} | \tuplet 3/2{e4 e e} \tuplet 3/2{f4 f f} | e1 |}
	}
}


Music = {
	\Verse \bar "||" \break
	\Chorus
	\bar "|."
}

<<
	\new ChordNames{\transpose d b{
		\keepWithTag #'Harmony \Music
	}}

	\new Staff{\transpose d b, {
		\set Staff.instrumentName="Trumpet"
		\clef treble
		\key d \minor
		\time 4/4
		\keepWithTag #'Trumpet \Music
	}}
>>

