\version "2.12.3"

\header {
  title="Беседа"
  subtitle="этюд"
  subsubtitle="08/2013"
  composer="alakim"
}

A = {\mark \markup \circle \bold "A"
  <<{
    \relative c'{b8^"V" d' b' a b2 | cis,,8^"VII" ais' cis' b cis8 ais, e' ais, | }
	\relative c'''{d2 e8 d cis a | fis4. b8~b2 |}
	
	{b8 d'' b'' a'' b''2 | cis'8 ais' cis''' b'' cis'''4. b''16 cis''' |}
	\relative c'''{d4. cis16 b a8 g fis e | }
	fis''8 d'' fis'' d''  e''8 cis'' e''4 |
        r8 <a' d''> <a' d''> <a' d''>  r8 <a' cis''> <a' cis''> <a' cis''>  |
  }\\{
	\set stringNumberOrientations = #'(down)
	\set fingeringOrientations = #'(down)
	\override StringNumber #'self-alignment-X = #-1 
	\textSpannerDown
    \relative c'{b2\6~b | cis2~cis | r8 b'8 d fis r2 | r8 d, b' b' fis, d e cis |}
	
	\relative c'{b2~b | cis2~cis |}
	\relative c''{r8 b d4 r2 |}
	b2 a4. b16 a | fis2 e |
}>>}

B = {\mark \markup \circle \bold "B"
  <<{
	\relative c''{fis8^"V" fis a fis e e cis a |} <g' d''>8 <g' d''> <g'' d''> <g' d''> <d'' fis''>4 <cis'' e''> |
	\relative c''{d8 cis d b' cis, a a' e |}
        % <d'' fis''>8 <d'' e''> <d'' fis''> <fis'' a''> <e'' g'' b''>2
        \relative c''{d8 g fis e  cis4. cis8 |}
  }\\{
	<d' d''>2 <a cis''> | b2 d'4 a |
	b2 a | b2 r8 ais8 fis' r8
}>>}

D = {\mark \markup \circle \bold "D"
	<<{
		\relative c''{fis2^IV r8 d16 cis d8 b' | a2^II r8^IV cis16 (b) cis8 e |}
		\relative c''{fis2 b,8^II g16 a b8 d | g8^V fis16 e d8 b cis^IV fis, fis' cis }
	}\\{
		\relative c'{r8 d16 cis d8 fis b,2 | r8 cis16 (d) e8 cis a2 |}
		\relative c'{r8 d16 fis b8 a g,2 |} e'2 ais |
	}>>
}

E = {\mark \markup \circle \bold "E"
	<<{
		\relative c''{d16^VI cis d e  fis^IV e d b  cis b cis d^III  e d cis b | 
		cis^VI b cis d e^VII d cis b  ais^VIII fis ais cis e   g^IX b cis |}
	}\\{
		\relative c'{b4 d a cis | e cis r2 |}
	}>>
}

<<
  \new Staff{
    \clef "treble_8" \key d \major \time 4/4
	\set Staff.instrumentName="Guitar"
    \transpose c c,{
      \A 
	  \B
	  
	  \break
	  \D
	  
	  \break
	  \E
    }
  }
>>
