\version "2.12.2"

\header {
	title = "Сон о Белых горах"
	composer = "Перьи Отметины"
}

Harmony = \chordmode{
	d2. | b:m | g | a |
	d2. | b:m | fis:m | a |
	d2. | b:m | g | a |
	b2.:m | a | b:m | r |
}

Solo = \relative {
	d4.~d4 a8 | fis'4.~fis4 d8 | b'4.~b4 d8 | b4 a4 b8 cis | 
	d4.~d8 cis8 b | b2. | a8 fis4~fis4. | r4. r4 a,8 |
	d4.~d4 a8 | fis'4.~fis4 d8 | b'4.~b4 d8 | b4 a2 | 
	b2. | cis2. | b2. | r2. |
}

\markup{"Solo"}
<<
	\new ChordNames{
		\Harmony
	}
	\new Staff{
		\clef treble \time 6/8 \key d \major
		\Solo
	}
	
	\new ChordNames{\transpose bes c'{
		\Harmony
	}}
	\new Staff{\transpose bes c' {
		\clef treble \time 6/8 \key d \major
		\Solo
	}}
	
>>