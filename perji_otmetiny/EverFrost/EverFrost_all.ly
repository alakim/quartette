\include "EverFrost_parts.ly"

\header {
	title = "Мерзлота"
	composer = "Перьи Отметины"
}

\version "2.10.33"


<<
 	\new ChordNames{
          \ChordsA
 	}
		
% 	\new Staff{
% 		\set Staff.instrumentName = \markup { Flute }
% 			\clef treble \time 4/4 \key d \minor
% 			\mark \markup { \box \bold A }
% 			\FluteA
% 			\mark \markup { \box \bold B }
% 			\FluteB 
% 	}
        \new Lyrics{
            \LyricsA \LyricsSI \LyricsB \LyricsRefr
            \LyricsSII \LyricsC \LyricsRefr
        }
        \new Staff{
          \set Staff.instrumentName = \markup {Voice}
          \clef treble \time 4/4 \key g \minor
          \VoiceA \VoiceSI \VoiceB \VoiceRefr
          \VoiceSII \VoiceC \VoiceRefr
        }
% 	\new Staff{
% 		\set Staff.instrumentName = \markup { Clarinet }
%                 \transpose bes c{
% 			\clef treble \time 4/4 \key d \minor
% 			\ClarinetA 
% 			\ClarinetB
%                       }
% 	}
>>

<<
         \new Staff{
          \set Staff.instrumentName = \markup {Clarinet}
          \clef treble \time 4/4 \key g \minor
          \mark \markup {Intro}
          \ClarinetIntro
          \break
          \mark \markup {"break 1"}
          \ClarinetBreakI
        }

>>


