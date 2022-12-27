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
  }
>>


