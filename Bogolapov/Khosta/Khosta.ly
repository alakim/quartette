\version "2.18.2"

\header{
	title="Хоста"
	subtitle="партии медных духовых"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HrmA = \chordmode{
	f1 a bes c
}

ChorusA = {
	\tag #'Harmony {\HrmA}
	\tag #'Trumpet {
		\mark "Chorus A"
		<<{
			\relative c'' { a1~ | a1 | f1 | g1 | }
		}\\{
			\relative c' { f1 | e1 | d1 | c1 | }
		}>>
		\bar "||"
	}
	\tag #'Trombone {
		\relative c {
			c1 | cis1 | d1 | e1 |
		}
		\bar "||"
	}
}

TbnIA = \relative c' { c1 | cis1 | d1 | e1 | }
TbnIIA = \relative c { f1 | a,1 | bes1 | c1 | }

ChorusB = {
	\tag #'Harmony {\HrmA}
	\tag #'Trumpet {
		\mark "Chorus B"
		<<{
			\relative c'' { f1 | e1 | bes1 | c1 | }
		}\\{
			\relative c'' { a1~ | a1 | f1 | g1 | }
		}>>
		\bar "||"
	}
	\tag #'Trombone {
		<<{
			\TbnIA
		}\\{
			\TbnIIA
		}>>
		\bar "||"
	}
}

Riff = {
	\tag #'Harmony {\HrmA \HrmA}
	\tag #'Trumpet {
		\mark "Chorus B"
		<<{
			\relative c'' { r1 | r1 | f2~f8 d4. | e4 r2. | }
			\relative c'' { c8 c4 r4 c4. | e8 e4 r4 cis4. | d1 | c4 r2. | }
		}\\{
			\relative c'' { a4 a a8 gis a cis8~ | cis8 cis4 cis cis4. | d2~d8 bes4. | a8 bes a g a g f e | } \break
			\relative c' { f8 f4 f e8 f a8~ | a8 g4 f e4. | f2~f8 e8 f4 | g4 r2. | }
		}>>
		\bar "||"
	}
	\tag #'Trombone {
		<<{
			\TbnIA 
			\relative c' { c1 | cis1 | d1 | e4 r2. | }
		}\\{
			\TbnIIA 
			\relative c { f1 | a,1 | bes1 | c4 r2. | }
		}>>
		\bar "||"
	}
}

Music = {
	\ChorusA \break
	\ChorusB \break
	\Riff \break
}

<<
	\new ChordNames{\transpose bes c{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key f \major
		\keepWithTag #'Trumpet \Music
	}}
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trombone"
		\time 4/4
		\clef bass
		\key f \major
		\keepWithTag #'Trombone \Music
	}
>>

