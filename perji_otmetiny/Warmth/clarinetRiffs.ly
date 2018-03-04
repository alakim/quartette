
\header {
	title = "Теплынь (кларнет)"
	composer = "Перьи Отметины"
}

\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}
%\paper{
%	#(set-paper-size "a5" 'landscape)
%}


\version "2.10.33"

RiffA = \relative c'{
	r2^"solo A" d4 b8 a |
	g4 a8 b d g fis d | e2 c | g'4. fis4. d4 | g4 r2. \bar "||"
}

RiffWithBass = \relative c'{
	e4.^"с басом" d4. a4 | c2 r8 g8 c d | c2. d,4 | g2 b8 a g4 | 
	fis8 g e2 e'4 | r4. c8 g8. c d8 | b4. fis8 b8. d b8 | e2 r2 |
	d4. b g4 | c2 r2 \bar "||"
}

SoloEnd = \relative c'{
	r2^"в конце" d'4. b16 a | 
	g2 d'8 b a4 |g4. e16 e e2 | r2 g8 a b4  | g2 d'8 b a4 | 
	g2 g'4. fis16 fis | g2 r \bar "||"
}




<<
	\new Staff{
		\set Staff.instrumentName = \markup {Clarinet B}
		\transpose bes c'{
			\clef treble \time 4/4 \key g \major
			\RiffA
			\break
			\RiffWithBass
			\break
			\SoloEnd
		}
	}
>>


