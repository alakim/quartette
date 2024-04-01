\version "2.22.1"

\header{
	title="Догоню на перекладных"
	subtitle="партии медных духовых"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})




Verse = {
	\tag #'Harmony {\chordmode{
		cis1:m | e | cis:m | e |
		d2 c | cis1:m | cis2:m e | fis1:7 | fis:7 |
		cis1:m |
	}}
	\tag #'Trumpet {
		\mark "Verse"
		r1 | r1 | r1 | r1 |
		r1 | r1 | r1 | r1 |
		<<{
			\relative c' {
				fis2~fis8 gis16 fis gis8 b \bar "||" cis4 r2. |
			}
		}\\{
			\relative c' {
				cis2~cis4. dis8 | e4 r2. |
			}
		}>>
		\bar "||"
	}
	\tag #'Trombone {
		\relative c {
			r1 | r1 | r1 | r1 |
			r1 | r1 | r1 | r1 | fis2~fis4. gis8 \bar "||" cis4 r2. |
		}
		\bar "||"
	}
}

HChorusA = \chordmode{a1 | cis:m | b |}
TpChorusAa = {
	r1 | r2 r8<<{\relative c''{gis16 gis fis gis }}\\{\relative c' { e16 e cis e }}>> r8 |
}
TpChorusAb = {
	r1 | r2 r8<<{\relative c''{b16 b gis b }}\\{\relative c' { fis16 fis e e }}>> r8 |
}
TpChorusA = {\TpChorusAa \TpChorusAb}
TbChorusA = \relative c' { a1 | gis | fis | gis |}
Chorus = {
	\tag #'Harmony {\chordmode{
		\HChorusA e1 |
		\HChorusA e1 |
		\HChorusA e1 |
		\HChorusA cis1:m |
	}}
	\tag #'Trumpet {
		\mark "Chorus"
		\TpChorusA
		\TpChorusA
		\TpChorusA

		\TpChorusAa
		<<{\relative c'{fis2. gis4 | cis1}}\\{\relative c' {dis1 | e1 }}>> |
		\bar "||"
	}
	\tag #'Trombone {
		\TbChorusA
		\TbChorusA
		\TbChorusA
		\relative c' { a1 | gis | b | cis |}
		\bar "||"
	}
}

GuitarSolo = {
	\tag #'Harmony {\chordmode{
		\transpose bes c {
			b1:m | d2 a | g1 | g1
		}
	}}
	\tag #'Trumpet {
		\mark "Guitar solo"
		r1 | r1 | s1 | s1 |
		\bar "||"
	}
	\tag #'Trombone {
		r1 | r1 | s1 | s1 |
		\bar "||"
	}
}
Music = {
	\Verse \break
	\Chorus \break
	\GuitarSolo
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \Music
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key cis \minor
		\keepWithTag #'Trumpet \Music
	}
	\new ChordNames{\transpose c bes{
		\keepWithTag #'Harmony \Music
	}}
	\new Staff{\transpose c bes,{
		\set Staff.instrumentName="Trombone"
		\time 4/4
		\clef bass
		\key cis \minor
		\keepWithTag #'Trombone \Music
	}}
>>

