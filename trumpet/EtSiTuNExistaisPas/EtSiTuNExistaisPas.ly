\version "2.18.2"


\header{
	title="Et si tu n'existais pas" 
}


% в оригинале тональность B moll
Solo = {
	\tag #'Harmony {\chordmode{\transpose c b,{
	  c1:m c1:m f1:m f:m f:m g:7
	  c:m c:m c:m f:m f:m f:m
	  g:7 es es g:7
	  c:m c:m f:m f:m
	}}}
	\tag #'Trumpet {\transpose c b,{
		\key c \minor
		\relative c'{ g8 c d es d4 c8 g~| g4 r8 g c d es g | bes4 as8 d,~d2 | r2 r8 d8 es f~|f8 e f g~g f g as~| as2 g8 f es d |}
		\relative c'{ d4 c8 es~es2 | g,8 c d es d4 c8 g~|g4 r8 g c d es g | bes4 as8 d,~d2 | r2 r8 d es f~| f8 e f g~g f g as~ |}
		\relative c''{as2 g8 f es d | d4 es8 bes~bes2~| bes4 r8 bes f'4 es | d4 c8 b~b2 \bar "||" }
		\relative c'{ g16 c d8 r4 g,16 c f8 r4 | g,16 c d8 g,16 c d8 g,16c f8 r4 | as,16 c d8 r4 as16 c f8 r4 | as,16 c d8 as16 c d8 as16 c f8 r4 \bar "|."}
		
	}}
}

Music = {
	\Solo \break
}

<<
	\new ChordNames{
		\transpose bes c { \keepWithTag #'Harmony \Music}
	}
	\new Staff{
		\set Staff.instrumentName = "Trumpet" \time 4/4
		\clef treble
		\transpose bes c' {
		  \keepWithTag #'Trumpet \Music
		}
	}
>>






