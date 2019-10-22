\version "2.14.2"

\header{
	title="Шкипер Яблоневых Ветвей"
	composer = "Перьи Отметины"
	subsubtitle = "for clarinet B"
	subtitle = "2019 г., C dur"
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}


\include "skipper_parts.ly"

ClI = {
	\partial 4{s4}
	
	\relative c'{e1. | d2. e | a1. | g2. d |}
	\relative c'{e1. | g2. a | c g | a b |}
	\relative c'{e1. | f1. | e1. | f2. e |}
	% \relative c'{f1. | a2. g | f1. | g2.~g4 d e | g4. e8 a4 b4. a8 d4 |}
	% \relative c'{f2. g | a2. g | f2. d | b4. a8 b4  d b d | g4 d g b g d' | }
	\relative c'{f2. g | a2. g | f2. d | b4. a8 b4  d b d | g2 d4 b'4 g d' | }
	
	% % запой
	% \relative c'{e'2. e4 d c | a1. | e1. | r4 f e b2. | }
	% \relative c'{r4 f e c2. | r4 f e a,2. |} \relative c'{ r4 f e c g e' | g4\ff d g b g b |}
	% \relative c'{a'1.\pp | %{ беспечальный %} a2.\pp g | e1. | b2. g'4 d g |}
 	
	% запой
	% \relative c'{e'2. e4 d c | a1. | e1. | r4 e e e' d b | }
	% \relative c''{c1 d4 c  | f1 c4 d | e1 e,4 c | } \relative c''{ g4\ff d g b g b |}
	% \relative c'{a'1.\pp | %{ беспечальный %} a2.\pp g | e1. | b2. g'4 d g |}
	\relative c''{ e2. r4 c4 d | e2. r4 d4 c | g2.~g2 e4 | g2 f4 e2 d4 | }
	\relative c''{c2. r4 d4 c  | a'2. r4 e4 f | g2. c,2 e4 |  d2. b4 g b |}
	\relative c''{a2. r4 f4 g  | a2. g2. | e4 g2~g2. | b,2. g'4 d g |}
	
	
        
        
	% о том
	\relative c'{a'1.~\ff | a1. | g1. | r1. |}
	% о морской
	\relative c'{r1. | r1. | r1. | }
	% \relative c''{r2. g | a1. |}
	\relative c'{r2. d | e1. |}
	\relative c'{ f4. g8 f4 c' a d | e2.~e4 d g, | f'4 e d f e d | a'1.\ff | }
}


<<
  \new ChordNames{\transpose bes c{
    \chordmode{c2. | c2. | c2. | c2. | c2. |}
  }}
  \new Staff{\transpose bes c'{
    \time 6/8 \clef treble \key c \major
    \mark Intro
    \set Staff.instrumentName = "Clarinet B"
    % r4. r4 g'8 | e''2. | r8 a'8 d'' e'' d'' c'' | e''4. r4 g'8 | e''16 d'' e''4~e''4.|
    r4. r4 g'8 | e''2.~ | e''4.~ e''4 g'8 | e''16 d'' e''4~e''4.~| e''2. |
    \bar "||"
  }}
>>



<<
	\new Staff 
		%\with {
		%	fontSize = #-3
		%	\override StaffSymbol #'staff-space = #(magstep -3)
		%}
	  {\transpose bes d'{
		\set Staff.instrumentName = "Voice"
		\clef treble
		\Voice
	}}
	
	\new ChordNames{\transpose bes d'{
		\Harmony
	}}
	
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\key c \major
		\ClI
	}}
>>

HrmI = \chordmode {a2.:m | f | c | g |}
Harmony = {
  s2.
  \HrmI
  \HrmI
  \HrmI
  \HrmI
  % \chordmode{a2.:m}
}

SoloI = {
  \relative c''{r8 d es d fis a |}
  \relative c'''{
	bes2 g8 a | bes2 a8 g | d8 f2 r8 | r8 d d d' c a |
	bes2 c8 bes  | es2 bes8 c | d2 r4 | r8 d, es d fis a |
	bes2 g8 f | g2 f8 es | f4. r | r8 d d d' c a | 
	bes4 c bes8 a | g4 bes a8 bes | 
  }
  <bes'' d'''>2. r
}

<<
	\new ChordNames{\transpose bes c'{
		\Harmony 
	}}
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
                \time 6/8 \key c \major
                \mark Solo
		\transpose bes c{ \SoloI } \bar "|."
	}}
>>