\version "2.22.1"
#(set-global-staff-size 22)


\header{
	title="Бибоповые фразы"
	subtitle="https://www.youtube.com/watch?v=7rv18EB8XXY"
}


V_I = \chordmode { g1:7 c1:maj}
VbN_I = \chordmode { g1:9- c1:maj}

\markup "Бибоповая «Скрепка»"
<<
	\new ChordNames{
		\V_I \V_I \V_I \V_I 
	}
	\new Staff{
		\clef treble \time 4/4 \key c \major
		\relative c''{r2 g8 fis f g | e1 \bar"||"}
		\relative c''{r2 g8 fis f a | e1 \bar"||"}
		\relative c''{r2 g8 fis f c' | e,1 \bar"||"}
		\relative c''{r2 g8 fis f a | e8 d~d2. \bar"||"}
	}
>>

\markup "Паркеровская каденция"
<<
	\new ChordNames{
		\V_I
		\V_I \V_I
	}
	\new Staff{
		\clef treble \time 4/4 \key c \major
		\relative c''{r2 d8 c b \parenthesize c | e8 g~g2. \bar"||"}
		\break

		\relative c''{r2^"скрепка" g8 fis f a | e8 d~d2. |}
		\relative c''{r2^"каденция" d8 c b \parenthesize c | e8 g~g2. \bar"||"}
	}
>>

\markup "Опевание доминанты с b9"
<<
	\new ChordNames{
		\VbN_I \VbN_I
	}
	\new Staff{
		\clef treble \time 4/4 \key c \major
		\relative c''{r2 b8 as' g f | e1 \bar"||"}
		\relative c''{r2 b8 as' f \parenthesize fis | g1 \bar"||"}
		
		\break
		\relative c''{ b8 as' f fis g fis f g | e c b c d c b c | e8 g~g2. \bar"||"}
		\break
		\relative c''{ b8 as' f fis g fis f g | e c b a d c b c | e8 g~g2. \bar"||"}


	}
>>
