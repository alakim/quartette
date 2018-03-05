\version "2.12.2"

\header {
	title = "The Pink Panther theme"
	composer = "Henry Mancini"
}


Harmony = \chordmode{
  \partial 16 {r16}|
  g1:m | r | es:7 | r |
  g:m |r | as:7 |
  r | g:m | r |
  es:7 | r | g:m |
   r | r | es:7 |
  g:m | r |
}


ThemeI = \relative c'{ % в тональности инструмента in Es
	\partial 16 {dis16 (|}
	e4_.) r8. fis16 (g4_.) r8. dis16( |
	e8.) fis16 (g8.) c16(b8.) e,16(g8.) b16( |bes2~) \times 2/3 {bes8 a (g) } \times 2/3 {e8 (d) e~} | e2 r4 r8. dis16 (|
}
ThemeII = \relative c'{
	e4_.) r8. fis16 (g4_.) r8. dis16 ( | e8.) fis16 (g8.) c16 (b8.) g16 (b8.) e16 (| es1~ )|
	es2  r4 r8. dis,16 ( | e4_.) r8. fis16 (g4_.) r8. dis16 (| e8.) fis16 (g8.) c16 (b8.) e,16 ( g8.) b16 (|
	bes2~) \times 2/3 {bes8 a (g)} \times 2/3 {e (d) e~} | e2 r2 | r4 e'8. (d16) b8.(a16) g8.(e16) |
	bes'16_> (a8.) bes16_> (a8.) bes16_> (a8.) bes16_> (a8.) | \times 2/3 {g8 (e d)} e8 e~e2 | \times 2/3 {g8 (e d)} e8 e~e2 | 
	\times 2/3 {g8 (e d)} e8 e~e2~ | e4 r2 e'4~ | 
	
	\override Glissando #'style = #'zigzag
	\cadenzaOn
	
	e1\glissando
	\hideNotes
	e,4 
	\unHideNotes
	\cadenzaOff
	
	\bar "|."
}


<<
        \new ChordNames{
            \Harmony
        }
        \new ChordNames{
          \transpose g a {
            \override ChordName   #'font-size = #-4
            \Harmony
          }
        }
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\transpose e a,{
			\clef treble \time 4/4 \key e \minor
			\ThemeI \ThemeII
		}
	}
>>