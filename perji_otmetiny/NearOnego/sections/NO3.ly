 \version "2.12.2"
 \include "../parts/NO1.ly"
 \include "../parts/NO3.ly"
 
 
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