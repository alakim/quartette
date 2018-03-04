
\header {
	title = "Сяду на полу"
	composer = "traditional"
}

\version "2.10.33"


LyricsA = \lyricmode {
	Ся-4 ду8 на по- лу да | но-4 ги8 про- тя- ну4 | ой-4 ле-8 лё ле- лё4 | но-4 ги8 про- тя- ну4 | 
}
AltoA = \relative c' {
	e4 d8 cis cis cis cis | fis8 ([e]) d e e e4 | d8 ([cis]) b fis' fis fis4 | d8 ([cis]) b fis' fis fis4 |
}
BassA = \relative c'{
	r4. r2 | d8 ([cis]) b a a a4 | b8 ([a]) gis fis fis fis4 | b8 ([a]) gis fis fis fis4 | 
}

LyricsB = \lyricmode {
	Ска-4 жу8 ма- мень- "ке:" да | го-4 ло-8 ва бо- лит4 | ой4 ле-8 лё ле- лё4 | го-4 ло-8 ва бо- лит4 |
}
AltoB = \relative c'{
	e4 e8 fis e e e | fis8 ([e]) e fis e e4 | fis8 ([eis]) eis  fis fis fis4 | fis8 ([eis]) eis fis fis fis4 |
}
BassB = \relative c'{
	a4 a8 a a a a | e4 e8 a a a4 | b8 ([a]) gis fis fis fis4 | b8 ([a]) gis fis fis fis4 | 
}

LyricsC = \lyricmode{
	Го-4 ло-8 ва бо- "лит," да | гу-4 лять8 хо- чет- ся4 | ой-4 ле-8 лё ле- лё4 | гу-4 лять8 хо- чет- "ся!"4 \bar "|." 
}
BassCT = \relative c'{
	a4 b8 cis cis a cis | d8 ([cis]) b d cis a4 | d8 ([cis]) b cis cis cis4 | d8 ([cis]) b cis cis cis4 | 
}
BassCB = \relative c'{
	a4 a8 a a a a | fis8 ([e]) e a a a4 | b8 ([a]) gis fis fis fis4 | b8 ([a]) gis fis fis fis4 | 
}

<<
	\new Staff{
		\set Staff.instrumentName = \markup {Alto}
		\clef treble \time 7/8 \key fis \minor
		\AltoA 
		\break
		\AltoB
		\break
		\AltoB
	}
	\new Lyrics{
		\LyricsA
		\LyricsB
		\LyricsC
	}  
	\new Staff{
		\set Staff.instrumentName = \markup {Bass}
		\clef bass \time 7/8 \key fis \minor
		\BassA
		<<
			\new Voice = "tenor"
				{ \voiceOne \BassB \BassCT}
			\new Voice = "bass"
				{ \voiceTwo \BassB \BassCB}
		>>
	}

>>

\markup{
  \column { 
	\line {Гулять хочется да куда можется, ой ле-лё ле-лё, куда можется}
	\line {Я украдуся, да нагуляюся  ой -}
	\line {Со милым дружком да нацелуюся - }
	\line {Нацелуюся да намилуюся - }
	\line{" "}
	\line {Научи, милой да как домой придти -}
	\line {Буди умницей да буди разумницей -}
	\line {Серой утицей да под воротицей -}
	\line {Ясным соколом да широким двором -}
	\line {В высокий терем да молодой женой -}
	\line {Высокий терем да раскрывается -}
	\line {Мой постылый муж да за столом сидит -}
	\line {За столом сидит да хлеб-соль кушает -}
	\line{" "}
	\line {Сяду на полу да ноги протяну}
  }
}

