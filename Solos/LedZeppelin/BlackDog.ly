\version "2.12.2"

% Source: http://www.onlinesheetmusic.com/black-dog-p254056.aspx
\header{
	title = "Black Dog Riff"
	composer = "Led Zeppelin"
}

MainRiff = \relative c' {
	\time 4/4 \clef treble \key d \major
	\time 2/4 r8 e g gis | 
	\time 4/4 a8 e c'4 a d8 e | \times 2/3 {c8 d c} a8 a c4 a |
	\time 5/4 g8 a a d, e c d <a' e a,>8~<a e a,>4 \bar "|."
}

\new Staff{
	\MainRiff
}
\new Staff{
	\set Staff.instrumentName = "Clarinet B"
	\transpose bes c'{
		\MainRiff
	}
}