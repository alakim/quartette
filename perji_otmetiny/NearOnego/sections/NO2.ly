 \version "2.12.2"
 \include "../parts/NO1.ly"
 \include "../parts/NO2.ly"
 
 
 <<
   \new ChordNames{
     \HarmonyI
    }
	\new Staff {
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceII
	}
	\new Lyrics{\VerseII}
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinII
	}
   \new Staff{
     \set Staff.instrumentName="Clarinet B"
	 \transpose c' bes {
		 \clef treble \time 2/2 \key d \major
		 \ClarinetBII
	 }
   }
	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 2/2 \key c \major
		\CelloII 
	}
 >>
