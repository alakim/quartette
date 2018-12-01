\version "2.18.2"

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

\header{
	title="Самая странная песня"
	composer="гр. День Радости"
}

%  Куплет: 
%  G G/C D Em
%  G G/C D G
%  C D G Em
%  C D Em
%  C D G Em
%  C D G G7
%  
%  Припев:
%  C D G Em
%  C D Em
%  C D G Em
%  C D G


Verse = {
	% t=0.18 in \rehearsals\20181130\Самая странная песня 1.MP3
	\tag #'Harmony {\chordmode{
		g\breve | c2 d | e1:m |
		g\breve | c2 d | g1 |
		c2 d | g2 e:m | c2 d | e1:m |
		c2 d | g2 e:m | c2 d | g2 g:7|
	}}
	\tag #'Voice {
		\relative c'{d8 d d d d4 d8 e~|e8 d d4 d8 d4. | fis4 fis8 fis fis e4. | d1  } \longBar
		\relative c'{d8 d d d d4 d8 e~|e8 d d4 d8 d4. | r8 b'4 b8 b a4 g8~ | g1  } \longBar
		\relative c''{c8 c b a4 g8 a8 b~|b8 b a g4 e4. | c'4 c8 b a g a b8~ | b1 |} \longBar
		\relative c''{c8 c b a4 g8 a8 b~|b8 b a g4 e4. | r8 g8 g fis4 fis8 fis4  | g1  |} \bar "||"
	}
	\tag #'Trumpet {
		\mark \markup "Verse"
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1
	}
}

Refrain = {
	% t=0.50 in \rehearsals\20181130\Самая странная песня 1.MP3
	\tag #'Harmony {\chordmode{
		% g2 d | g2 e:m | e2:m b:m | e1:m |
		c2 d | g2 e:m | c2 d | e1:m \longBar

		c2 d | g2 e:m | c2 d | g1 \longBar
	}}
	\tag #'Voice {
		\relative c''{g2 fis | g2 e | g4. fis8~fis2 | g1 \longBar }
		\relative c''{c8 c b a~a4 g8 a | b8 b a g~g8 e8~e4 |  }
		\relative c''{c8 c b a4 fis8 a4 | g1 \bar "||"}
	}
	\tag #'Trumpet {
		\mark \markup "Refrain"
		s1 s1 s1 s1 \longBar
		s1 s1 s1 s1
	}
}

Music = {
	\Verse \break
	\Refrain
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Vocal"
		\clef treble
		\key g \major
		\time 4/4
		\keepWithTag #'Voice \Music
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet"
		\clef treble
		\key g \major
		\time 4/4
		\keepWithTag #'Trumpet \Music
	}
>>
