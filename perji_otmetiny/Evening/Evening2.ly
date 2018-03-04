\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header {
  title="Вечер"
  subtitle = "woodwinds"
  composer="Перьи Отметины"
  subsubtitle = \date
}

\include "woodwinds.ly"

% Bass = \relative c{
%   r2. | r4. e4 d8 | e4. c |
%   r4. c4 g'8 | a4. a, |
%   r4. a8 c e | d4. fis | 
%   b4. fis | 
%   c'4. e, |
%   b4. dis | 
%   e4. e | c4 e g |
%   %a4 s2 | s2. |
%   a4. e | d4. b |
%   e2. |
% }

\markup{\box \bold"E moll"}

\score{
	<<
	  \new ChordNames{\transpose bes c'{
		\Harmony
          }}
          \new Staff{\transpose bes c'{
                \clef treble \time 6/8 \key e \minor
                \set Staff.instrumentName = "fl./cl."
                <<{\Flute}\\{\Clarinet}>> \bar "||"
%{                \break
                <<{\FlII}\\{\ClII}>> \bar "||"%}
          }}

	>>
        
	\layout {}

%     \midi {
%         \context {
%             \Score
%             tempoWholesPerMinute = #(ly:make-moment 72 4)
%         }
%     }
}

<<
    \new Staff{\transpose bes c'{
          \clef treble \time 6/8 \key e \minor
          \set Staff.instrumentName = "Flute"
          \FlII \bar "||"
    }}
    \new Staff{\transpose bes c'{
          \clef treble \time 6/8 \key e \minor
          \set Staff.instrumentName = "Clarinet B"
          \ClII \bar "||"
    }}
>>

