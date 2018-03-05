\version "2.12.2"

\header{
	title="Сей стих о любви, гл.1"
	subtitle="Духовный стих"
}

\paper {
  #(set-paper-size "letter")
  bottom-margin = 20\mm
}
#(set-global-staff-size 17)

srcLineBreak = {} % {\break}

Song = {
	\relative c'{e4(d) f2 e4(d) c2 d e1  f4(g) a2 g4(f)}\srcLineBreak 
	\relative c'{g'2 e1 \bar "|" d2 e4(f) g(f) g2 e d f4(g2. f4)}\srcLineBreak 
	\relative c'{e1 d \bar "|" e2 d e4(d) f(g) a2 g4(f) g2 d4(f)} \srcLineBreak 
	\relative c'{e1 \bar "|" c4(d) e2.(d4) e(f) g2 e4(f e d) c4(d c b)} \srcLineBreak 
	\relative c'{a1 \bar "|" e'2 e4(g) e2 f4(e) d2 e d2(e4 f) g4(f) e4 (f d e1) d \bar "|"} \srcLineBreak
	\relative c'{e2 e d e d4(c d2) c4(e)} \srcLineBreak
	\relative c'{e4(d) d8(c b4 c b) a1 g \bar "|" e'4(d) f(g) a2 g4(f)} \srcLineBreak
	\relative c'{g'2 e2.(f4) g2 g4(f) e4(f d) e1 d \bar "|" c4(b)} \srcLineBreak
	\relative c'{c4(d) e2(f4 e) d2 e d1 \bar "|" d2 e4(f) g2 e } \srcLineBreak
	\relative c'{d2 f4(g2. f4) e1 d2(f4 g) \bar "|" a2 g4(f) g2(f)} \srcLineBreak
	\relative c'{e1 \bar "|" e2 c4(e) d2 c1 d \bar "|" c4(d) e2.(d4)} \srcLineBreak
	\relative c'{e4(f g2) e4(f e d) c4(d c b) a1 \bar "|" e'2 e4(c) d4(f e d)} \srcLineBreak
	\relative c'{c2 d e1 \bar "|" e4(d) f(g) a2 g4(f) g2(f) e1 \bar "|"} \srcLineBreak
	\relative c'{d2 e4(f) g2 f4(e) d2(e4 f) g2 e4(f d) e1 d \bar "|" } \srcLineBreak
	\relative c'{e4(d) e(f) e(d) c(d e d) e1 (f2 g1 f4 e f1 e d2. c4 d e f2 e1 ) \bar "|"} \srcLineBreak
	\relative c'{e4(f) g(f e f) g1 f4(e d2)} \srcLineBreak
	\relative c'{f4(g2. f4) e1 d \bar "|" c4(d) e2 c4(e) d2 } \srcLineBreak
	\relative c'{c1 d2 (f4 g) \bar "|" a2 g4(f) g2 d4 (f) e1 \bar "|" d2 (g1)} \srcLineBreak
	\relative c'{f4 (g f e) d1 \bar "|" d2 e4(f) g2 f4(e) f2 e d4(c) d(e f2) e1 d \bar "|."} \srcLineBreak
}

Lyrics = \lyricmode{
	До- бро- бо- я- ти- ся бла- ги- я
	лю- ди со- твор- ша- го не- бо и 
	зем- лю И- же все- го боль- ши со- тво-
	рил лю- бов- но- е жи- ти-
	е. То- го ра- ди бра- ти- е воз- лю- бим
	стя- жа- ти лю- бовь ко
	всем рав- ну- ю. Лю- бы дол- го
	тер- пит, ми- ло- серд- ству- ет, лю-
	бы не за- ви дит, лю- бы не пре-
	воз- но- сит- ся, не гор- дит-
	ся, не без- чин- ству- ет, не и
	щет сво- е- го, не раз- дра-
	жа- ет- ся, не вме- ня- ет зло- е,
	не ра- ду- ет- ся о не- прав- де.
	Ра- ду- ет- же- ся
	о и- сти- не,
	вся лю- бит, все- му ве- ру
	ем- лет, вся у- по- ва- ет, вся 
	тер- пит. Лю- бы ни- ко- ли- же от па- да- ет.
}

\score {
	<<
		\new Staff{\new Voice = "melody"{
			\clef treble \key c \major
			\cadenzaOn
			\Song
			\cadenzaOff
		}}
		\new Lyrics{\lyricsto "melody"{
			\Lyrics
		}}
	>>
	\layout {
		\context {
			\Staff 
			\remove "Time_signature_engraver"
		}
	}
}