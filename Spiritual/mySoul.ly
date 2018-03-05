\version "2.12.2"

\header{
	title="Доколе, душе моя, гл.3"
	subtitle="Духовный стих"
}

\paper {
  #(set-paper-size "letter")
  bottom-margin = 20\mm
}
#(set-global-staff-size 22)

srcLineBreak = {} % {\break}

Song = {
	\relative c''{g2 a g g4(f) g(a g f) e (f g a) a(g2.) \bar "|" a4(bes c2)}\srcLineBreak 
	\relative c''{bes2 a4( g f2) g4(a) bes2 a4(g a2) g2 (f) g1 \bar "|" f4(g)}\srcLineBreak 
	\relative c''{a1 g2 g g4(f) g2(a) a4(f) f4(g2. f4) g4(a) g(f) }\srcLineBreak 
	\relative c'{e4(f g2) f4(e f2) e1 \bar "|" e2 d e e e4(d) f4(g)}\srcLineBreak 
	\relative c''{a2 g4(f) g2 d4(f) e1 \bar "|" f4(g) a(g) f4(g2. f4) g4(a) }\srcLineBreak 
	\relative c''{g4(f) e4(f g2) f4(e f2) e1 \bar "|" f4(g) a1 g }\srcLineBreak 
	\relative c''{a4(g f2 g1) g4(f) g(a) g(f) e(f g2) f4(e f2) e1 \bar "|" a4(g) a(bes) c2}\srcLineBreak 
	\relative c''{bes2 a a4(g f2) g4(a) bes2 a4(g a2) g(f) g1 \bar "|"}\srcLineBreak 
	\relative c''{g4(a) g(f) e(f g a) a(g2.) e2 d f4(g) a2 \bar "|" a2 g4(f)}\srcLineBreak 
	\relative c''{g2 d4(f) e1 \bar "|" g4(e) f4(g a g) f(g2. f4) g4}\srcLineBreak 
	\relative c'{f4 g(a) g(f) e(f g2) f4(e f2) e1 \bar "|."}\srcLineBreak 
}

Lyrics = \lyricmode{
	До- ко- ле, ду- ше- мо- я в_ле-
	нос- ти пре- бы- ва- е- ши? До-
	ко- ле не пре- бег- не- ши- к_по- ка-
	я- ни- ю? При- и- ми во ум су- 
	до гря- ду- щи- и и ог- не не-
	га- си- мы- и, и чер- ви-
	я не- у- сы- па- ю- ща. Во- зо- пи-
	и Хри- сто- ви при- ле- же- но,
	Жи- во- дав- че, я- ко Пет- ра по- гру-
	жа- е- ма, спа- си мя, Че-
	ло- ве- ко- лю- бе- че.
}

\score {
	<<
		\new Staff{\new Voice = "melody"{
			\clef treble \key f \major
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