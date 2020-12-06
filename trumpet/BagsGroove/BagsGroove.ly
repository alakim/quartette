\version "2.18.2"


\header{
	title="Bag's Groove"
	composer="solo by Miles Davis"
	subtitle="transcribed by O.Amelchenko"
	subsubtitle = "https://www.youtube.com/watch?v=80vdh-KGhYw"
}

Hrm = \chordmode {
  f1:7 bes:7 f:7 f:7
  bes:7 bes:7 f:7 f:7
  g:m7 c:7 f:7 g2:m7 c:7
}


SoloI = {
	\tag #'Harmony { s1 \Hrm \Hrm}
	\tag #'Trumpet {
		\relative c'{r2 r8 c8 f as \bar "||"}
		\mark \markup{\box{"1"}}
		\override Glissando.style = #'zigzag
		\relative c''{bes2 bes8 ces bes as | f4 f2.~| f2 bes4  \parenthesize bes | a4 r8 f es2 |}\break
		\relative c'{r4. d8 f g as ces | bes4^.^- bes^.^- bes8 as r f | as2 bes8 as r4 | r1 |}\break
		\relative c'{r8 c f g as ces bes as | f8 \parenthesize c f a bes4 a8^. f | c4 e8 es~es4 r4 | r2 c8 d e es~ |}\bar "||" \break
	
		\mark \markup{\box{"2"}}	
		\relative c'{es4. \acciaccatura c'8 d8 c4 a8 f | es4 r r8 des8 es des | bes2. \glissando f'4 | r1 | }\break
		\relative c'{r8 d f g as b d e | f4^- e^. c^- as8 es~ | es2 r | r2 e'8 d c b |}\break
		\relative c''{bes8 a fis a g a bes c | des8 b c bes a c bes b~| b4. bes16 a as8 f r4 | r1 |}\bar "||" \break
	}
}
SoloIII = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"3"}}
		\relative c'{r8 c f as bes4^.^- bes4 ^.^- | bes4^.^- bes4^.^- bes8 as f es | f4. f8 r2 | r1 |}\break
		\relative c'{\acciaccatura es8 \tuplet 3/2 {des8 d e~} \tuplet 3/2{e8 f g} as8^. bes b^. cis \(| d8^.\) e (f^.) g (bes) e, r4 | c4^- a8 f g a r4 | r1 |}\break
		\relative c''{r8 a bes c d bes g r | d' bes g r \tuplet 3/2{des'8 d des} c8 r | c8 a f bes a f r4 | r1 |}
	}
}
SoloIV = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"4"}}
		\relative c'{r8 c d e g e f g | a c d e f e d des | \tuplet 3/2{c8 b a } bes8 a f4 g8 es | r4. \acciaccatura c'8 d8 c4. a8 | }\break
		\relative c'{f4^. f2 r4 | as8 b bes as f c f a | bes8 a~a4 \tuplet 3/2{bes8 a4} \tuplet 3/2{bes8 a4~} | \tuplet 3/2{a8 bes a~} a4 \tuplet 3/2{bes8 a4~} \tuplet 3/2{a8 bes a}}\break
		\relative c''{r1 | r8 a bes c des b c b | bes? as f a bes a~a4 | r2 r4. e'8 \bar "||"}\break
	}
}
SoloV = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"5"}}
		\relative c''{ f4^. e^. c^. des8 d | r4 bes8 g r e \tuplet 3/2{f8 g bes} | c^. des (c^.) bes r g (f^.) [es] | r4 r8 \tuplet 3/2{des'16 d des} c8^. [a] f r | }\break
		\relative c''{bes4 r2. | g'8 as e c as e c r | d4. d8 r2 | r1 | }\break
		\relative c''{ g16 as g as g8 a bes c d f | ges a g f e16 es d des c8 bes | a8 c d? r (f4) r | r1 \bar "||" }\break
	}
}
SoloVI = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"6"}}
		\relative c''{ r8 e f [e] c r a \parenthesize f | bes4. b8 r4. d16 des | c8 e,? f bes a f c \parenthesize bes | es4 r4 r2 |}\break
		\relative c''{r2 bes | as4^. as8 f r f es4 | c4. d8 r4 c8 d | e8 f g a fis a c es | }\break
		\relative c''{ d4^- r8 es d4^- bes8 g | r4 \tuplet 3/2{g8 a bes} c8^. des c bes | a8 f c e f r r4 | r1 \bar "||"}\break
	}
}
SoloVII = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"7"}}
		\relative c''{r4 e4^. c8 a f r | bes4. ces8 r4 r8 d16 des | c8 a f bes a f d c | es8 f r4 r2 |}\break
		\relative c''{r4 \acciaccatura e8 d4 c8 as f d | as'4. bes8 r4 r8 d16 e | c8 a f bes a f c bes | e8 g r4 r2 |}\break
		\relative c''{r8 g16 a bes8 c d bes g r | as8 a e' es b as e d | c b c d e g f g | a8 c a bes b d des b \bar "||"}\break
	}
}
SoloVIII = {
	\tag #'Harmony { \Hrm}
	\tag #'Trumpet {
		\mark \markup{\box{"8"}}
		\relative c''{c8 r (f2) e8 c | r1 | d8 \parenthesize cis d f~f4 d8 c | r8 a4 r8 d8 c a4^.^- |}\break
		\relative c'{f4. as8 r2 | r2 as8 b bes as | f8 c f a bes16^> a8. bes16^> a8. |bes16^> a8. bes16^> a8. bes16^> a8. bes16^> a8. }\break
		\relative c''{g4^- r2. | r4. a8 bes c d e | f8 a r4 f8 c r4 | r2. r8 a' \bar "||"}\break
	}
}
SoloIX = {
	\tag #'Harmony { \Hrm \chordmode {f1:7}}
	\tag #'Trumpet {
		\mark \markup{\box{"9"}}
		\relative c'''{ bes4 a^. r8 f c a | bes4. b8 r4 r8 d16 des | c4 f8 as a as a f | es8 es r4 r r8 f | }\break
		\relative c''{d8 r r4 f8 as f c | b8 bes as f bes4 a8 f | c4^- bes8 a r2 | r2. r8 a' | }\break
		\relative c''{ g8 a bes c d4^- bes^- | r8 f \tuplet 3/2{fis g bes} c8 des c bes | a8 f c \parenthesize bes \parenthesize f' a r4 | r2 bes4 a8 f \bar "||" }\break
		{c'4 r4 r2 \bar "|."}
	}
}


Music = {
	\key f \major
	\SoloI \break
	\SoloIII \break
	\SoloIV \break
	\SoloV \break
	\SoloVI \break
	\SoloVII \break
	\SoloVIII \break
	\SoloIX \break
}

<<
	\new ChordNames{
	    \transpose bes c{
		\keepWithTag #'Harmony \Music
	    }
	}
	\new Staff{
	    \set Staff.instrumentName = "Trumpet" \time 4/4
	    \clef treble
	    \transpose bes c'{
		\keepWithTag #'Trumpet \Music
	    }
	}
>>






