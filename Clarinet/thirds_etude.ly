 
\version "2.12.2"

\header{
  title="Этюд на терции"
}

<<
  \new Staff{
    \clef treble \time 4/4 \key c \major 
    

	%            Gb Db Ab Eb Bb F  C  G  D  A  E  B  F# C# G# D# A# F  C  G  D  A  E  B 
	% Gb Db Ab Eb Bb F  C  G  D  A  E  B  F# C# G# D# A# F  C  G  D  A  E  B 

	\relative c'{\key c \major c4 e g b | }
	\relative c'{\key g \major g4 b d fis| }
	\relative c'{\key d \major d4 fis a cis | }
	\relative c'{\key a \major a4 cis e gis| }
	\relative c'{\key e \major e4 gis b dis| }
    
  }
>>