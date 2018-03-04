 HarmonySoloI = \chordmode{
   c1 | g1:m |  c1 | s | s | s|
   %s1 |e1:m | a | s 
 }
 HarmonySoloII = \chordmode{
   g1:m | c1 |s|s|g:m |s|c1|s|
 }
 

 
 FluteSoloI = \relative c''{r2^"flute"    r8 g8 a b | c2 r8 e8 d c | a2. r8 g8 | a8 d2.~ d8~ | d2 r2 |}
 FluteSoloII = \relative c''{r2    r8 g8 a b | c2 r8 e8 d c | a1 | a'2 d,2~ | d1 | e2 a,2~ | a2 d,4 e | d1~ | d1 |}
 ClarinetSoloI = \relative c' {r2_"clarinet" r8 e8 e g | a2 r8 c8 b g | a2. r8 d,8 | fis8 a2.~ a8~ | a2 r2 |}
 ClarinetSoloII = \relative c' {r2_"clarinet" r8 e8 e g | a2 r8 c8 b g | a2. r8 d,8 | fis1~ | fis2 r2 |}
 SoloI = {
   << { \FluteSoloI \FluteSoloII} \\ {\ClarinetSoloI \ClarinetSoloII} >>
 }
 
 ViolinSoloA = {c'1 | d'2 f'2 |e'2. c'4~ |c'2. e'4~ | e'2. d'4~ |}
 ViolinSoloI = {
	\ViolinSoloA
	\ViolinSoloA
	d'2 bes~ |bes2 d' |
	e'1~ |e'1 |
 }
 CelloSoloA = {g2. e4 | g2 d2 |c2. e4~ |e2 d4 e | c2 }
 CelloSoloI = {
	\CelloSoloA e2 |
	\CelloSoloA e4 d |
	bes,2 d |g2. bes4 |
	g1~ |g1 |
 }