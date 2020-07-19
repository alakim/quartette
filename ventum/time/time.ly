\version "2.18.2"

\header {
  title = "Time"
  composer = "гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode {
  b1:m b:m b:m b:m
}

HrmB = \chordmode {
  b1:m bes g:m d
}

HrmC = \chordmode {
  b1:m9 bes
}

PA = {
	\tag #'Harmony {
		\HrmA  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle A }
		
		s1^"noir..." | s1 |  s1 | s1 \bar "||"
	}
}

PB = {
	\tag #'Harmony {
		\HrmB  
	}
	\tag #'Clarinet {
		\mark \markup{ \circle B }
		
		s1 | s1 |  s1 | s1 \bar "||"
	}
}

PC = {
	\tag #'Harmony {
		\HrmC \HrmC 
	}
	\tag #'Clarinet {
		\mark \markup{ \circle C }
		cis'1 %{gis'1%} | c'4 e' c'2 |  cis'1 | e'1 \bar "||"
	}
}



Music = {
	\PA \break
	\PB \break
	\PC \break
}



<<
	\new ChordNames{ \transpose bes c' {
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ 
		\clef treble 
		\time 4/4
		\key b \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests
		\keepWithTag #'Clarinet \Music
	}
>>


\new PianoStaff <<
  \new ChordNames{
     \HrmB 
  }
  \new Staff = "up" {
    \key b \minor
    \clef treble
    <d'' fis' e' >1 | <d'' as' f'> | <d'' g' f'> | <d'' fis' e'> |
  }
  \new Staff = "down" {
    \key b \minor
    \clef bass
    <b, b>1 | <bes, bes> | <g, g> | <d, d> |
  }
>>



