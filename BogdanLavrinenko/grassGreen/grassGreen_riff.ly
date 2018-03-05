\version "2.14.2"

\header {
  title = "О зелени трав"
  composer = "гр. День Радости"
}

HClRiff = \chordmode {\transpose c bes{
  b1:m c e:m a a
  a
}}
ClRiff = {\transpose c bes,{
  \mark "Riff"
  \repeat volta 2{
    \relative c'{b8 fis'4 d b8 d b | e8 b4 c a8 g a |}
    \relative c'{b8 e,4 g e'8 b g |}
  }
  \alternative{
	{
		\relative c'{a8 cis4 e8~e2 |}
		\relative c'{a8 cis4 e8~e2 |}
	}
    {\relative c'{a8 cis4 e8~e2 |}}
  }
}}

VlnRiff = {
	% \relative c''{e8 c c e4 c8 e c | f8 d d f4 bes,8 d bes  | f8 d d f d d f d | }
	\relative c''{e8 c c e8~e2 | f8 d d f8~f2  | f8 d d f d d f d | }
	\relative c'{b8 d4 g8~g2 | b8 d4 g8~g2 |}
	\relative c''{b8 d4 g8~g2 | }
}


<<
  \new ChordNames{
    \HClRiff
  }
  \new Staff{
	\set Staff.instrumentName = "Violin"
	\clef treble
	\time 4/4
	\key c \major
	\VlnRiff
	
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \clef treble
    \time 4/4
    \key c \major 
    \ClRiff
	\bar "|."
  }
>>