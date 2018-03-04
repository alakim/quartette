 VerseI = \lyricmode{
   _2 не4 по- |жгли2 Кижи4 раз- | бой-2. нич-4 | ки1 |
   _2 не4 го- | рит2 святое2 | де-2 ре- |во1 |
   _2 Божьей2 | милостью1 | тайным | промыслом |
   руки | Нестора2 сердце | Се-2 ве- |ра1 |
   Се-2 ве- | ра1 |
 }
 
 
 HarmonyVerse = \chordmode{
   c1 | s | f:maj | s |
 }
 HarmonyCodaA = \chordmode{
   c1 | as2 bes2 %{fis%} | es1 | s | % a |f:maj g | c |
   f1 | s | c |
 }
 
 HarmonyI = \chordmode{
   \HarmonyVerse \HarmonyVerse \HarmonyVerse 
   \HarmonyCodaA
 }
 
 
 ClarinetBVerse = \relative c'{
   d2.^\markup{\box Verse} fis4 | a2. e4 | d1 | g | e2. d4 | a'1 | b |g | e|
   a| g~|g| 
 }
 ViolinVerse = \relative c'{
	e2. g4 | e2. d4 | g2. d4~ | d2. g4 |
	b1 | e1 |f2. c4~ | c1 |
	b1~ | b4 d e2~ | e4 c2 d4 |e4 b2. | 
 }
 CelloVerse = \relative c{
	g2 e | c'2 b | a2. f4 | a2. f4 | 
	g2 e | c'2 b | c2. f,4 | a2. f4 | 
	c'2. g4 | c2. g4 | a1~ | a1 | 
 }
 VoiceVerse = \relative c'{
	r2 b4 d | b4. a8 g4 e' | e2. g,4 | g1 |
	r2 b4 d | g4. a8 g4 d | e2. g4 | c,1 |
	r2 d4 d | b4 a g2     | e'2 g | a4 g d2 |
	r2 d4 d | c4 c8 c d4 d | bes2. bes4 | bes1 |
	c2. d4 | e1 ( | g1) |
 }
 
 ClarinetBCodaA = \relative c''{a^\markup{\box A} | bes2 c | f,2. c'8 bes | c1 | g2. d'8 c | d2. g,4| d'1 |}
 ViolinCodaA = \relative c''{c2 b | es2 f2 | g1 | g2 es2 |a1 | e2. d4 | g1 |}
 CelloCodaA = \relative c{g1 | c2 d2 | bes1 | es2 d |c1 | a2. g4 | e1 |}
 
 ClarinetBI = {\ClarinetBVerse \ClarinetBCodaA}
 ViolinI = {\ViolinVerse \ViolinCodaA}
 CelloI = {\CelloVerse \CelloCodaA}
 VoiceI = {\VoiceVerse}