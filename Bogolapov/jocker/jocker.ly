\version "2.18.2"

\header{
	title="Скоморох"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{
	g2:m f | bes1 |
	f1 | bes1 |
	g2:m f | bes1 |
	d1:7 | g1:m |
}

HrmVerse = \chordmode{
  g2:m bes | d g:m |
  f1 | bes |
  c:m | g:m |
  c2:m d:7 | g1:m |
  d1:7 | g1:m |
  c2:m d:7 | g1:m |
  d1:7 | g1:m |
}

HrmChorus = \chordmode{
  f2 bes | f bes |
  c2:m g:m | f bes |
  c2 bes | d:7 g:m |
  c2:m g:m | d:7 g:m |

  % тара-та-та
  c2:m g:m | d:7 g:m |
  c2:m g:m | d:7 g:m |
}

Intro = {
	\tag #'Harmony {\transpose bes c {
		\HrmIntro
	}}
	\tag #'Trumpet {
		\mark "Intro"
		\relative c' {c4. b8~b2 | e1 | d8 b4 d8 b4 f' | e1 |}
		\relative c' {c8 b4 c4 d4. | f2 e | f8 d4 b8 gis4 e' | a,1 |}
	}
}

Solo = {
	\tag #'Harmony {\transpose bes c {
		\HrmIntro
		\HrmIntro
	}}
	\tag #'Trumpet {
		\mark "Solo"
		\relative c'{c8 a4 b8 c4 d | f4. e8~e2 | g8 e4 d8 e4 f | e1 |}
		\relative c'{ c8 b4 c8 d8 b4 d8  | e4. c8~c2 | f8 d4 b8 d4 f | e1 |}
		\break
		\relative c'{ s1 | s1 | s1 | s1 |}
		\relative c'{ s1 | s1 | s1 | s1 |}
	}
}

Verse = {
	\time 4/4
	\tag #'Harmony {\transpose bes c {
		\HrmVerse
	}}
	\tag #'Trumpet {
		\mark "Куплет"
		\relative c'{r1  | r1 | r1 | r4 e8 d e4 r |}
		r1 | r1 |
		\relative c'{ f2. d4 | e1 | f4 d b e | a,4 b c d |}
		\relative c'{ f2. d4 | e1 | f4 d b e | a,1 |}
	}
}

Chorus = {
	\tag #'Harmony {\transpose bes c {
		\HrmChorus
	}}
	\tag #'Trumpet {
		\mark "Припев"
		\relative c''{g2 e | d2 e | f2 e | b2 c |}
		\relative c'{f2 e | d2 c | a2 c | d2 a |}
		
		\relative c'{d2^"Тара-та" c | b4 e a,2 | a2 c | b4 e a,2|}
	}
}

Music = {
	\Intro \bar "||" \break
	\Verse \bar "||" \break
	\Chorus \bar "||" \break
	\Solo \bar "||" \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}

	\new Staff{
		\set Staff.instrumentName="Clarinet"
		\clef treble
		\key a \minor
		\keepWithTag #'Trumpet \Music 
	}
>>

