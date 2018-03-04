\version "2.12.2"

\header{
	title = "Ты не спи"
	composer = "Перьи отметины"
}

HarmonyI = \chordmode{
	r2.|
	e2:m d4 | e2.:m |
	e2:m d4 | e2.:m |
	g2 d4 | a2.:m |
	g2 d4 | e2.:m |
}

HarmonySolo = \chordmode{
	e2:m d4 | e2.:m |
	e2:m d4 | e2.:m |
}

HarmonyII = \chordmode{
	r2.|
        g4. d | e2.:m |
        g4. d | e2.:m |
        g4. d | e2.:m |
	c2. | r2. |
	b2.:m| r2. |
}

Voice = \relative c'{
	r2 
	e8 fis | g4 fis8 g a4 | e4 r4 
	e8 fis | g4 fis8 g a4 | e4 r4 
	e8 e | b'4 a8 fis a [(g)] | e4 r4 
	g8 e | a4 fis8 g  a4 | e4 r2 | 
}

Verse = \lyricmode{
	Ты не спи, мо- е солн- це
	не пет- ляй ты, до- ро- га
	вы вос- пой- те мне, пташ- ки
	вас у Бо- га прем- но- го
}

Solo = \relative c''{
	r2 e8 fis | b4 b a8 fis | e4 e e8 fis | g4 g fis8 d | e2 r4 |
}

VoiceII = \relative c'{
	\time 6/8
	r4. r8 
	e8 fis | g4 fis16 g a8 e fis | g4 fis16 g e8
	e8 fis | g4 fis16 g a8 e fis | g4 fis16 g e8
	r8 g16 a | b8 a g a g fis | g8 fis g e 
	e8 fis | g8 fis g e4.~ | e4. r4. | r4.
	r8 a g | fis8 b b  b4. |
}

VerseII = \lyricmode{
	грел ту- ма- ном ви- "сок,"
	пал ро- сой на пе- "сок,"
	и взош- ло на пес- ке 
	солн- це "с лу-" ком "в ру-" ке
	три лу- ча "в кол-" ча- "не," а "в ла-" до- ни све- ча
	я смот- рю на све- "чу,"
	и мол- чу как кри- чу
}



<<
	\new ChordNames {
		\HarmonyI
		\HarmonySolo
		\HarmonyII
	}
	\new Voice = "voc"{
		\set Staff.instrumentName = "Voice"
		\clef treble \time 3/4 \key e \minor
		\autoBeamOff
		\repeat volta 2{
			\Voice
			r2. |r2. |r2. |r2. |
		}
		\VoiceII
		\autoBeamOn
	}
	\new Lyrics \lyricsto "voc" {
		\Verse 
		\VerseII
	}
	\new Staff{
		\clef treble \time 3/4 \key e \minor
		r2. |r2. |r2. |r2. |
		r2. |r2. |r2. |r2. |
		\Solo
		
		r2. |r2. |r2. |r2. |
		r2. |r2. |r2. |r2. |
		r2. |r2. |r2. |
	}
>>