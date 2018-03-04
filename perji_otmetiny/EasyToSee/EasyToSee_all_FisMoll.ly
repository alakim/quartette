\include "EasyToSee_parts.ly"

 date = #(strftime "v.%Y%m%d" (localtime (current-time)))


\header {
  title = "Легко глядеть"
  composer = "Перьи Отметины"
  subsubtitle=\date
}

\version "2.10.33"



<<
  \new ChordNames{\Chords}
  
  \new Lyrics{\LyricsShort}
  
  \new Staff{
    \set Staff.instrumentName = \markup {Clarinet B}
    \transpose bes c'{
		\transpose e fis{
			\clef treble \time 4/4 \key e \minor
			\ClarinetI 
			\transpose c c,{ \ClarinetII}
			\ClarinetIII
		}
    }
  }

>>

% <<
%  	\new ChordNames{
%  		\ChordsA \ChordsBridge
%  	}
% 	\new Lyrics{
% 	  \LyricsA \LyricsBridge
% 	}
% 		
% 	\new Staff{
% 		\set Staff.instrumentName = \markup { Clarinet }
% 			\clef treble \time 12/8 \key e \minor
% 			%\mark \markup { \box \bold A }
% 			\ClarinetA 
% 			%\mark \markup { \box \bold Bridge }
% 			\ClarinetBridge
% 	}
% >>


