\version "2.18.2"

\header {
  title = "Вакцина"
  composer = "гр. День Радости"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode {
  d1 | d1 | d1 | d1 | 
}

HrmVerseBase = \chordmode { d2 | fis:m | b:m | g |}

HrmVerse = \chordmode {
  \HrmVerseBase
  \HrmVerseBase
  \HrmVerseBase
  d2 | fis:m | b:m | b:m |
  a2 | a2 | a:7 |
}


HrmChorus = \chordmode {
  d4 a d2 | g1 | b1:m | a |
  d4 a d2 | g1 | e1:m | a | a:7 |
}

VerseBase = \relative c'{a8 a4 a8 | a8 a4 a8 | a8 a4 a8 | b4 r \longBar}
PVerse = {
	\tag #'Harmony {\HrmVerse }
	\tag #'Vocals {
		\time 2/4
		\mark \markup { "Verse" }
		\VerseBase
		\VerseBase
		\VerseBase
		\relative c'{d8 d4 d8 | e8 e4 e8 | r2 | r4 fis |} \longBar
		\relative c'' {a2 | }| s2 | s2 |
		
	}
	\tag #'Trumpet {
		r2 | r2 | r2 | \relative c''{r4 <b d e> ^>} \longBar
		r2 | r2 | r2 | \relative c'{r8 e8 fis a \longBar fis4 r |} 
		   | s2 | s2 | \relative c'{\tuplet 3/2 {r4 fis e} \longBar d4 r | } 
		   | s2 | s2 | \relative c'{r4 fis \longBar a2 |} 
		   | s2 | s2 |
		\bar "||"
	}
}

PChorus = {
	\tag #'Harmony {\HrmChorus }
	\tag #'Vocals {
		\time 4/4
		\mark \markup { "Chorus" }
		s1 | s1 | s1 | s1 \longBar
		s1 | s1 | s1 | s1 | s1 | 
		
		
	}
	\tag #'Trumpet {
	      \relative c' {r4 e r fis | r4 g r8 b a g | <d fis>2 r8 e fis a~ | a2 r } \longBar
	      \relative c' {r4 e r fis | r4 g r8 b a g | e2 r8 e g a~ | a2 r | g1 } 
	      
		\bar "||"
	}
}

PIntro = {
	\tag #'Harmony {
	  % \HrmIntro 
	  \chordmode{
	    s2.   a4 |
	    d2 a d1 d1 | b2.:m a4 |
	    d1 b1:m d1 | b1:m |  
	  }
	}
	\tag #'Trumpet {
		\mark \markup { "Intro" }
		s2. a4 |
		\relative c'{
		  d4 a4 e' d8 e | fis4 a8 fis e d e4 | fis4 a8 b a fis e4 | \tuplet 3/2 {d4 e4 fis4} fis4.  
		}
		a8 \break |
		\relative c'{
		    d4 a4 e'4. d16 e | fis4 a8 fis e fis4 r8  | a8^> r4. \tuplet 3/2 {b4 a fis } | e4. fis8~fis2 \bar "||"
		}
		\bar "||"
	}
}


Music = {
	\PVerse \break
	\PChorus
}

Intro = {
    \PIntro
}


<<
	\new ChordNames{ \transpose bes c{
		\keepWithTag #'Harmony \Intro
	}}

	\new Staff{ 
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\transpose bes c' {
	          \key d \major
		  \keepWithTag #'Trumpet \Intro
		}
	}
>>


<<
	\new ChordNames{ 
		\keepWithTag #'Harmony \Music
	}
	\new Staff{ 
		\clef treble 
	        \key d \major
		\set Staff.instrumentName = "Vocals"
		\compressFullBarRests
		\keepWithTag #'Vocals \Music
	}
	\new ChordNames{\transpose bes c'{ 
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ 
		\clef treble
		\set Staff.instrumentName = "Trumpet"
		\compressFullBarRests
		\transpose bes c'{
	          \key d \major
		  \keepWithTag #'Trumpet \Music
		}
	}
>>





