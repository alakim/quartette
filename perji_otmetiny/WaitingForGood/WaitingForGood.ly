\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header{
  title = "Жди добра"
  composer = "Перьи Отметины"
  subsubtitle = \date
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}

srcLineBreak = {} % {\break}

ChordsI = \chordmode{
	r1*7 |
	c1 d e:m g2 d c1 d2 g e:m d g1 
	r1*3 |
	g1 | e2:m c | g1 | e2:m c | g1 | e1:m | g |
	c1 | c | c | d2 g | e2:m c | c1 |
}

SoloI = {
  \relative c''{c8^"ра" b a g d c' b a | b c b a g4 e | c'8 b a g d4. c'8 | b4 c cis d | c8 b a g d c' b16 b a8 | b8 c b a g4 e | c'8 b a g d4. g8 | g1 |} \srcLineBreak
}

VII = {
  \relative c'{r4. e8 e e e d^"вет-"| e2^"ров" r2^"тер-" | d1^"пением" | g | fis| b | c^"безумства" | a | g2.^"греха" r4 | R1*4| r2 r8 e'8^"сердцевине" e d | e fis g2. |}
}

SoloII = {\relative c''{
    r2. d4^"доб-" | c8^"ра" r16 b a8 g d16 r d'8 b a | b8 c16 c b8 a g16 r d'8 b8 g | 
    c8 b16 b a8 g d4. a'16 a | b4 c cis d | c8 b16 b a8 g \srcLineBreak
    d16 r d'8 b a | b8 c16 c b8 a g16 r d'8 b g | c8 b16 b a8 g d4. g8 | g2 r |
}}

SoloIII = {\relative c''{
    e4. a8 g16 g e8 d c | d4. g8 e16 e d8 c b | c4. e8 \srcLineBreak
    d16 d c8 b c | d4 b c d | e4. a8 g16 g e8 d c | d4. g8 e16 e d8 c b | c4. e8 d16 d c8 b a | \time 2/4 g8 d' b16 b a8 | \time 4/4 g2 r2 |
}}

Coda = {
  % \relative c''{b4 c cis d }
  \repeat volta 2{
    \mark Coda
    \relative c''{c16 r8 b16 a8 g16 d r8 d'b a | b16 r8 c16 b8 a16 g r8 d' b g | c16 r8 b16 a8 g16 d~d4. a'8 | }
  }
  \alternative{
    \relative c''{b4 c cis d |}
    \relative c''{g8 d' b a g2 \bar "|."}
  }

}

RecorderI = {
        \compressFullBarRests 
	R1*6 |
	r1^"жди доб-" |
	\relative c'{d1^"ра"~|d~|d~|d^".///" |g2 e'| d4. c8 b2 | c4. a8 g4 fis | g2 r2 |} \srcLineBreak
	R1*2 |
	r1^"/~~" |
	\relative c''{
          \repeat volta 2{r4 g8 a b4. a8 | g8 fis e fis g4 c | b4 g8 a b4. a8 | g4. e8 c2 |}
          r4^"над полем" b'8 c d2 | e2.. d8 | g2 r8 g8 e d~ | 
        } \srcLineBreak
	\relative c''{d2 r2 | c8^"запаха беды" b a g4. r4 | c2 d | g,4 d' fis, d' | e,4 b'8 g c b g a | g2. r8 e8 | b'8 a b c d e e d | e8^"рядом" fis g2 g8 e | a,4 b c d^"жди доб-" |} \srcLineBreak
	\SoloI
        \VII
        \SoloII
        \SoloIII
        %\bar "|."
}


<<
	%\new ChordNames{\ChordsI}
	\new Staff{
		\set Staff.instrumentName = "Recorder C"
		\clef treble \time 4/4 \key g \major
		\RecorderI
		%\bar "||" 
		\break
		\Coda
		
	}
>>