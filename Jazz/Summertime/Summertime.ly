\header {
	title = "Summertime"
	composer="G. Gershwin"
}


\version "2.10.33"

% Гармония по изданию "Джаз в музыкальной школе. Джордж Гершвин. Порги и Бесс. Авторское изложение"
ChordsA = \chordmode  { \partial 2 r2 |
	b2:m6 cis:m6 | b2:m6 cis:m6 | b2:m6 cis:m6 | b2:m6 cis4:m6 b:m6 | 
	e2:m7 e:m7/g | e:m7/b b | fis cis:7 | fis2 fis4:6 fis:7 |
	b2:m6 cis:m6 | b2:m6 cis:m6 | b2:m6 cis:m6 | b2:m6 e:7 | 
	d2    b:m | e a:9sus| b1:m | r2 e2:9-5 | b2:m6 cis:m6/b|
}

SimpleChords = \chordmode {\partial 2 r2 |
	b1:m | cis1:m | b1:m/d | b:m |
	cis:m |b:m | fis | r |
	b1:m | cis1:m | b1:m/d | b:m |
	d1   | fis | b:m |r | r |
}

VoiceA = \relative c''{
	\partial 2 fis4 d |
	fis1~ | fis8 r e8. d16 e8. fis16 d4 | b2 fis2~ |fis4 r4 fis' d |
	e8 e4.~e2 | r4 d8. b16 d8. b16 d4 | cis1~ | cis2 r8 fis4 d8 |
	fis8 fis4 fis8~ fis2 | r4 e8. d16 e8. fis16 d4 | b2 fis2~ | fis2 r4 fis |
	a4 fis8 a b4 d |fis8 (e4.) d2 | b1~ | b1~ | b4 r r2 |
	
}

<<
	\new ChordNames{
		\time 4/4
		\SimpleChords
	}
	\new ChordNames{
		\time 4/4
		\ChordsA 
	}
	
	\new Staff { 
		\clef treble \time 4/4 \key b \minor 
		%\set Staff.instrumentName = \markup { Flute }
		\VoiceA
	}


>>
