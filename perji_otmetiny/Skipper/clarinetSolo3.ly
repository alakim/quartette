\version "2.16.2"

\header{
	title="Шкипер Яблоневых Ветвей"
	composer = "Перьи Отметины"
    subsubtitle = "соло кларнета 3"
	% Кум предложил	
}

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
  \time 6/8 \key bes \major
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
	\new ChordNames{
		\Harmony 
	}
	\new Staff{
		\set Staff.instrumentName = "Clarinet B"
		\clef treble
		\transpose bes c{ \SoloI } \bar "|."
	}
>>