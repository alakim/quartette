\version "2.12.2"

\header {
	title = "All the Things You Are"
	composer = "J. Kern"
}


Harmony = \chordmode{
	f1:m7 bes:m7 es:7 as:7+
	des:7+ d2:m7 g:7 c1:7+ ~ c1:7+

	c1:m7 f:m7 bes:7 es:7+ as:7+ a2:m7 d:7 g1:7+ g1:7+
	a1:m7 d:7 g:7+ g:7+ fis:m7 b:7 e:7+ c:5+7

	f1:m7 bes:m7 es:7 as:7+ des:7+ ges:7 c:m7 b:dim bes:m7 es:7 as:7+ as:7+ 
}


Theme = {
	\relative c'' {as1 | des2. as4 | g4 g g g | g4 c2 g4 | f4 f f f | f4 b2 f4 | e1~ |e  \bar "||"}
	\relative c' { es1 | as2. es4 | d4 d d d | d4 g2 d4 | c4 c c c | \tuplet 3/2{c4 d es} d4 c | b1~ | b4 d g d' \bar "||" }

	\relative c''{ d2 c~ | c4 es, e c' | b1~ | b4 d, g b | b2 a~ | a4 bes, b a' | as1~ | as \bar "||" }

	\relative c''{ as1 | des2. as4 | g4 g g g | g4 c2 g4 | f1 | es'2 des | es,4 es \tuplet 3/2{es4 es es} | g2. f4 | des4 des f as | f'2 g, | as1~ | as1 \bar "|."}

}


<<
	\new ChordNames{\transpose bes c'{
		\Harmony
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Trumpet"
		\clef treble \time 4/4 \key f \minor
		\Theme 
	}}
>>
