\version "2.16.2"

\header {
  title = "Селигерская"
  composer = "Перьи Отметины"
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}



HI = \chordmode {
  % | Eb | Cm | Gm | Bb |
  es1 | c:m | g:m | bes |
}
HII = \chordmode{as1 | g1:m |}

HIntro = {s1*8 \HI \HI \HI \HI}

Intro = {
  \mark Intro
  \compressFullBarRests
  R1*8
  \expandFullBarRests
  \relative c'''{g4 f bes a~ | a2 g4 f8 e~ | e1~ | e2 r4 d4 | }
  \relative c'''{g4 f2.~ | f2  d4 a8 c~ | c2~c8 a'4.~ | a4. g8~ g2| }
  
  \relative c'''{g4 f bes a~ | a2 g4 f8 e~ | e1~ | e2 r4 d4 | }
  \relative c'''{g4 f2.~ | f2  d4 a8 c~ | c2~c8 a'4.~ | a4. g8~ g2| }
  \bar "||"
}


HVI = \chordmode{
	\HI \HI \HI \HII \HII
	% в сосновых...
	f1:m g:m as g:m f c as es
}
VI = {
	\improvisationOn
	bes'1^"В истоптан-" | bes'1^"ных" | bes'1^"покой" | bes'1 |
	bes'1^"Дождем" | bes'1 | bes'1 | bes'1^"зал" |
	bes'1^"На карауле" | bes'1 | bes'1 | bes'1^"строй" |
	bes'1^"Вершино..." | bes'1 | bes'1 | bes'1^"бал" |
	
	bes'1^"В сосн." | bes'1^"снах" | bes'1 | bes'1^"снах" |
	bes'1^"в сосн." | bes'1^"снах" | bes'1^"запечат-" | bes'1^"лен" |
	
	\improvisationOff
}

HSoloI = {\HI \HI}
SoloI = {
	\mark Solo
	\bar "||"
        \relative c''{g4 f bes a~ | a2 g8 f e4 | c'1~ | c2. g4 |  }
        \relative c''{a1~|a2 d4 c | e1 | e8 d c d c a g e | }
	\bar "||"
}

HVII = \chordmode{
	\HI
	as1 as es es c:m c:m g:m g:m 
	as1 as es es c:m c:m c:m c:m 
	f:m g:m  as as es  es 
}
VII = {
        a'1^"Где" |
	\improvisationOn
	 | bes'1^"взор" | bes'1^"чело-" | bes'1^"вечий" |
	bes'1^"Над" | bes'1^"плесом" | bes'1^"сентябрЯ" | bes'1 | bes'1 | bes'1 | bes'1^"не зрЯ" | bes'1 |
	bes'1^"сплетенЫ" | bes'1 | bes'1^"движениЕм" | bes'1^"водово-" | bes'1^"роты" | bes'1^"зла" | bes'1 | bes'1 |
	bes'1^"ребЯчьи" | bes'1^"шалостИ" | bes'1 | bes'1^"и брызги" | bes'1^"рАдости" | bes'1 |
	\improvisationOff
	\bar "||"
}

HSoloII = \chordmode{
	as1 bes es c:m   as1 bes es es 
	as1 bes es c:m   as1 bes es es 
}
SoloII = {
	\mark Solo
        \relative c''{f8 e f g~g f e d | e8 d c e~e2 | f8 e f g~g f e f~| f2 f8 e d c | }
        \relative c''{f8 e f g~g f e d | e8 d c d c a c d | c8 d e f~f e d4 | c4. d e4 | }
        \relative c''{f8 e f g~g f e d | e8 d c e~e2 | f8 e f g~g f e f~| f2 f8 e d c | }
        \relative c''{f8 e f g~g f e d | e8 d c d c a c d | c8 d e f~f e d4 | c1 | }
	\bar "||"
}

HVIII = \chordmode{
	\HI
	as1 c:m as as es es
	\HI
	as1 c:m as as es es
	as1 c:m as as c c 
	c1 c2:m bes as1 as
}
VIII = {
	\improvisationOn
	bes'1^"Ночные" | bes'1^"очер-" | bes'1^"танья" | bes'1^"облакОв" |
	bes'1^"луной" | bes'1^"облИтых" | bes'1^"ни-" | bes'1^"когО" | bes'1 | bes'1 |
	bes'1^"Но" | bes'1^"их" | bes'1^"стемИтельный" | bes'1^"полет" |
	bes'1^"унес" | bes'1^"Гандвик" | bes'1 | bes'1 | 
        \improvisationOff
        f'2^"Фавор" a' | c''2 f''|
	
	bes''2^"где" r2 | 
        
        \improvisationOn
        bes'1^"зарЫться" | bes'1 | 
        \improvisationOff
        bes4^"нЕдостатка" a d' c'|
	fis'1~^"нот" | fis'2 r2 |
	
	r1^"во" | r1^"снЕ" | bes1^"плАкать" | \relative c'{f4 e d c} |
	\bar "||"
}

HSoloIII = \chordmode{
	c1:m bes f:m f:m
	c1:m bes f:m f:m
}
SoloIII = {
  \relative c'{e8 f e d~d2 | f8 e d c~c2 | d8 c d c d c a bes~ | bes1 |}
  \relative c'{e8 f e d~d2 | f8 e d c~c2 | d4 c bes a | bes g bes d |}
  \bar "||"
}

HVIV = \chordmode{
	c1:m bes as as
	bes1 as as c:m c:m 
}
VIV = {
	f'1^"Прозрачным" | 
	\improvisationOn        
        bes'1 | bes'1^"наполняя" | bes'1 | 
	bes'1^"Колодези" | bes'1^"берЕз" | bes'1 | bes'1^"оставленных" |  bes'1 | 
	\improvisationOff
}

HCoda = \chordmode{
	as2. f:m g:m as 
}
Coda = {
  \mark Coda
  \time 6/8
  \repeat volta 2 {
    \relative c'{f8. f16 f8 f e d | g8. g16 g8 g f d | e8. e16 e8 e f g | f2._"sim., cresc." |}
  }
}

<<
  \new ChordNames{\transpose bes c'{
    \HIntro
	\HVI
	\HSoloI
	\HVII
	\HSoloII
	\HVIII
 	\HSoloIII
	\HVIV
	\HCoda
 }}
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \key f \major
    \time 4/4
    \Intro \break
	\VI
	\SoloI
	\VII
	\SoloII
	\VIII
	\SoloIII
	\VIV
	\Coda
  }
>>
