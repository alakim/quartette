\header {
	title = "Voicing sample"
}

\version "2.12.2"


% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Single-voice#Single-voice

% ��� ��������:

% ����� ���������
MelodyByChords = \relative c'' {
	a <g b> <a c> d e
}

% , � ����� � �� �� ����� ��������
MelodyByVoices = \relative c''{
	a			% ��������� ����
	<<
		{g a}	% ������ �����
		{b c}	% ������� �����
	>>
	d e			% ���� ��������� ����
}


<<
	\new Staff \MelodyByChords
>>
<<
	\new Staff \MelodyByVoices
>>

