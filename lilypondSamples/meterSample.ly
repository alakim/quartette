\header {
	title = "Meter sample"
}

\version "2.12.2"

% see 1.2.3 Displaying Rhythms - Unmetered music
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Displaying-rhythms#Displaying-rhythms

% see Snippets - Rhythms - Chant or psalms notation
% http://lilypond.org/doc/v2.12/input/lsr/lilypond-snippets/Rhythms.html#Rhythms


stemOn = { \revert Staff.Stem #'transparent }
stemOff = { \override Staff.Stem #'transparent = ##t }


Melody = \relative c'' {
	\clef treble
	\key g \major
	
	c4 d e d
	\cadenzaOn
	c4 c d8 d d f4 g4. a8 b c d c d c4
	\cadenzaOff
	\bar "|"
	d4 e d c
	
	\bar "||"
	\break
	

}

Psalm = {
	\cadenzaOn
	\stemOff a'\breve bes'4 g'4
	\stemOn a'2 \bar "||"
	\stemOff a'\breve g'4 a'4
	\stemOn f'2 \bar "||"
	\stemOff a'\breve^\markup { \italic flexe }
	\stemOn g'2 \bar "||"
	\break
	\cadenzaOff
	\stemOff \relative c''{
		<c e g>4 <cis fis>4 
		<c d e f>4
		<cis dis fis gis a bes>4
	}
	r1 | r1 | r1 | 
}



<<
	\new Staff {\Melody \Psalm}
>>

