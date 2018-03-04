\version "2.12.2"

\header {
	title = "Бологое"
	subtitle = "Woodwinds'2014"
	composer = "М.Лазарев"
}


Hrm = \chordmode{\transpose d e{
  d2:m g:m     g:m d:m   d:m a:m  
  g1:m     r2     d2:m c   g2:m d:m   d2:m  
}}

FlI = \transpose d e{\relative c''{
  d8. e16 f e d8 g4 f8 e | bes'16 a g f g8 a f16 e d8 d c |
  a'8 f f16 a c8 c16 g e8 c8. f16 | \time 2/4  g8 a bes e | \time 4/4 d16 e d e d8 c r2 |
  d4 a c16 d c a g8 a | bes4 e,8 g f g4 f16 e |
  \time 2/4 d4 r |
}}

ClI = \transpose d e{\relative c''{
  a8. g16 a8. d,16 g8 a16 bes a g f8 | g8. a16 bes8 a16 g d8. f16 e8 f16 g |
  a8. g16 a8 f c'4 g8 a | 
  \time 2/4 g8. a16 bes8 a16 g | 
  \time 4/4 <<{
        d'8. c16 d4~  d8 c d e |
        f4 f e16 f e d c8 d |g2 a8 d, d4~ |
        \time 2/4 d4 r4 |
    }\\{
        d,8. c16 d4~  d8 c d e
        f4 f e16 f e d c8 d |g2 a8 d, d4~ |
        \time 2/4 d4 r4 |
    }>> |
}}

% Рифф на соло флейты
ClFl = {
  \mark "На соло флейты"
  \relative c''{\repeat percent 2{a4 a gis16 a gis fis e8 fis | b4 b a16 b a gis fis4 |} }
  \relative c''{cis4 cis b16 cis b a gis8 a | b4 b a16 b a gis fis4~ |}
  \relative c'{fis2 r4. b8 | cis4 gis8. a16 a2 \bar "||"}
}


CodaHrm = \chordmode{\transpose d e{
	r1 | d1:m | g2:m d:m | f2 c |
	g2 bes4 c | d1:m |
}}

CodaFlI = \transpose d e{\relative c'''{
	\mark Coda
	d8^"где" c a g a4^"весть" c8^"бо-" a^"ло-" | c8^"гая" d d2~d8 d, |
	d2 a'8 bes a g | e'8 d c4 g'4. c,8 |
	bes8 c d e f4 e16 d c8 | d1 |
}}

CodaClI = \transpose d e{\relative c''{
	r1 | f4^"(эх!)" f8 e a d, d f | g8 a g f d2 | f2 e8 f e d | g4. f8 d4 e16 d c8 | d1 \bar "|."
}}

<<
	
	\new ChordNames{\Hrm}
	\new Staff{
		\set Staff.instrumentName = \markup {Accordion}
		\clef treble \time 4/4 \key e \minor
		\FlI
	}
	
	\new ChordNames{\transpose bes c'{\Hrm}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = \markup {Clarinet B}
		\clef treble \time 4/4 \key e \minor
		\ClI
	}}
	
>>

<<
  \new Staff{
    \clef treble
    \set Staff.instrumentName = \markup {Clarinet B}
    \key a \major
    \time 4/4
    \ClFl
  }
>>

<<
	
	\new ChordNames{\CodaHrm}
	\new Staff{
		\set Staff.instrumentName = \markup {Flute}
		\clef treble \time 4/4 \key e \minor
		\CodaFlI
	}
	
	\new ChordNames{\transpose bes c'{\Hrm}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = \markup {Clarinet B}
		\clef treble \time 4/4 \key e \minor
		\CodaClI
	}}
	
>>

