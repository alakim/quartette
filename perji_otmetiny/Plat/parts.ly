\version "2.16.2"

VoiceIa = {
	\relative c''{e4.^"неразделимая" fis16 gis a4. gis16 fis | gis2 r4. fis16 gis | fis16^"ветер|ковая" gis e2 r4. }
}
VoiceIb = {
	\relative c''{e4.^"неопалимое" fis16 gis a4. gis16 fis | gis2^"пла-"  b4 a |  \time 2/4 gis8 e e4 |}
	\relative c'''{\time 4/4 a2^"плат" r4 gis8 a  | gis^"за Ново-" e e4  a8 gis fis4 | d8^"-городом" e e2. |}
}

VoiceII = {
	\relative c'{e4.^"а за Валдаем" fis16 gis a4 gis8 e | b'8 b b cis b e, e4 | b'4 e,8 e b'8 b cis b | r8 e, e b'4 cis8 b4 | }
	\relative c''{e16^"велика ты, Русь" e, e e e8 e16 e b'8 cis b b |}
	\relative c''{e8 e,16 e e8 e16 e d8 e e b'~ |b2. r8 e,8 | b'16 cis b cis b2 a8 gis |}
	\relative c''{a4^"перьи отметины" e8 e e e e4 | a4^"с края" e8 e e4 e~ | e2 r | r2. a8 gis |}
	\relative c''{a4^"перьи отметины" e8 e e e e4 | a4^"с края" e8 e e4 e~ | e2 r | r2. a8 gis |}
	\relative c''{a4^"перьи отметины" e8 e e e e4 | a4^"с края" e8 e e4 e'~ | e2 r | R1 |}
}

VoiceIII = {
	\relative c''{r2. r8 e | e8^"пря|мая тропинка" e,16 e e8 e16 e e8 e16 e d e b8 | r1 |  }
	\improvisationOn b'1^"пеший" \improvisationOff
	\relative c''{r2. e8^"коло-" e | e8^"кольчики" e, e2 e'8 e | e8. a, cis8~cis2 |}
	\relative c''{e8^"кипит" e,16 e e8 e16 e g8 e e e' | \time 3/4 e8 e,16 e e8 e16 e b'8 e, | \time 4/4 e b' e, b' e e e16^"громом" e e8 |}
	\relative c'{d8 e e2 e16^"громом" e e8 | a8. a e'8~e2 | }
	{r8 <b'e''>8 <b' e''>8 <e' b'>16 <e' b'> <d' e' b'> <c' e' c''> <b e' d''>8 <cis' a' cis''>4 }
	\relative c''{e2. fis8 gis | a2. gis8 fis | gis2. fis8 gis | fis8 gis e2. \bar "|."}
}

Voice = {
	\key e \major
	\time 4/4
	R1*2 |
	\VoiceIa \VoiceIb
	R1*5
	\VoiceIa R1 \VoiceIb
	R1
	\VoiceII
	\VoiceIII
}



FluteI = {
	\relative c'{r4 e4 e'2 | b8 d a2. | b1 | R1 | r2. r8 e16 d | b1 | R1 | r2 |}
	{<cis''' e'''>2. b''8 cis'''  | <e'' b''>2  <d'' a''>8 <d'' b''> <d'' a''>4 | <d'' a''>8 <e'' b''> <e'' b''>2. |}
}

FluteII = \relative c''{r8 gis8 a e' fis8. e cis8 | b2 e | fis2 a8. gis fis8 | e4. b'16 b gis4. gis,8 | a8. cis e4. b'16 a gis fis |}

FluteIII = {
	\relative c''{e2  r2 | e,8. b' e4 b'8 e, b | e,8. b' e4 b'8 e, b | e,8. b' e8~e2 | }
	\relative c'{e2~e2 | r4 gis'16 a gis e b'2 | }
	\relative c''{gis8 b e b'|}
	\relative c'''{cis2. b8 cis | b2 a8 b a4 | a8 b b2. |}
}

FluteIV = \relative c'''{gis8 e16 e e8 b4 e4. |}

FluteV = { % а за Валдаем
	R1*2
	\relative c'''{r2 gis8\trill gis\trill a gis~| gis8 e4 gis a8 gis4 |}
	\relative c''{e16 fis gis a gis8 gis16 gis16 b8 cis e4 | gis,16 a gis fis e8 e16 e d8 e e4 | }
	\relative c'''{gis16 a gis a gis4 e16 fis e fis e4 | b'16 cis b cis b4 r2 | e1 | g8 e d b a2 | b2. r4 |}
	\relative c'''{gis8 e16 e e8 gis e16 e e4. | e'1 | d8 e g e d2 | e,8 fis gis4 b2 | R1 | }
	\relative c''{e16 e e r e' r8 e,16 r e e r e' r8. | e,16 e e r e' r8 e,16 r e e r e'4\trill | }
	R1*2
}

FluteVI = {% прямая тропинка
	R1*7
	\relative c'''{b8 e,16 e e8 g16 e g8 e g a |}
	\relative c'''{\time 3/4 b8 e,16 e e8 d16 e a8 e | \time 4/4 g8 e16 e a8 e g e g g16 fis | e4 r2. | }
	\relative c''{d8. e e8\trill~e2 | d8 e e4. g8 g16 fis e8 | d8. e e8\trill~ e2 | a8 gis fis e4 fis8 e4 |}
	\relative c''{e8 fis gis a b4 a8 gis | a8 gis fis e4 fis8 e4 | }
}


Flute = {
	\key e \major
	\time 4/4
	\FluteI
	\FluteII
	\FluteIII
	\FluteIV
	\FluteV
	\FluteVI
}

Clarinet = {
  \time 4/4
  \key fis \major
  \relative c'{r4 fis4 fis'2 | cis8 e b2. | cis1 |}
  R1
  \relative c''{r2. r8 fis16 e cis1 |}
  R1 R2 
  \relative c'{dis2. fis8 gis | fis2 e8 e e4 | e8 fis fis2. |  }
  \transpose bes c'{\relative c''{r8 gis8 a^"B" e' fis8. e cis8 | b2^"F#" e | fis2^"G#m" a,8. gis fis8 | e4.^"F#" b'16 b gis4. gis8 | a8.^"B" cis e4 e8 b,16 b8. | e2 r |}}
  \relative c'{fis8.^"F#" cis' fis4 cis8 ais fis | cis8. fis ais4 cis8 ais fis | ais8. cis fis8~fis2 |}
  \relative c'{cis1 |fis4. ais cis4 | \time 2/4 fis4 cis,8 cis16 cis | dis2.^"B" b8 dis | cis2^"F#" b8 cis b4 | b8 cis cis2. | }
}
