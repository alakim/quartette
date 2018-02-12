\version "2.16.2"
\header {
	title="Quotes sample"
}

Flute = \relative c'{c4 d e f | g a c d | e d c b | c d c a | g f e d | c1 |}

\addQuote "flute" {\transpose bes c'{ % здесь транспозиция возможна - к партии в целом
	\Flute
}}

% другой поток цитирования, транспонированный на октаву ниже
\addQuote "fluteLow" {\transpose bes c{ % здесь транспозиция возможна - к партии в целом
	\Flute
}}

Clarinet = {
	\relative c'{ 
		c2 g2 | 
		\transpose c' c {  % Транспонировать здесь бесполезно - не работает
			\quoteDuring #"flute" {s1*2}
			\quoteDuring #"fluteLow" {s1}
		} | 
		c2 g2 |
	}
}


<<
	\new Staff{
		\set Staff.instrumentName = "Flute"
		\time 4/4
		\clef treble
		\key c \major
		\Flute
	}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet Bb"
		\time 4/4
		\clef treble
		\key c \major
		\Clarinet
	}}
>>