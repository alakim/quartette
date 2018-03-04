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
#(set-global-staff-size 17)

smallChords = \override ChordName   #'font-size = #1
smallStaff = \override RhythmicStaff.StaffSymbol #'staff-space = #(magstep -9) 
voiceFontSize = #-5
 
 <<
	\new RhythmicStaff \with { fontSize = \voiceFontSize }{
		\smallStaff
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceI
	}
	\new Lyrics{\VerseI}
	\new ChordNames{\smallChords
		\HarmonyI 
	}
	\new Staff{
		\set Staff.instrumentName="Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinI
	}

 >>
 
 <<
	\new ChordNames{\smallChords
		\HarmonySoloI \HarmonySoloII
	}
	\new Staff{
		\set Staff.instrumentName="Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinSoloI
	}
 >>
 
 <<
	\new RhythmicStaff \with { fontSize = \voiceFontSize }{
		\smallStaff
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceII
	}
   \new Lyrics{
     \VerseII
   }
	\new ChordNames{\smallChords
		\HarmonyVerse \HarmonyVerse \HarmonyVerse \HarmonyVerse 
	}
   \new Staff{
     \set Staff.instrumentName="Violin"
     \clef treble \time 2/2 \key c \major
     \ViolinII
   }

 >>
 
 <<

	\new RhythmicStaff \with { fontSize = \voiceFontSize }{
		\smallStaff
		\set Staff.instrumentName = "Voice"
		\clef treble \time 4/4 \key c \major
		\VoiceIII
	}
	\new Lyrics{\VerseIII}

	\new ChordNames{\smallChords
		\HarmonyI
	}
	\new Staff{
		\set Staff.instrumentName="Violin"
		\clef treble \time 2/2 \key c \major
		\ViolinIII
	}

>>