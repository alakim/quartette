\version "2.18.2"

\header {
  title = "Яблоневый Спас"
  subtitle = "2017"
  composer = "гр. Перьи Отметины"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


PIntro = {
	% \tag #'Harmony {\HrmA}
	\tag #'Clarinet {
		\key e \major
		R1*4 \longBar
		\repeat volta 2 { \relative c'' {
			r2.^Trumpet gis4 | b2. gis4 | e2. a4 | cis,2. r4 \longBar
		}}
	}
}

PI = {
	\tag #'Clarinet {
		\relative c''{ a8.^"Clarinet" gis fis e fis8 gis | b8. gis a gis fis8 gis | e1 | r1 | r1 |  }
		\relative c''{r4 gis16 a gis e4. r8. | }
		\relative c''{fis8. e b2 r8 | gis8 b4. fis8 b4. | a1 | fis8. e a,4. r4 | r1 | }
		\relative c''{r4^"мхах тайги" gis16 a gis e4 r16 gis8 e | b'2. a8 gis | e2. a8 e | fis2. r8 b | cis1 |}
		\relative c'''{ a8. e cis b a8 cis | e2 dis8 e dis b | cis1 |cis2^"сияньях" e | a1^"света" | b,8^"сверкает" cis dis e fis gis a b | cis1^"Спас" |}
		\relative c''{ e2 a,  \bar "||"}
	}
}
PRefr = {
	\tag #'Clarinet {
		\relative c'{e2^"Они уезжают" r2 | r1 | r1 | r1 \longBar }
		\relative c'{e4^"Они уезжают" fis8 e b'4 e8 b | a4 gis8 a b2 | }
		\relative c'{
			e4^"байдарки" fis8 e b'4 e8 b | a4^"Ладога" gis8 a b a dis fis \longBar
			dis8 b dis fis dis a dis fis | \time 2/4 dis8 a dis fis | \time 4/4 e2 r | r1 \bar "||"
		}
	}
}

PIII = {
	\tag #'Clarinet {
		\relative c''{ b2.^"босиком" gis8 fis | e2. cis'8 b | e1^"обочин" | b'4.^"связаны" cis8 b4. gis8 | e4 cis16 dis8 r16 e4 e16 fis8 r16 | }
		\relative c'''{ a16^"на темный день" gis e8~e2. | r1 | e1^"приберегу" | e4.^"солнце" dis16 e gis4. e8 | fis1 |  }
		\relative c'''{r2. r8 a | gis2^"на теплом камне" dis8 e dis b | cis1 | a2 b | cis1 | a2 gis8 a b gis | a2 e | a2 cis \bar "||"}
	}
}

PRefrII = {
	\tag #'Clarinet {
		R1*4^"Они уезжают" | R1*2 | 
		\relative c'' {e2 b | a2^"Ладога" b | r4 e2 dis16 cis b8~ | b2 r4 a16 gis fis e~| e8 e'4. dis16 cis b4. | cis2 dis | e2. e8 fis | e2. cis4 | b8. cis16 b2 e4 | b1 \bar "|." }
	}
}

Music = {
	\PIntro
	\PI
	\PRefr
	\PIII
	\PRefrII
}

<<
	% \new ChordNames{\transpose bes bes{
	% 	\keepWithTag #'Harmony \Music
	% }}
	\new Staff{ \transpose bes bes{
		\clef treble 
		\time 4/4
		\set Staff.instrumentName = "Clarinet"
		\compressFullBarRests

		\keepWithTag #'Clarinet \Music
		
	}}
>>

