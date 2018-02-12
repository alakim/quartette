\header {
	title = "Octave Checks sample"
}

\version "2.12.2"

% see chapter 1.1.2 Changing multiple pitches
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Changing-multiple-pitches#Octave-checks
% ���������: \octaveCheck controlpitch , ����������� ��� �������� ����� ��������� ����� ����� octaveCheck � controlpitch ���������� �� ����� ������.
% ����������� ���� ������������ ������������ controlpitch

Melody = \relative c'' {
	c4 f g f

	c4
	\octaveCheck c' 	% ������
	f 					% ��� ���� �������� ������������ ����������� octaveCheck
	\octaveCheck c'		% ���������
	g
	\octaveCheck c'		% ����� ������
	f
}




<<
	\new Staff \Melody
>>

