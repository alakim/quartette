
\header {
	title = "Плат"
	composer = "Перьи Отметины"
}

\version "2.10.33"

ClarinetMainRiff = \relative c'{
  ais8 b4 cis fis8 cis b |
}

ClarinetBridgeI = \relative c'{
  dis2.^"плат" fis8 gis |fis2 e8 e e4 | e8 fis fis2 r4 |
}

ClarinetSoloI = \relative c''{
  fis2.^"спрячется" cis4 |
  r1^"ad lib"
}

ClarinetSoloA = \relative c'{
  fis2. gis8 ais | b2. ais8 gis | ais1~|ais2. gis8 ais | gis8 ais fis2.~| fis1 |
}

\markup{"E(Fis)dur (mixolidyan)"}
<<
		
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B }
                  \clef treble \time 4/4 \key fis \major
                  %\mark \markup { \box \bold Intro }
                  \mark \markup{"Main riff"}
                  \ClarinetMainRiff \ClarinetMainRiff
                  \break
                  \ClarinetBridgeI
                  \break
                  \ClarinetSoloI
                  \break
                  \mark \markup{\box \bold A}
                  \ClarinetSoloA
	}
>>


