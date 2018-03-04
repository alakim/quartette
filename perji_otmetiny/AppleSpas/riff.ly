\version "2.12.2"


%Harmony = \chordmode{
%	a2 b:7 |
%	e2 a |
%	
%}
Clarinet = \relative c''{
	\times 2/3 { a4 gis fis~} fis8 e8 fis gis | 
	\times 2/3 {b4 gis a~} a8 gis fis gis | 
	e1 |
}
Bass = \relative c'{
	\times 2/3 {e4 b cis~} cis8 b gis fis | 
	\times 2/3 {e4 b cis~} cis8 b gis'16 a gis e | 
	b16 cis8. e2 r4 |
}
Violin = \relative c'{
	\times 2/3 {cis4 e a~} a8 gis8 a b | 
	\times 2/3 {gis4 e fis~} fis8 e dis b | 
	gis1 |
}
Cello = \relative c'{
	\times 2/3 {e4 b cis~} cis8 b gis fis | 
	\times 2/3 {e4 b cis~} cis8 b gis'16 a gis e | 
	b1 |
}

<<
	%\new ChordNames{
	%	\Harmony
	%}
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 4/4 \key e \major
		\Violin
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet"
		\clef treble \time 4/4 \key e \major
		\Clarinet
	}
	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 4/4 \key e \major
		\Cello
	}
	\new Staff{
		\set Staff.instrumentName = "Bass"
		\clef bass \time 4/4 \key e \major
		\Bass
	}
>>