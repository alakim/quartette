
\header {
	title = "Ока"
	composer = "Перьи отметины"
}

\version "2.10.33"

FluteIntro = \relative c''{
  \grace {a16 [d]} fis4.~fis4 d8 | g4 d8 e8 fis g
  fis8 e4~e4 e8 | a8. g16 fis8 r4. | 
  g4. ~g8. e16 g e | fis4 d8~d4. |r2. |
  %13.0
  e4 cis8~cis16 b cis b cis d | a4 e'8 ~e8.  e16 fis g|
  %16.5
  a16 a a a a a  a a a a a a |
%   % 19.6
%   a16 g fis  a g fis 
%   a16 g fis  a g fis | 
  %23.0
  a16 g fis  a16 g fis  g8 a8 b16 cis | d4 b8~b4 d8 | 
  %28.0
  d4 b8 
  a4^ \trill
  %30/0
  d,32 e fis g | fis8 d4~d4. |
  %33.0
  \grace {a16 [d]} fis8 e d cis d e | r2 r8 fis8 |
  %38.0
  g8 b4.~b8 fis16 g | a16 g fis g fis e  d4.~| d2. \bar "||"
}

<<
	\new Staff{
		\set Staff.instrumentName = \markup {flute}
		\clef treble \time 6/8 \key d \major
		\FluteIntro
	}

>>

