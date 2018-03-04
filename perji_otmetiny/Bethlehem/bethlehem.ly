\version "2.16.2"

\header{
	title = "В Вифлееме"
	composer = "traditional/Перьи Отметины"
}

Hrm = \chordmode{
	b4:m fis:m b:m
	b4:m fis:m b2:m
	a4 d2 fis4:m
	b2:m
}

FlHard = \relative c''{
	\mark Hard
	\time 3/4 
	b4 a8 b fis e |
	\time 4/4 
	b'4 a8 b fis e d' e | fis4 fis2 e16 fis a8 |
	\time 2/4
	<b fis>4 <b fis>4 \bar "||"
}

FlSoft = \relative c''{
	\mark Soft
	\time 3/4 
	d4 d16 e fis8 d b |
	\time 4/4 
	d4 d16 e fis8 d b d16 e fis8 | a4 <a fis>2 b16 a e8 |
	\time 2/4
	fis4 b, \bar "||"
}

HMaj = \chordmode {
  a4 e2 | a4 e2 | a2 d4 | e4 a2 |
}

FMaj = \relative c''{
  cis8 e d16 cis b8 a e | cis'8 e d16 cis b8 a e | 
  a8 b cis e fis4 | a,16 b e8 a,4 a \bar "||"
}

<<
	\new ChordNames{
		\Hrm
		\Hrm
	}
	\new Staff{
		\set Staff.instrumentName = "Flute"
		\clef treble
		\key b \minor
		\FlHard \break
		\FlSoft
	}
>>

\markup {"Мажорная часть"}

<<
  \new ChordNames{
    \HMaj
  }
  \new Staff{
    \set Staff.instrumentName = "Flute"
    \clef treble
    \key a \major
    \time 3/4
    \FMaj
  }
>>