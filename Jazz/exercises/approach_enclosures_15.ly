\version "2.12.3"
#(set-global-staff-size 22)


\header{
	title="15 Approach Note and Enclosure Exercises"
	composer="https://www.youtube.com/watch?v=bP72amBkcBc"
}


<<
	\new Staff{
	\clef treble \time 4/4 \key c \major
		\mark \markup \circle "1"
		\relative c'{c8 b c cis d cis d dis \bar "||"}
		\relative c'{e8 f e es d dis d cis \bar "||"}
		\break
		
		\mark \markup \circle "2"
		\relative c'{c8 d e es d e f es | d8 s^sim s2.\bar "||"}
		\break
		
		\mark \markup \circle "3"
		\relative c'{ c8 d e c  e f e es | d8 s^sim s2.\bar "||"}
		\break
		
		\mark \markup \circle "4"
		\relative c'{ d8 e d des  c d e c \bar "||"}
		% \break
		
		\mark \markup \circle "5"
		\relative c''{ c8 b a as  g a b c \bar "||"}
		% \break
		
		\mark \markup \circle "6"
		\relative c'{ c d e f g f e es \bar "||"}
		\break
		
		\mark \markup \circle "7"
		\relative c'{ c8 e es des  d f d dis \bar "||"}
		\break
		
		\mark \markup \circle "8"
		\relative c'{ e8 d des b  c g' ges e | f8 s^sim s2. \bar "||"}
		\break
		
		\mark \markup \circle "9"
		\relative c'{ e8 d des b c d e g | f8 s^sim s2. \bar "||"}
		\break
		
		\mark \markup \circle "10"
		\relative c'{ c8 d e g f e es cis \bar "||"}
		% \break
		
		\mark \markup \circle "11"
		\relative c''{ \cadenzaOn bes8 \cadenzaOff \bar "|" b d des b c d e c \bar "||"}
		% \break
		
		\mark \markup \circle "12"
		\relative c'{ \cadenzaOn d8 des [b] \cadenzaOff \bar "|" c8 e es des! d f d dis \bar "||"}
		% \break
		
		\mark \markup \circle "13"
		\relative c'{ \cadenzaOn b8 \cadenzaOff \bar "|" c dis e fis g ais b cis, \bar "||"}
		% \break
		
		\mark \markup \circle "14"
		\relative c'{ e8 d des b  c d e g \bar "||"}
		% \break
		
		\mark \markup \circle "15"
		\relative c''{ bes8 b d des  c d e g \bar "||"}
		% \break
	}
>>
