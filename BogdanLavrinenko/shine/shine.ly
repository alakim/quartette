\version "2.16.2"

\header{
	title = "Светись"
	composer = "гр. День Радости"
}

HMain = \chordmode{ e1 | b | cis:m | a2 b:7 |}

MainRiff = {
	\relative c''{e8 dis16 e8 fis gis16~gis2 | fis4. dis8 c2 | cis4. e16 cis cis8 dis4 cis8 | a'8  fis4 e8 fis e4 dis8 |}
}

Solo = {
	\mark "Solo"
	\relative c''{e2. gis8 fis | dis2.~dis8 dis | e8 dis16 e8. fis8 fis e~e4 | a8 fis e fis fis2 | }
	\MainRiff
	\relative c'''{gis4. gis8 \times 2/3{gis8 fis e} gis16 fis dis e | dis8 e4 dis16 e fis2 | gis8 fis16 e \times 2/3 {gis8 fis e} gis8 fis e fis16 e | \improvisationOn b2 b4. \improvisationOff a'8 |}
	\relative c'''{
		b8 a b fis16 a \times 2/3{gis8 fis e} \improvisationOn dis4 \improvisationOff | fis8 dis4 e8 fis4. e16 dis | 
		e4. dis16 e \times 2/3{gis8 fis e} \times 2/3{gis8 fis dis} | e8 dis e fis e8 dis e fis | e1\fermata |
	}
}


<<
	\new ChordNames{
		\HMain 
		\HMain \HMain \HMain \HMain 
		\chordmode{e1}
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\time 4/4
		\clef treble
		\key e \major
		\mark "Main Riff"
		\MainRiff \bar "||" \break
		\Solo \bar "|."
	}
>>
