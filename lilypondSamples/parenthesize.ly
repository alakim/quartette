\version "2.16.2"

<<
	\new Staff {
		\parenthesize c''1
		s2.
		\override Staff.Stem #'transparent = ##t
		\parenthesize c''4
		\revert Staff.Stem #'transparent
	}
>>