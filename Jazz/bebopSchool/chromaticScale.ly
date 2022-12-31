\version "2.22.1"
#(set-global-staff-size 22)


\header{
	title="Хроматическая бибоповая гамма"
	subtitle="https://www.youtube.com/watch?v=7rv18EB8XXY"
}

<<
	\new Staff{
	\clef treble \time 4/4 \key c \major
	\relative c' {
		d8 f d \parenthesize es e g (fis) \parenthesize e | f a f \parenthesize fis g bes g \parenthesize gis |
		a c b \parenthesize a bes d bes \parenthesize bes | c es c \parenthesize cis d2 |
		d8 f d \parenthesize es  e g (fis) \parenthesize e | f g f \parenthesize fis g as g \parenthesize gis |
		a8 c (b) \parenthesize a bes d bes \parenthesize b | c es c \parenthesize cis d2 |
	}
	\break
	\relative c''{
		c8 es c \parenthesize cis  d cis (c) b \( | bes \) cis bes \parenthesize b c b (bes) a \( |
		gis8 \) c gis \parenthesize a   bes a (gis) bes \( | g \) bes a \parenthesize g gis es (e) g \( | 
		f \) gis f \parenthesize fis   g fis (f) e \( | es \) g es \parenthesize e   f e (es) f \( |
		d \) f  es \parenthesize d es ces (c) d | c1 |
	}
  }
>>


