
\version "2.12.2"

Chords = \relative c' {
	<c e g>4 <c f a> <d f b> <e g b> \bar "||"
	<e g b> <e a c> <f a d> <g b d> | <g c e>1 \bar "||"
	<c e g>4 <b e g> <c e a> <d f a>|<d g b>2 <e g c> \bar "||"
}

TrainRiffs = \relative c'{
	\partial 4 {<d f a>8 <c f a> |}
	<d f a>4. <d f a>4 <d f bes>8 <d f a>8 <c f a>| 
	<d f a>4. <d f a>4 <d f bes>8 <d f a>8 <c f a>| 
	
	<c e a>4. <c e a>4 <c f a>8 <c e a> <c e g> |
	<c e a>4. <c e a>4 <c f a>8 <c e a> <c e g> \bar "||"
}


<<
	\new Staff{
		\clef treble \time 4/4 \key c \major
		\Chords
	}
>>

<<
	\new Staff{
		\clef treble \time 4/4 \key d \minor
		\TrainRiffs
	}
>>