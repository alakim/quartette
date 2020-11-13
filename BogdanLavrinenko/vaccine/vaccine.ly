\version "2.18.2"

\header {
  title = "Вакцина"
  composer = "гр. День Радости"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode {
  d1 | d1 | d1 | d1 | 
}

HrmVerseBase = \chordmode { d1 | fis:m | b:m | g |}

HrmVerse = \chordmode {
  \HrmVerseBase
  \HrmVerseBase
  \HrmVerseBase
  d1 | fis:m | b:m | b:m |
  a1 | a1 | a:7 |
}


HrmChorus = \chordmode {
  d4 a d2 | g1 | b1:m | a |
  d4 a d2 | g1 | e1:m | a | a:7 |
}


PVerse = {
	\tag #'Harmony {\HrmVerse }
	\tag #'Vocals {
		\mark \markup { "Verse" }
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 | \longBar
		s1 | s1 | s1 |
		
	}
	\tag #'Trumpet {
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 |  s1 | s1 \longBar
		s1 | s1 | s1 |
		\bar "||"
	}
}

PChorus = {
	\tag #'Harmony {\HrmChorus }
	\tag #'Vocals {
		\mark \markup { "Chorus" }
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 | s1 | 
		
		
	}
	\tag #'Trumpet {
	      \relative c' {r4 e r fis | r4 g r8 b a g | fis2 r8 e fis a~ | a2 r } \longBar
	      \relative c' {r4 e r fis | r4 g r8 b a g | e2 r8 e fis a~ | a2 r | g1 } 
	      
		\bar "||"
	}
}

PIntro = {
	\tag #'Harmony {\HrmIntro }
	\tag #'Vocals {
		\mark \markup { "Intro" }
		s1 | s1 | s1 | s1 | 
		
	}
	\tag #'Trumpet {
		s1 | s1 |  s1 | s1 
		\bar "||"
	}
}


Music = {
	\PIntro \break
	\PVerse \break
	\PChorus
}



<<
	\new ChordNames{ 
		\keepWithTag #'Harmony \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
	        \key d \major
		\set Staff.instrumentName = "Vocals"
		\compressFullBarRests
		\keepWithTag #'Vocals \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\transpose bes c'{
	          \key d \major
		  \keepWithTag #'Trumpet \Music
		}
	}
>>





