\version "2.18.2"

\header {
  title = "Пускай"
  composer = "гр. День Радости"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmVerse = \chordmode {
  gis1:m | cis:m | fis | gis:m |
  gis1:m | cis:m | fis | b |
}

HrmChorusBase = \chordmode {
  b1 | e2. b4 | b1 | e2 b |
  b1 | e2. b4 | e2 fis2 |
}

HrmChorus = \chordmode {
  \HrmChorusBase b1 |
  % \HrmChorusBase as1:m |
}

HrmCoda = \chordmode {
  b1 | e2 b |
}

PVerse = {
	\tag #'Harmony {\HrmVerse \HrmVerse \chordmode{b1}}
	\tag #'Vocals {
		\mark \markup { "Verse" }
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar  s1 | 
		
	}
	\tag #'Trumpet {
		r1| r1 | r1 | \relative c' {r4 dis4 fis gis8 gis~| gis2 r2 |}
	        r1 | r1 | \relative c' {r4 fis4 e fis8 gis~| gis2 r2 |}
	        r1 | r1 | \relative c' {r4 dis4 fis gis8 gis~| gis2 r2 |}
	        r1 | r1 | \relative c'' {b2~b8 cis b ais | b1 }
		\bar "||"
	}
}

PChorus = {
	\tag #'Harmony {\HrmChorus }
	\tag #'Vocals {
		\mark \markup { "Chorus" }
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 | 
		
	}
	\tag #'Trumpet {
		\relative c'{r1 | r2 r8 fis e fis |}
		\relative c''{r1 | r2 gis4 e8 fis8 |}
		 \longBar
		\relative c'{r1 | r2 r8 fis e fis |}
		\relative c''{r1 | r2 gis4 ais8 b8 |}
		\bar "||"
	}
}

PCoda = {
	\tag #'Harmony {\HrmCoda \HrmCoda}
	\tag #'Vocals {
		\mark \markup { "Coda" }
		s1 | s1 | s1 | s1 |
		
	}
	\tag #'Trumpet {
	     \relative c''{r1 | r2 dis8 cis ais b~ | b2 r2 | s1 |}
		\bar "||"
	}
}


Music = {
	\PVerse \break
	\PChorus \break
	\PCoda
}



<<
	\new ChordNames{ 
		\keepWithTag #'Harmony \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
	        \key b \major
		\set Staff.instrumentName = "Vocals"
		\compressFullBarRests
		\keepWithTag #'Vocals \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\transpose b des'{
	           \key b \major
		   \keepWithTag #'Trumpet \Music
		}
	}
>>





