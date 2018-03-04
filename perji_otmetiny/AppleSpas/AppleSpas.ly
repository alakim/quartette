
\header {
	title = "Яблоневый Спас"
	composer = "Перьи Отметины"
}

\version "2.10.33"


% ChordsA = \chordmode   { g1:m | g1:m | f1 | f1 |}
% ClarinetA = \relative c'' {
% 	d2. c8 d | bes2. a8 bes | c1 | f1 |
% 	g1 | g1 | f1 | f1 \bar "||"
% }

ClarinetIntro = \relative c''{ \partial 4 ais4 | cis2. ais4 | fis2. r4 \bar "||"}
ClarinetIntroLyr = \lyricmode{\partial 4 ""4 | ""1 | ""1 |}

ClarinetRiffA = \relative c'{
  fis,4. gis cis4 | fis4. cis gis4 |
  fis4. cis' fis4 | gis4. fis cis4 \bar "||"
}
ClarinetRiffALyr = \lyricmode{ ""1 | ""1 | ""1 | ""1 |}


ClarinetA = \relative c''{
    b8 ais4 gis fis8 gis ais | cis8 ais4 b ais8 gis ais | 
    fis2. ais16 b ais fis~ | fis4 ais,16 b ais fis~ fis2 \bar "||"
}
ClarinetALyr = \lyricmode   { 
    ""1 | ""1 | рубец2 рябины2 | ""1 |
}

ClarinetB = \relative c''{
  r1 | b8 fis4 dis cis8 b dis | 
  fis2 eis8 fis eis cis | dis2 r2 |
  dis2 fis | b1 |
  cis,8 dis eis fis gis ais b cis | dis1 | fis2 b, | fis2\pp r2 \bar "||"
}
ClarinetBLyr = \lyricmode   { 
   "...Фавор, а"1 | здесь1 |
   преображенским2. хруста-4 | лем1 |
   "в сиянии торжест-"2 вующего2 | света1 |
   "сияет яблоневый"1 | Спас1 |
}

ClarinetC = \relative c'{
  fis8^\markup{"рифф для перехода"} cis4 dis cis8 b gis | fis8 cis'4 fis cis8 ais gis | fis2 r2 \bar "||"
}

ClarinetD = \relative c'{
  fis4.^\markup{"Они уезжают..."} eis16 [cis]~cis2 | b4. cis16 dis cis2 |
  fis4. eis16 [cis]~cis2 | b4. cis16[dis] cis2 | ais'4. gis16 [fis] eis2 | dis4. eis16 [fis] gis2 \bar "||"
}

ClarinetE = \relative c''{
  cis4.^\markup{байдарки} cis16 dis cis2 | b4. cis16 dis cis2 | fis4. eis16 dis cis2 | b4. cis16 dis cis2 \bar "||"
}


<<
% 	\new ChordNames{
% 		\ChordsA \ChordsA 
% 		\ChordsB
% 		\ChordsC
% 	}
		
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet }
	 	\clef treble \time 4/4 \key fis \major
		\mark \markup { \box \bold Intro }
		\ClarinetIntro
                
                \mark \markup {\box "Riff A"}
                %S\clef alto
                \ClarinetRiffA
                
                \mark \markup {\box A}
                \clef treble
                \ClarinetA
                
                \mark \markup {\box B}
                \clef treble
                \ClarinetB
                
                \mark \markup {\box C}
                \ClarinetC
               
                \mark \markup {\box D}
                \ClarinetD
               
                \mark \markup {\box E}
                \ClarinetE
	}
        \new Lyrics{
          \ClarinetIntroLyr
          \ClarinetRiffALyr
          \ClarinetALyr
          \ClarinetBLyr
        }
>>


