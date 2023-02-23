\version "2.18.2"

\header{
	title="Меж созвездий"
	composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Intro = {
	\tag #'Harmony {\chordmode{
		fis1 | a2 gis |
		fis1 | a2 gis |
		fis1 | a2 gis |
		g1 | fis |
	}}
	\tag #'Horn {
		\mark "Intro"
		\relative c'' {
			ais1~ | ais8 ais bis cis4 bis4. | 
			ais1~ | ais8 ais bis cis4 bis4. | 
			ais1~ | ais8 ais bis cis4 bis4. | 
			g1 \glissando | ais |
		}
	}
}

Verse = {
	\tag #'Harmony {\chordmode{
		fis1 | a2 gis |
		fis1 | a2 gis |
		fis1 | a2 gis |
		g1 | fis |
	}}
	\tag #'Voice {
		s1 s1 s1 s1
		s1 s1 s1 s1
	}
	\tag #'Horn {
		\mark "Verse"
		\relative c'' {
			r1 | r2 r8 cis bis cis |
			r1 | r2 r8 cis bis cis |
			r1 | r2 r8 cis bis cis |
			g1 \glissando | ais |
		}
	}
}

HrmPre = \chordmode{
	g1 | fis | a | gis |
	a | gis | g | fis |
}

Prechorus = {
	\tag #'Harmony {
		\HrmPre
		\HrmPre
	}
	\tag #'Voice {
		\relative c''{
			g1 | fis | a | gis | a | gis | g | fis |
			g1 | fis | a | gis | a | gis | g | fis |
		}
	}
	\tag #'Horn {
		\mark "Prechorus"
		\relative c'' {
			g1 | fis | a2. e4 | dis1 |
			a' | gis | g2. fis8 g | ais1 |
			b1 | ais | cis | bis | 
			a  | gis | g2. fis8 g | ais1 |
		}
	}
}

Chorus = {
	\tag #'Harmony {\chordmode{
		b1:m7 | b:m7 | e | fis |
		b1:m7 | b:m7 | e | fis |
		b1:m7 | b:m7 | e | fis |
		g1 | a | c | c |
		g1 | a | c | c |
	}}
	\tag #'Voice {
		s1 s1 s1 s1
		s1 s1 s1 s1
		s1 s1 s1 s1
		s1 s1 s1 s1
		s1 s1 s1 s1
	}
	\tag #'Horn {
		\mark "Chorus"
		\relative c' { r1 | r4 fis8 a b a4. | gis1 | r4 fis4 ais cis |}
		\relative c''{d1 | r2. fis,4 | gis1 | r4 fis ais cis |}
		\relative c''{d1 | r2. fis,4 | gis1 | r1 |}
		\relative c''{g2. b4 | a2 e | g1 \glissando | e'1 |}
		\relative c''{g2. b4 | a2 e | g1 | r1 \bar"||"}
	}
}

Solo = {
	\tag #'Harmony {\chordmode{
		b1:m7 | b:m7 | e | fis |
		b1:m7 | b:m7 | e | fis |
		b1:m7 | b:m7 | e | fis |
		g1 | a | c | c |
		g1 | a | c | c |
	}}
	\tag #'Horn {
		\mark "Solo"
		s1 s1 s1 s1 
		s1 s1 s1 s1 
		s1 s1 s1 s1 
		s1 s1 s1 s1 
		s1 s1 s1 s1 
	}
}

MusicA = {
	\Intro \break
	\Verse \break
}

MusicB = {
	\Prechorus \break
}

MusicC = {
	\Chorus \break
	\Solo \break
}

<<
	\new ChordNames{
		\keepWithTag #'Harmony \MusicA
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key fis \minor
		\keepWithTag #'Horn \MusicA
	}
>>

<<
	\new ChordNames{
		\keepWithTag #'Harmony \MusicB
	}
	\new Staff{
		\set Staff.instrumentName="Voice"
		\time 4/4
		\clef treble
		\key fis \minor
		\keepWithTag #'Voice \MusicB
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key fis \minor
		\keepWithTag #'Horn \MusicB
	}
>>

<<
	\new ChordNames{
		\keepWithTag #'Harmony \MusicC
	}
	\new Staff{
		\set Staff.instrumentName="Trumpet"
		\time 4/4
		\clef treble
		\key fis \minor
		\keepWithTag #'Horn \MusicC
	}
>>

\markup{
	"Форма Intro, Verse, Prechorus, chorus | Intro, Verse, Prechorus, Chorus | Solo (harm Chorus), Intro"
}
