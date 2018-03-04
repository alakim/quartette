 \version "2.12.2"
 \include "../parts/NOSolo.ly"
 #(set-global-staff-size 15)
 
 \markup{\box \bold "C/D dur"}
 <<
   \new ChordNames{
    \HarmonySoloI \HarmonySoloII
    }
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinSoloI
	}
   \new Staff{
     \set Staff.instrumentName="Clarinet B"
	 \transpose c' bes {
		 \clef treble \time 2/2 \key d \major
		 \SoloI
	 }
   }
	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 2/2 \key c \major
		\CelloSoloI
	}
 >>
 
