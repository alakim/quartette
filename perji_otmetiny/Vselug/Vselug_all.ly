\include "Vselug_parts.ly"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))
\header {
	title = "Вселуг"
	composer = "Перьи Отметины"
        subsubtitle=\date
}

\version "2.10.33"


<<
        \new ChordNames{\ChordsA }
        %\new Lyrics{\HarmonyA}
		
	\new Staff{
		\set Staff.instrumentName = \markup { Recorder }
			\clef treble \time 6/8 \key d \minor
			\mark \markup { \box \bold Intro }
			\RecorderA
	}
>>

<<
        \new ChordNames{\transpose bes c'{
          \ChordsB \ChordsB
          \ChordsAa \ChordsAbc
          \ChordsAa \ChordsAa 
          \ChordsCoda
      }}
%         \new Lyrics{
%             \HarmonyB \HarmonyB 
%             \HarmonyAa \HarmonyAbc
%             \HarmonyAa \HarmonyAa 
%             \HarmonyCoda
%         }
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet }
                \transpose bes c'{
			\clef treble \time 6/8 \key d \minor
                        
                        \mark \markup { \box \bold "Куплет 2"  } 
                        \ClarinetBa \break
                        
                        \mark \markup { \box \bold "Куплет 3" } 
                        \ClarinetBb \break
                        
                        \mark \markup { \box \bold Проигрыш  } 
                        \repeat volta 2{ \ClarinetC } \ClarinetD
                        \break
                        \ClarinetE
                        \break
                        \ClarinetF
                      }
	}
>>

% \markup{
%   \column{
%     \line{1 5 6/7 1 "     "  5 1 5 1 5 1 6/7 1 6/7 1}
%   }
% }

