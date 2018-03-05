\version "2.12.2"

\header{ 
  title = "Ночь темна была"
  subtitle = "Из репертуара мужского хора \"Валаам\""
  composer = "Упрощённая редакция М.Лазарева"
}

\paper {   
  left-margin = 20\mm  
  right-margin = 20\mm  
  top-margin = 20\mm  
  bottom-margin = 20\mm  
}


TenorSolo = {
	\key d \minor
	\cadenzaOn
	\relative c''{c4^"Соло (запев)" a g2 (a4 c a) bes4 (g) f4 (d g2) r4 } 
	\relative c''{ g4 (d'2) c4 bes2 (a4 bes c2) a4 (f) g1\fermata} \bar "|"
	\cadenzaOff
}
TTenorSolo = \lyricmode{
	Ночь4 тем-4 на1 _4 бы-2 ла1 _4 и2. не-4 ме-1. сяч-2 на1 
}

Soprano = {
	\key d \minor
	\cadenzaOn
	\relative c''{c4 a bes2 (a4 bes c2) a4(f) g2 (d'2^"Ой") d4 c bes2 ( a4 bes c2) a4 (f) g1\fermata } \bar "|"
	\cadenzaOff
}
Alto = {
	\cadenzaOn
	\relative c'{f4 f f1 (e2) f2 g2~g2 g4 g g1 (f2) f2 c1}
	\cadenzaOff
}

Bass = {
	\key d \minor
	\cadenzaOn
	\relative c{f4 f d1(c2) d2 bes1  bes'4 a g1 (a2) d,2 c1_\fermata }
	\cadenzaOff
}

TChoir = \lyricmode{
	Рать4 скуч-4 на1. бы-2 ла1  и4 не4 ве-1. се-2 ла1
}

Vocalise = {
	\key d \minor
	\cadenzaOn
	\relative c''{\parenthesize f4~ \parenthesize f4~f1 (e2 f2 g1 g4 f d1 f1 d2 c1 ) } \bar "|."
	\cadenzaOff
}

\markup { \vspace #2 }

\score {
	<<
		\new Staff{
			\set Staff.instrumentName = "Тенор"
			\TenorSolo
		}
		\new Lyrics{\TTenorSolo}
	>>
	\layout {
		\context {
			\Staff 
			\remove "Time_signature_engraver"
		}
	}
}

\score {
	\new StaffGroup <<
		\new Staff{
			\set Staff.instrumentName = \markup{\column {\line{\center-align{"Т,С"}} \line{\center-align{"А"}}}}
			\clef treble
			<<{\Soprano}\\{\Alto}>>
		}
		\new Lyrics{\TChoir}
		\new Staff{
			\set Staff.instrumentName = "Б"
			\clef bass
			\Bass
		}
	>>
	\layout {
		\context {
			\Staff 
			\remove "Time_signature_engraver" 
		}
	}
}

\score {
	<<
		\new Staff{
			\set Staff.instrumentName = \markup{\column{
				\line{"Вокализ"}
				\line{"(тенор)"}
				\line{"6-й куплет"}
			}}
			\Vocalise
		}
	>>
	\layout {
		\context {
			\Staff 
			\remove "Time_signature_engraver" 
		}
	}
}

\markup { \vspace #2 }

\markup{\column{
	\line{"Все солдатики пригорюнились, пригорюнившись да заплакали."}
	\line{"Не отцов родных оплакивали, и не жен своих, и не детушек."}
	\line{"Как оплакивали Мать родимую, Мать родимую, да кормилицу,"}
	\line{"Златоглавую Москву-матушку, разоренную Бонопартием."}
	\line{"Ночь темна была, и не месячна..."}
}}


