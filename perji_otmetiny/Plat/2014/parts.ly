

HVerse = \chordmode{
	e1 e1
	
	e1 e1 e1 e1 
	e1 e1 e2 a1
	e2 d2 e1  
	
	a1 e1 d1 e1 a1
	
	e1 e1 e1 e1 
	e1 e1 e2 a1
	e2 d2 e1 e1 
	
	e1 e1 e1 e1
	e1 e1 e1 e1
	a1 g1 e1 e1
	a1 g1 e1 e1
	
	e1:m e1:m
	a1 c1:maj e1:m a1
	e1:m a1
}
LVerseI = \lyricmode{
	Не-4. раз-16 де- ли-8 ма-4 я8 | гладь2. ве-8 тер- | ко-8 ва- я2. | _1 |
	не-4. о-16 па- ли-8 мо-4 е8 | пла-2 мят-4 ный | бар-8 хат- ный4 | плат2. 
	сты-8 нет | за-8 но- во4 за8 Но- во-4 | го-8 ро- дом2. | _1 | _1 | _1 | _1 | _1 | 
	
	Не-4. раз-16 де- ли-8 ма-4 я8 | гладь2. ве-8 тер- | ко-8 ва- я2. | _1 |
	не-4. о-16 па- ли-8 мо-4 е8 | пла-2 мят-4 ный | бар-8 хат- ный4 | плат2. 
	сты-8 нет | за-8 но- во4 за8 Но- во-4 | го-8 ро- дом2. | _1 | 
	
	А4. за16 Вал- да-8 ем4 рас-8 | та-8 я- ли4 | ста-8 и по4  во-8 ро- ну4 | сталь-8 ю да-4  ма-8 сской у-4 | ста- ли |
	Ве-16 ли- ка ты Русь8 да16 да- ле-4 ко8 да- | ле-8 ко16 до Спас-8 ской16 о- би-8 те- ли4 |
	(ле-ти-)2. _8 ли-8 | ти-16 ли- ти- ли-  ти2  ста-8 вя8 | перь-4 и8 от- ме- ти- ны4 | "с кра-"4 я8 до кра-2 | я1 | _2. 
	ста-8 вя8 | перь-4 и8 от- ме- ти- ны4 | "с кра-"4 я8 до кра-2 | я1 |
	| _2. ста-8 вя8 | перь-4 и8 от- ме- ти- ны4 | "с кра-"4 я8 до кра-2 | я1 |
}
LVerseII = \lyricmode{
	_2. _8 Пря- | ма-8 я16 тро- пин-8 ка16 (ко)ле- са8 не16 по- ми-16 лу- ет8 | _1 |
	пе-8 ший у- слы-4 шит8 во8 сне8 | _2. ко-8 ло- | коль-8 чи-4 ки4. ко-8 ло- | коль-8 чи-4 ки8 _4.
	Ки-8 | пит8 са-16 мо- вар8 сты-16 нут пря-8 нич- ки4 | (ки)дай-8 те16 сю- да8 сво-16 и де-8 неж- ки |
	Мед-8 ны- е8 ка-8 тят- ся гро-16 мом и8 | мол-8 ни-4 ей4. гро-16 мом и8 | мол-8 ни-4 ей8 _4. 
	
	Ей-8 | Бо-8 гу16 спа- сет- ся лишь8 | тот2. кто8 не | спря-8 чет-4 ся4. _4 |
}
LVerse = {s1 s1 \LVerseI \LVerseII}
VVerse = {
	r1 | r1 |
	\relative c'{e4. fis16 gis a4. gis16 fis | gis2. fis8 gis | fis8 gis e2. | r1 |}
	\relative c'{e4. fis16 gis a8 gis4 fis8 | gis2 b4 a |  \time 2/4 gis8 e e4 | \time 4/4 a2. gis8 a | }
	\relative c''{gis8 e e4 a8 gis fis4 | d8 e e2. |}
	
	r1 | r1 | r1 | r1 | r1 |
	 
	\relative c'{e4. fis16 gis a4. gis16 fis | gis2. fis8 gis | fis8 gis e2. | r1 |}
	\relative c'{e4. fis16 gis a8 gis4 fis8 | gis2 b4 a |  \time 2/4 gis8 e e4 | \time 4/4 a2. gis8 a | }
	\relative c''{gis8 e e4 a8 gis fis4 | d8 e e2. |}
	r1 |
	 
	% а за Валдаем
	\relative c'{e4. fis16 gis a8 gis4 e8 | \time 2/4 b'8 b b4 | \time 4/4 cis8 b e,4  b'8 e, e4 | b'8 cis b4 e,8 e b'4 | \time 2/4 cis4 b | \time 4/4}
	\relative c''{e16 e, e e e8 e16 e b'4 cis8 b | e8 e,16 e e8 e16 e d8 e b'4 |}
	% лети...
	\relative c''{b2. r8 e,8 | b'16 cis b cis  b2  a8 gis8 | a4 e8 e e e e4 |}
	% с края
	\relative c''{ a4 e8 e e4 e4~ | e2 r | r2. }
	\relative c'' {a8 gis8 | a4 e8 e e e e4 | a4 e8 e e4 e4~ | e2 r | }
	\relative c'' {r2. a8 gis8 | a4 e8 e e e e4 | a4 e8 e e4 e'4~ | e2 r | }
	% прямая тропинка 
	\relative c''{ r2. r8 e | e8 e,16 e e8 e16 e e8 e16 e d16 e b8 | r1 | }
	% пеший услышит 
	\improvisationOn \relative c''{b8 b b b4 b8 b8 b8 | } \improvisationOff
	% колокольчики
	\relative c''{ r2. e8 e | e8 e,4 e4. e'8 e | e8 a,4 cis2 e8 |  }
	% кипит самовар
	\relative c''{ e8 e,16 e e8 e16 e g8 e e4 | \time 7/8 e'8 [e,16 e] e8 [e16 e] b'8 [e,8 e8] | \time 4/4}
	\relative c''{ b8 e, e8 b'8 e, e e16 e e8 | d8 e4 e4. e16 e e8 | a8 a4 e'2 e8 |}
	\time 2/4 <e'' b'>8 <e'' b'>16 <b' e'> <b' d' e'> <c'' e' c'> <d'' e' b>8 
	
	\time 4/4 | <cis'' a' cis'>2. 
	
	\improvisationOn \relative c''{
	b8 b | b8 b4 b4. r4 | 
	} \improvisationOff
}
ClVerse = {
	\relative c'{r4 e4 e'2 | b8 d a2. | b1 |}
	r1 |r1 | 
	\relative c''{r2. r8 e16 d | b1 | r1 | \time 2/4 r2 | \time 4/4}
	% плат
	\relative c''{cis2. b8 cis | b8 a gis4 fis8 e a4 | a8 b b2. | }
	\relative c''{r8 gis a e' fis8. e cis8 | b2 e | fis2 a8. gis fis8 | e4. b'16 b gis4. gis,8 | a8. cis e4. b'16 a gis fis | e2 s2 |}
	
	%неразделимая
	s1 s1 s1 
	%неопалимое
	s1 s1 
	\relative c'{\time 2/4 e8 b' gis4 | \time 4/4 }
	%плат
	\relative c''{cis2. b8 cis | b8 a gis4 fis8 e a4 | a8 b b2. | s1 |}
	
	% а за Валдаем
	s1^v\time 2/4 s2 \time 4/4 s1  s1 
	\relative c''{\time 2/4 gis4 fis, \time 4/4 |}
	% велика ты Русь
	\relative c'{b16 gis gis gis  e8 gis16 gis s2 |  s1 |}
	\relative c'''{gis16 a gis a gis4 e16 fis e fis e4 | gis1 | }
	% перьи отметины
	\relative c''{cis1 |}
	\relative c'''{ g8 e d b a2 | b2. r4 | }
	\relative c'''{gis8 e16 e e8 gis e16 e e4. |}
	
	% перьи отметины
	\relative c''{ cis1^ppo | d8 e g e d2 | e,8 fis gis4 b2 | r1 | }
	% перьи отметины
	s1^pppo s1 s1 s1 
	
	% прямая тропинка
	s1^tt s1
	% пеший
	s1 s1 
	%колокольчики
	s1^cc | s1 |
	
	% кипит
	s1 | \time 7/8 s2 s4. |\time 4/4
	% медные
	s1 | s1 | s1 |
	
	% ей
	\time 2/4 s2 | \time 4/4 s1 | s1 |
	
	
}

RiffCoda = {
	\mark Coda
	\repeat volta 2{
		\relative c'{e8 fis gis a b4  a8 gis | a8 gis fis e4 fis8 e4 | }
	}
}
