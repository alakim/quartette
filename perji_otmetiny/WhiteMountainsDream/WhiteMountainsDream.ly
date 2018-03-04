
\header {
	title = "Сон о белых горах"
	composer = "Перьи Отметины"
}

\version "2.10.33"


ChordsA = \chordmode   { 
   d2 b2:m | g2 a2 | 
   d2 b2:m | fis2:m a2 |
   d2 b2:m | g2 a2 | 
   b2:m a2 | b1:m  |
}

Harmony = \lyricmode {
  III2 I2 | VI2 VII |
  III2 I | V2 VII |
  III2 I | VI2 VII |
  I2 VII | I1 |
}

VoiceA = \relative c' {
  e8 d4 d8 e fis4 fis8 | b4. d8 b a4. |
  e8 d4 fis16 a b2 | a8 fis~fis2 r8 e8 |
  e8 d4 d8 e fis4 fis8 | b4. d8 b a4 e8 |
  d8 b4. e2 | d8 b8~b2. \bar "||"
}

ClarinetA = \relative c' {
  fis2 d2 | d2 cis |
  a2 d | fis2 e |
  %fis2 b | g2 e |
  fis2 d2 | d2 cis |
  d2 e | fis1 \bar "||"
}

ClarinetAa = \relative c'{
  fis4. fis16 e %{d4. b16 cis%} d2 |d2  \times 2/3{cis4 d e} |
  a,2
}

<<
	\new ChordNames{
		\ChordsA 
	}
		
	\new Staff{
		\set Staff.instrumentName = \markup {Voice}
	 	\clef treble \time 4/4 \key b \minor
                \VoiceA
	}
        
%         \new ChordNames{
%             \transpose bes c' {
%                 \ChordsA 
%             }
%         }
        
        \new Lyrics{
           \Harmony
        }
        
        \new Staff{
          \set Staff.instrumentName = \markup {Clarinet}
          \clef treble \time 4/4 \key b \minor
          \ClarinetA
        }
        
        \new Staff{
          \set Staff.instrumentName = \markup {Clarinet v2}
          \clef treble \time 4/4 \key b \minor
          \ClarinetAa
        }
        
        \new ChordNames{
            \transpose bes c' {
                \ChordsA 
            }
        }
        
        \new Staff{
          \set Staff.instrumentName = \markup {Clarinet B}
          \transpose bes c' {
          %\transpose c' c' {
            \clef treble \time 4/4 \key b \minor
            \ClarinetA
          }
        }

>>


