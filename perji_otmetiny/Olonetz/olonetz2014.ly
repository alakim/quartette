\version "2.14.2"

\header{
	title = "Олонецкая быль"
	composer = "гр. Перьи Отметины"
		subsubtitle = "в тональности кларнета"
}


HVerseI = \chordmode{
	c1 c1 c1 c1 
	a1:m7 a1:m7 a1:m7 a1:m7 
	g2 d2  a2:m c2  c1  \time 2/4 c2 \time 4/4
	g2 d2  a2:m c4  d4  
		e1:m e1:m d1 d1
}

HVerseII = \chordmode{
	c1 c1 c1 c1 
	a1:m7 a1:m7 a1:m7 a1:m7 
	g2 d2  \time 2/4 a2:m \time 4/4 c1 c1  
	g2 d2  a2:m c4  d4  
		e4.:m c d4 
		e4.:m c d4
		e4.:m c d4
		e1:m e1:m d1 d1
}

HVerseIII = \chordmode{
	c1 c1 c1 c1 
	a1:m7 a1:m7 a1:m7 a1:m7 
	g2 d2  a2:m   c1 c1  
	g2 d2  a2:m c4  d4   
		e4.:m c d4 
		e4.:m c d4
		e4.:m c d4
		e4.:m c d4
		%e1:m e1:m d1 d1
		g2 d e:m d 
		g2 d e:m d 
		g2 d e:m d 
		g2 d e:m d 
		g1
}



HVerse = \chordmode{
	s1
	\HVerseI
	\HVerseII
	\HVerseIII
}

LVerseI = \lyricmode{
	_2. _8 не-16 бо | северное2. _8 по- | лощется1 | _1 | _2. 
	об-8 ла- | ка4. кла-8 дет2 | за8 вен-8 цом ве-8 нец2 | _1 | _1 | 
	боль8 сво- ю "в ла-" донь мо- ю4 | _8 сбрось4 "с ли-"8 ца2 | _1 | _2 | 
	страх8 стрях- ни под ка- мень си- ний  | _2.
	ка-16 мень О- ло- | нец1 | _1 | _1 | _2. _8
}
LVerseII = \lyricmode{
	
	по-16 сти-  | гать4. теп-8 ло4 де-8 ло | зим-4. не-8 е2 | _1 | _2. 
	нам8 у- | чи-4. те-8 лем2 | ве-8 тер4 ле-16 де- нец2 | _1 | _1 | 
	| нам8 наг- ра- дой ве- реск звезд и | лист8 о- си- но- | вый2  _2 | _1 | 
	нам8 сви- де- те- лем зам- ше- лый | ка-8 мень4. _4 
	ка-16 мень О- ло- | нец1 |
}

LVerseIII = \lyricmode{
	_2.
	ой8 ла- | до4. ла-8 до4 мо-8 ре | Ла-4. до-8 га2 | _1 | _2.
	ник-8 че- | му4. те-8 бе2 | стран-8 ник о- ди- нец2 | _1 | _1 |
	там8 где снег про- шел2 | ста-8 ла ра- ду- | га1 | _1 |
	а8 "в кор-" нях е- е свер- ка- ет |
	_2 _4 ка-16 мень О- ло- | нец1 |
}

LVerse = {
	\LVerseI \LVerseII 
	\lyricmode{_1 _1 _1 _1 _1 }
	\LVerseIII
}

Verse = {
	\relative c''{ r2. r8 c16 c | c8 g4 g g4 e8 | e4 g8 g4.~g4~ | g1 | } 
		\relative c''{ r2. r8 c16 b | c4. a8 a2 | e8 e g a g4. e16 d | c2 r |
		 r1 
		}
	% боль свою...
	\relative c''{ b8. b16 b16 c8. b8. a16 a4 | r8 a4 g8 a4. \(g16 fis | e4. fis8 g2~ |g2 \)|}
	\relative c''{g8 g d' g,  a b a g8~ | g2 r4 g16 a g fis | e2 r |}  s1 
	s1 
	
	r2. r8 
	\relative c''{c16 c | c4. g8 g4 g8 e | e4. g8 g2 | r1 |}
	\relative c''{r2 r4. c16 b | c4. a8 a2 | e8 e4 g16 a g4~g8 e16 d | c1 | r1 |}
	\relative c''{ b8 b b c  b8 a a g  | a8 b a g | a8 g4. r2 | r1 |}
	 
	\relative c''{ g8. g16 d'8 g, a b a g | b8 a4. r4 g16 a g fis | 
			e8. \( e16 b'8 c4 g8 a16 g fis8 | e8. e16 b'8 c4 b8 a4  \) |
		}
	
	s1
	s1 s1 s1 
		\relative c''{ r2. r8 c16 c | c4. g8 g4 g8 e | e4 g8 g4.~g4 | r1 | }
		\relative c''{r2. r8 c16 b | c4. a8 a2 | e8 e4 g16 a g4. \(e16 d | c1 \)| r1 |}
	\relative c''{g8 g g g d'2 | \time 2/4 a8 b a g \time 4/4 a8 g4. r2 | r1 |}
	\relative c''{g8. g16 d'8 g, a b a g | r2 r4 g16 a g fis |}
		\relative c'{e8. \( e16 b'8 c4 g8 a16 g fis8 | e8. e16 b'8 c4 b8 a4  \) |}
		\relative c'{e8. \( e16 b'8 c4 g8 a16 g fis8 | e8. e16 b'8 c4 b8 a4  \) |}
	
	s1 s1
	s1 s1 s1 s1 
		s1 s1 s1 
	
}



%ClRiff = \transpose c' bes{ \relative c{fis4 cis'8 b4 cis8 cis b16 a | fis8 cis'8 b4 cis8 fis,4. }}
ClRiff = \transpose c' bes{ \relative c{
	fis4 cis'8 a4 d8 e16 d16 cis8 | fis,8 cis'4 a4 d8 e4 
}}

ClVerse = {
	r1 | 
	r1 |
		\transpose c' bes{
			\relative c'{ 
				r2. r8 fis16 e | fis4. d4. a4 | b4. d8~d2 | 
				% облака 
				fis4. d8~d2 | b4 d8 e d4. b8~ | b4 r
			}
		  
			\relative c''{  a4. fis16 e | fis4 a b d, |}
			% боль свою
			\relative c'{e8. e8 cis8. fis8. gis b8 | b4.^> d, a4~ | a2. b4 | d4 fis |}
			\relative c'{ cis2 e2 | fis4. b8~b2 |}
		}

		\relative c''{ r4. d8~d2 | g,8 a b2. | fis'4. g8 d2~ | d4 r2. | }
		% постигать
		\transpose c' bes{
			\relative c'{ fis2. fis8 d | a4. fis8 fis2 |}
		}
		\relative c'{ c1~ | c2. r8 f16 e | f4. e8 e2 | d8 c4 e16 d c2 | }
		
	r1 r1 
		\relative c'{f4 f8 g f4 f8 e | f4. d8 | e2 r2 |}
	r1 |
		\relative c'{f8. d16 c8 b c d f4~ | f2 r4 b16 g f8 |}
	
	
	\ClRiff
		
		s1 s1 s1 s1 
		r1 
		\relative c'' {r2. r8 b8 | b4. g4.~g4} 
		s1 
		\relative c'{r2. r8 f16 e | f4. e8 e2 | d8 c4 e16 f e2~ | e1 |}
		\relative c'{ r1 | f4. g8 f2 |g8 f e d | e1 |}
		
		s1 s1 r1 s1 
		s1 s1 s1 
		\relative c'''{ 
		  r2 r8 a8 g16 e d8 | e8 g4 g r4 d16 e | d2 r8  
		  a'8 g16 e d8 | e8 g4 g  a8 g16 e d8 | 
		  d2 r8 a'8 g16 e d8 | e8 g4 g a8 g16 e d8 |
		  d2 r8 a'8 g16 e d8 | e8 g4 g a8 g16 e d8 |
		  g1 \bar "|."
		}
		
}


<<
	\new ChordNames{\transpose bes c'{
		\HVerse
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\Verse
	}}
	\new Lyrics{
		\LVerse
	}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble \time 4/4 \key c \major
		\ClVerse
	}}
>>
