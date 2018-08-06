\version "2.18.2"

\header {
  title = "Goodbye"
  composer = "Chicago"
}

Hrm = \chordmode{ }

Trpt = {
	\key e \minor
	\relative c'{
		r4 b4. b | r1 |
	}
}

<<
	% \new ChordNames{\transpose bes c{\Hrm}}
	\new Staff{
		\clef treble
		\time 4/4
		\Trpt
	}
>>
