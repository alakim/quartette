\version "2.14.2"

\header {
  title="Ноги вечно босы"
  composer = "День Радости"
}

HIntroB = \chordmode {
  a2:m  b2 | e2:7  a2: m |
  f2 d:m | bes2:7 es/g|
  d2:m a:m | d:m a:7 |
  
  d:7 g:m | g:7 c:7 |
  d:7 g:7 | c g:7 | c1 |
}
IntroB = {
  \mark Intro
  \repeat volta 2{
	  \relative c''{d8. b8. fis8 eis4~eis16 d cis b | cis8. ais e'8 d8. cis8 b16 cis d | }
	  \relative c'{b8. g8 b16 d fis e8. g b8 | des8. e8 bes16 a g a4~a16 g32 f e16 d |}
	  \relative c'{e8. b8. e8 fis8. b, fis'8 | g8. fis8 e16 fis g a8. fis dis8 |}
  }
  \alternative{
	{\relative c''{gis8. b8. d,8   c8. a8 gis16 a32 b cis16 | e8. cis8. g'8 fis2 |}}
	{
		\relative c''{gis8. b8. d,8   cis4~cis8 b16 a  |}
		\relative c'{ e8^> d8 fis^> e %{d8. e fis8 %} g8^> e d cis8 | d1 |}
	}
  }
}


Verse = {
  \mark Verse
  \relative c'{g4. a8~a2 | fis4. b8~b2 | g4. a8~a2 | ais4. b8~b2 | }
  
  %s1 s1 s1 s1
  \time 2/4 d'2
  \time 4/4 
  \relative c'{cis4 d b2 | fis4 ais4 b2 | a2 cis4 e | }
  %s1 s1 s1
  \time 2/4 fis'2
  \time 4/4 
  %s1 s1
  \relative c'{e8 d cis d e d cis e | d1 |}
}

HI = \chordmode {
  g2 d fis:7 b:m
}
HVerse = {
  \HI \HI
  s2 s1 s1 s1 
  s2 s1 s1
}
HII = \chordmode {
  e2:m b:m 
  e2:m b:m 
  e2:m a
  a:7 d
  a:7 d
}

HSolo = \chordmode{
  s1 
  f2 e:m | g c |
  f2 e:m | g a:m |
  f2 e:m | g c |
  f2 d:m | g:7 c:7 |
}
Solo = {
	\bar "||"
	\mark Solo
	\relative c''{s2. s8 a8 | c8 b c d e4. d16 e | f4. e16 d e2|}
	\relative c''{
		d8 c d e e8 d4 c16 d | b2. r8 c8 | 
		e8 d c e g4. e16 d | f4. d16 c e4. c8 | 
	}
	\relative c''{e8 d c f~   f8 e16 d c8 f~ | f8 d b g e' d c d | \parenthesize c1^Verse | }
	\bar "||"
}

%<<
%	\new ChordNames{
%		\HSolo
%	}
%	\new Staff{
%		\clef treble \time 4/4 \key c \major
%		\Solo
%	}
%>>

 <<
   \new ChordNames{
 	\HIntroB
 	\transpose c bes {\HVerse}
 	\HSolo
   }
   \new RhythmicStaff{
     \set Staff.instrumentName = "Guitar"
     \improvisationOn
     \relative c'{
       b2 b2 | b2 b2 | b2 b2 | b2 b2 | 
       b2 b2 | b2 b2 | b2 b2 | b2 b2 | 
       b2 b2 | b2 b2 | b2 b2 | b2 b2 | 
       b2 b2 | b2 b2 | b2 b2 | 
 		s1
 		s2 s1 s1 s1
 		s2 s1 s1
 		b2 b2 | b2 b2 | b2 b2 | b2 b2 | 
 		b2 b2 | b2 b2 | b2 b2 | b2 b2 | 
    }
     \improvisationOff
   }
   \new ChordNames{
     \transpose bes c{\HIntroB}
     \HVerse
     \transpose bes c{\HSolo}
   }
   \new Staff{
     \set Staff.instrumentName = "Clarinet B"
     \clef treble
     \time 4/4
     \key d \major
     \IntroB
     % \transpose bes c'{ \IntroB }
 	\bar "||"
     % \Intro
     \Verse
 	\bar "||"
 	\transpose bes c'{ \Solo }
   }
 >>



