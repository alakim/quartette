\header {
	title = "Voicing sample"
}

\version "2.12.2"


% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Single-voice#Single-voice

% ДВА ВАРИАНТА:

% можно АККОРДАМИ
MelodyByChords = \relative c'' {
	a <g b> <a c> d e
}

% , а можно и то же самое ГОЛОСАМИ
MelodyByVoices = \relative c''{
	a			% отдельная нота
	<<
		{g a}	% нижний голос
		{b c}	% верхний голос
	>>
	d e			% тоже отдельные ноты
}


<<
	\new Staff \MelodyByChords
>>
<<
	\new Staff \MelodyByVoices
>>

