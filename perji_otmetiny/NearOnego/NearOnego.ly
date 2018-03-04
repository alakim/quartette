 \version "2.12.2"
 \include "parts/NO1.ly"
 \include "parts/NOSolo.ly"
 \include "parts/NO2.ly"
 \include "parts/NO3.ly"
 
 date = #(strftime "v.%Y%m%d" (localtime (current-time)))



 \header{
   title="Прионежье"
   composer="Перьи Отметины"
   subsubtitle=\date
 }
 
 \paper {
  #(set-paper-size "a4")
  between-system-padding = #1.5
  bottom-margin = 10\mm
}
#(set-global-staff-size 19)
 
 <<
   \new ChordNames{
     \HarmonyI \HarmonySoloI \HarmonySoloII
    }
	\new Staff {
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceI
                r1|r1|r1|r1|
                r1|r1|r1|r1|
                r1|r1|r1|r1|
                r1|r1|
	}
	\new Lyrics{\VerseI}
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinI \ViolinSoloI
	}
   \new Staff{
     \set Staff.instrumentName="Clarinet B"
	 \transpose c' bes {
		 \clef treble \time 2/2 \key d \major
		 \ClarinetBI
		 \SoloI
	 }
   }
	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 2/2 \key c \major
		\CelloI \CelloSoloI
	}
 >>
 
 <<
   \new ChordNames{
     \HarmonyVerse \HarmonyVerse \HarmonyVerse \HarmonyVerse 
   }
	\new Staff{
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceII
	}
   \new Lyrics{
     \VerseII
   }
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinII
	}
   \new Staff{\transpose c' bes{
     \set Staff.instrumentName="Clarinet B"
     \clef treble \time 2/2 \key d \major
     \ClarinetBII
   }}
	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 2/2 \key c \major
		\CelloII
	}
 >>
 
 <<
   \new ChordNames{
     \HarmonyI
   }
	\new Staff {
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceIII
	}
	\new Lyrics{\VerseIII}
	\new Staff{
		\set Staff.instrumentName = "Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinIII
	}
	\new Staff{\transpose c' bes{
		\set Staff.instrumentName="Clarinet B"
		\clef treble \time 2/2 \key d \major
		\ClarinetBIII
	}}
 	\new Staff{
		\set Staff.instrumentName = "Cello"
		\clef bass \time 2/2 \key c \major
		\CelloIII
	}
>>