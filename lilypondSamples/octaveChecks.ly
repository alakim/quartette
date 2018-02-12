\header {
	title = "Octave Checks sample"
}

\version "2.12.2"

% see chapter 1.1.2 Changing multiple pitches
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Changing-multiple-pitches#Octave-checks
% синтаксис: \octaveCheck controlpitch , проверяется что интервал между последней нотой перед octaveCheck и controlpitch составляет не более кварты.
% последующие ноты выставляются относительно controlpitch

Melody = \relative c'' {
	c4 f g f

	c4
	\octaveCheck c' 	% ошибка
	f 					% эта нота ставится относительно предыдущего octaveCheck
	\octaveCheck c'		% правильно
	g
	\octaveCheck c'		% снова ошибка
	f
}




<<
	\new Staff \Melody
>>

