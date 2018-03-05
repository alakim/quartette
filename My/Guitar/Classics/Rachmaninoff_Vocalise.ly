\version "2.16.2"

\header{
	title = "Вокализ"
	subtitle = "Opus 34, No.14"
	composer = "Рахманинов С.В."
}

%******************************************************************************************
%  В оригинале для сопрано с оркестром это Cis moll, и диапазон там от Cis' до Cis'''
%******************************************************************************************

VI = {
	\relative c'''{r4 r8 bes16 (a bes4.)  g16 \(a | \time 2/4 bes8 \) a16 (g) a8 f16 g | \time 4/4 }
}

BI = {
	r4 g4 (f 2) | es2 |
}


HrmI = \chordmode{
	g1:m | g4:m/es a8:m7.5- f8:7 | f2/d 
}


<<
	\new ChordNames{
		\HrmI
	}
	
	\new Staff{
		\clef "treble_8"
		\time 4/4
		\key g \minor
		<<{\transpose c''' c''{
			% \mark "Lentamente, molto cantabile"
			\VI 
		}}\\{
			\BI 
		}>>
		\bar "|."
	}

>>