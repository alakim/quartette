\version "2.16.2"

\header {
  title="Я верю тебе"
  composer = "гр. День Радости"
}

HVerse = \chordmode {
  a1:m | d:m | f | g |
}

HChorus = \chordmode {
  c1 | f | c | g |
}

Verse = {
	\tag #'Harmony { \HVerse \HVerse}
	\tag #'Clarinet {
		\mark "Intro"
		\relative c'{a1 | d | f2 c | d4 b a g |}
		\bar "||"
		\mark "...to chorus"
		\relative c'{a1 | d | s1 | s1 |}
		\bar "||"
	}
}

Passage = {
	\tag #'Harmony { \HVerse \HVerse}
	\tag #'Clarinet {
		\mark "Passage"
		\relative c'{c2. b8 c | d2. c8 d | e2. d8 e | g4 e g e |}
		\relative c''{a2 e | a2 e | r2 b | c2 d |}
		\bar "||"
	}
}

Chorus = {
	\tag #'Harmony {
		\HChorus
		\HChorus
		\HChorus
		\HChorus
		\HChorus
	}
	\tag #'Clarinet {
		\mark "Chorus"
		\relative c''{e1 | f4 e d c | e4. d8~d2 | e4 d c d |}
		\relative c''{e1 | f4 e d c | e4. d8~d2 | r4 e8 d8 c4 d |}
		\relative c''{c1 | d4 c d e | e4. d8~d2 | r4 e8 d8 c4 d |}
		\relative c''{c1 | d1 | c4. b16 c d4. c16 d | e4. d16 e g4 e |}
		\relative c'''{a1 | r8 e d c  d8 c b c | e4. d c4 | d4 c b c |}
		\bar "||"
	}
}


Music = {
	\Verse \break
	\Chorus \break
	\Passage \break
}

<<
	\new ChordNames{\transpose bes bes {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes bes{
		\set Staff.instrumentName="Clarinet"
		\time 4/4
		\clef treble
		\key c \major
		\keepWithTag #'Clarinet \Music
	}}
>>
