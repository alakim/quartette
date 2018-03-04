\version "2.16.2"

slash =
#(define-music-function
     (parser location note)
     (ly:music?)
   #{
     \override NoteHead #'style = #'slash
	 \relative c''{
		#note
	 }
	 \revert NoteHead #'style
   #})

\header{
	title = "Петь тебе"
	composer = "гр. Перьи Отметины"
}

LVerseI = \lyricmode{
	Сте- са- лось пле- чо о бро- ню две- рей
	Не по- пал клю- чом об- ро- нил "в ру-" чей
	Вы на кра- ю а я за ва- ми был и ёк стих
	Не о- мо- чу щёк тво- их клю- че- вы- ми сло- ва- ми
	О- чей тво- их не у- лу- чу ми- га на- гля- деть- ся
	Ис- пить прав- ды кро- ше- во горь- ко- е
	Лу- кав- ство бро- ше- но Жить бы жить бы
	Жить бы да жить ис- кать у дет- ства от- ра- ду
	Ис- кать у дет- ства от- ра- ду И е- щё
}
VVerseI = { % \autoBeamOff
		% стесалось
		\relative c''{ r8 b8 b16 b b8 d8 d16 d e8 b | b4  \slash{ b16 b b b }}
		 d''8 \slash {b16 b} e''8 b'
		|
		% ручей
		\relative c''{b4 d16 d d8 e16 \slash{ b b b b8 b | b4. b8 b4 b |}}
		% не омочу
		\relative c''{r8  d8 d16 d d8 e8 e  a4 | r8 e16 e e16 e8 d16 g8 d r4 } 
			| r8 \slash{ b b b} e''4. \slash b8 |
	\slash{
		% улучу
		b16 b b8 b16 b b b b8 b r4 | r8 b8 b4 b8 b b16 b b8 | b8 b b2. |
		% лукавство
		r8 b8 b b b8 b b4 | b4 b b b | r8 b8 b b  b4. b8 |
		% искать
		b8. b16 b8 b16 b b8 b r4 | r8 b8 b8. b16 b8 b r b8 |
		% отраду
		b8 b r4 r8 b16 b b4 |
		
	}
}
HVerseI = \chordmode{
	b2:m d2 | g2 e2:m |
	b2:m a | g2 e2:m |
	
	d2 a | e:m g |
	d2 a | e:m g |
	d2 a | e:m g |
	d2 a | e:m g |
	
	d2 a | e:m g |
	d2 a | e:m g |
	
}
ClVI = {
	s1 s1 s1 s1 
	s1 s1 s1^uuu 
	\relative c''{r2. a16 fis e d | fis2 r |}
	\relative c''{r2. fis16 e d b | a4. r8 g4 fis | d2 d'4 cis |}
	\relative c''{a2 a'4 fis | d2. fis16 e d e | fis2. r4 }
	s1 
}

LVerseII = \lyricmode{
	Бро- дить от Ла- до- ги до мы- са Деж- не- ва
	И об- рес- ти по- кой у гра- да близ- ле- жа- ще- го
	И петь те- бе не ре- же преж- не- го
	Но ча- ще нас- то- я- ще- го
	Но ча- ще нас- то- я- ще- го
}
VVerseII = { % \autoBeamOff
	\improvisationOn \relative c''{
		% бродить
		r8 b8 b b b b b4 | r8 b8 b b b b b4 |
		% и обрести
		r8 b8 b b b b b b | b8 b b b b b b4 |
		% и петь
		r8 b8 b b b2 | r8 b8 b b b b b b |
		% чаще
		b8 b b b b b b b |
		b8 b b b b b b4 |
	} \improvisationOff
}
HVerseII = \chordmode{
	s1 s1 s1 s1 % vocals only
	s1 s1 s1 s1 % разобрать гармонию
}
ClVII = {
	r1 r1 r1 r1 
	s1 s1 s1 s1 
}

LVerseIII = \lyricmode{
	Петь те- бе об у- шед- шей ме- ло- дии
	Петь те- бе о прис- нив- шем- ся счас- тии
	Петь те- бе о про- жи- том е- ди- ножды
	Петь те- бе о рас- стри- жен- ном ко- сами
	Петь те- бе о спо- кой- стви- и ни- щего
	Петь те- бе о та- лан- те и гор- дости
	Петь те- бе о ве- чер- нем и ут- рен- нем
	Те- бе и о том что не сгла- дит- ся
}
VVerseIII = { % \autoBeamOff
	\improvisationOn \relative c''{
		r2. b8 b | 
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b b |
		b2. b8 b | b8 b b b4 b8 b r |
	} \improvisationOff
}
HVerseIII = \chordmode{
	d1 |
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
	
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
	a1 | e2:m g4 d |
}
ClVIII = {
	s1 
	s1 s1 
	s1 s1 
	s1 s1 
	s1 s1 

	s1 s1 
	s1 s1 
	s1 s1 
	s1 s1 

}


<<
	\new ChordNames{
		\HVerseI
		\HVerseII
		\HVerseIII
	}
	\new Staff{
		\clef treble \time 4/4 \key d \major
		\new Voice = "verse"{
			\VVerseI 
			\VVerseII 
			\VVerseIII 
		}
	}
	\new Lyrics \lyricsto "verse"{
		\LVerseI 
		\LVerseII 
		\LVerseIII
	}
	\new Staff{
		\clef treble
		\set Staff.instrumentName = "Clarinet B"
		\time 4/4 \key d \major
		
		\ClVI
		\ClVII
		\ClVIII

	}
>>



