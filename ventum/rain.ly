\version "2.18.2"

\header {
  title = "Дождь"
  composer = "гр. Ventum"
}

outKey = c' 

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmIntro = \chordmode{e1:m e1 e e }
HrmA = \chordmode{e1:m d c e:m}
HrmB = \chordmode{e1:m c d e:m}

PIntro = {
	\tag #'Harmony {\HrmIntro}
	\tag #'Clarinet {\mark "Intro" R1*4 \bar "||"}
}

PA = {
	\tag #'Harmony {\HrmA}
	\tag #'Clarinet { \mark \markup{\circle "1"} R1*4  \bar "||"}
}

PB = {
	\tag #'Harmony {\HrmB}
	\tag #'Clarinet { \mark \markup{\circle "2"}
		\relative c''{g2 \tuplet 3/2 {g8 fis e} \tuplet 3/2 {g8 fis g} | a4. b8 g2 | a4. g16 b c4. a8 | b2 a \bar "||" }
	}
}


Music = {
	\PIntro \break
	\PA \break
	\PB \break
}

<<
	\new ChordNames{\transpose bes \outKey{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{ \transpose bes \outKey{
		\clef treble 
		\time 4/4
		\key e \minor
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests

		\keepWithTag #'Clarinet \Music
		
	}}
>>

\markup{\column{
	\line{\bold{"ФОРМА:"}}
	\line{\bold{"Intro :"} " guitar /clarinet /guitar /violin 8msr"}
	\line{\bold{"I: "} "Violin theme A/ break x2 8msr"}
	\line{\bold{"II:  "} "Guitar clean theme A /break x2 8msr"}
	\line{\bold{"II:  "} "Guitar clean theme B x2 8msr"}
	\line{\bold{"I:  "} "Violin theme A x2 8msr | | | | break |"}
	\line{\bold{"II:  "} "Guitar clean theme A /break x2 8msr"}
	\line{\bold{"II: "} "Clarinet solo / Violin solo 4+4 msr"}
	\line{\bold{"Pause:  "} "1msr"}
	\line{\bold{"Intro :  "} "guitar /clarinet /guitar /violin 4msr + Coda: guitar tremolo"}

}}
