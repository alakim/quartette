\version "2.16.2"

\header{
  title = "Черные доски (recorder)"
  composer = "Перьи Отметины"
}

HBridgeI = \chordmode{
	b2:m fis:m e b:m 
}
RBridgeI = {
	\mark "Прг.1"
	\relative c''{fis2~ | fis4 cis4 | e4 fis | fis2 | d8 cis b4 | cis4 e | e4 <b gis> | a2 \bar "||"}
}

HBridgeII = \chordmode{
	fis1:m a d2. b1:m
}
RBridgeII = {
	\mark "Прг.2"
	\relative c''{ a4. b8 a4 fis | a4. b8 a4 fis | \time 3/4 a4. b8 fis4 | \time 4/4 b1 \bar "||"}
	
}

HRefrain = \chordmode{
	b1:m d e d b:m a2 d d e b1:m
}
RRefrain = {
	\mark Refrain
	\relative c''{fis2._"из света" cis8 b | cis4. a4. fis4 | b2. gis8 e | a4. fis d4 |}
	\relative c''{b8_"сажень" a b fis4 e8 fis4 | cis'8 a e fis8~fis2 | d8_"кротко" e fis b4 gis8 e4 | fis1 |}
}

HBridgeIII = \chordmode{
	fis2:m e d e
}
RBridgeIII = {
	\mark "Прг.3"
	\relative c''{ a8 d cis a b16 a fis8 a b | a8 d cis a b16 a fis8 b2 \bar "||"}
	
}

<<
	\new ChordNames{
		\HBridgeI \HBridgeI 
	}
	\new Staff{
		\clef treble
		\time 2/4 \key fis \minor
		\set Staff.instrumentName = "Recorder S"
		\RBridgeI
	}
>>

\markup{"Прг.1 - то же и на \"Совсем другие глазки\""}

<<
	\new ChordNames{
		\HBridgeII 
	}
	\new Staff{
		\clef treble
		\time 4/4 \key fis \minor
		\set Staff.instrumentName = "Recorder S"
		\RBridgeII
	}
>>

<<
	\new ChordNames{
		\HBridgeIII 
	}
	\new Staff{
		\clef treble
		\time 4/4 \key fis \minor
		\set Staff.instrumentName = "Recorder S"
		\RBridgeIII
	}
>>

<<
	\new ChordNames{
		\HRefrain
	}
	\new Staff{
		\clef treble
		\time 4/4 \key fis \minor
		\set Staff.instrumentName = "Recorder S"
		\RRefrain
	}
>>

<<
	\new Staff{
		\clef treble
		\time 4/4 \key fis \minor
		\set Staff.instrumentName = "Recorder S"
		\relative c''{a8_"под половицей" d cis a b8 a gis4_"и-" | b4_"ко-" a2._"на" |}
	}
>>

\markup{\column{
	\line{"Форма: прг2 прг1 К1 Пр прг1 К2 Пр прг2 прг1 К3 Пр прг1"}
	\line{"Coda: прг1 прг3 прг3/прг1"}
}}
