\version "2.18.2"

\header {
  title = "Time v.2"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode {
  b1:m | bes | e:sus2 | d | g:maj | a | b:m | b:m |
}

HrmB = \chordmode {
  b1:sus2 | b1:sus2 | bes | bes | g:m | g:m | d | d |
}

HrmC = \chordmode {
  b1:sus2 b1:sus2 bes bes
}

PA = {
	\tag #'HarmonyC {\HrmA }
	\tag #'Guitar {
		\mark \markup { \circle A }
	        \relative c'{b8^"...noir"  d b e8~e2 | bes8 d8~d2. |}
	        \relative c'{bes8 d fis b4. fis4 | e4 d8 e8~e2 |}
		\relative c'{g4 d'8 b'8~b2 | a4 e8 cis8~cis2 |}
		\relative c'{b8 a b4 d8 b4.| r1 |}
		
	}
	\tag #'Harmony {\HrmA }
	\tag #'Clarinet {
		s1| s1 |  s1 | s1 \longBar
		s1 | s1 |  s1 | s1 
		\bar "||"
	}
}

PB = {
	\tag #'HarmonyC {
		\HrmB  
	}
	\tag #'Guitar {
		\mark \markup { \circle B }
		\relative c'{b4^"...clock" fis' cis' fis, | b,4 fis' cis' fis, | }
		\relative c'{bes4 d a' d, | bes4 d a' d, | }
		\relative c'{g4 d' g d | g, d' g d | } s1 | s1 | 
	}
	\tag #'Harmony {
		\HrmB  
	}
	\tag #'Clarinet {
		s1 | s1 |  s1 | s1 \longBar
		s1 | s1 |  s1 | s1 \bar "||"
	}
}

PC = {
	\tag #'HarmonyC {
		\HrmC  
	}
	\tag #'Guitar {
		\mark \markup { \circle C }
		\relative c' {
		  \tuplet 3/2 {fis2 fis fis} |
		  \tuplet 3/2 {cis'2 cis cis} |
		  \tuplet 3/2 {a2 a a} |
		  \tuplet 3/2 {a2 a a} |
		}
		
	}
	\tag #'Harmony {
		\HrmC  
	}
	\tag #'Clarinet {
		cis'1 %{gis'1%} | c'4 e' c'2 |  cis'1 | e'1 \bar "||"
	}
}



Music = {
	\PA \break
	\PB \break
	\PC \break
}



<<
	\new ChordNames{ 
		\keepWithTag #'HarmonyC \Music
	}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\key b \minor
		\set Staff.instrumentName = "Guitar"
		\compressFullBarRests
		\keepWithTag #'Guitar \Music
	}
	\new ChordNames{ \transpose bes c' {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\key cis \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>





