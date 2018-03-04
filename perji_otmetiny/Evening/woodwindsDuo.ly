\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header {
  title="Вечер"
  subtitle = "woodwinds"
  composer="Перьи Отметины"
  subsubtitle = \date
}

\include "woodwinds.ly"


\score{
	<<
	  \new ChordNames{\transpose c' c'{                
                \set chordChanges = ##t
		\Harmony
          }}
          \new Staff{\transpose c' c'{
                \clef treble \time 6/8 \key e \minor
                \set Staff.instrumentName = "Flute"
                \Flute \bar "||"
          }}
          \new Staff{\transpose bes c'{
                \clef treble \time 6/8 \key e \minor
                \set Staff.instrumentName = "Clarinet B"
                \Clarinet \bar "||"
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
    \new Staff{\transpose c' c'{
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

