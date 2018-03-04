\version "2.12.2"

\header {
  title="Вечер"
  composer="Перьи Отметины"
}

Harmony = \chordmode{
  e2.:m | r | c | r | a:m | r |
  d | b:7 | c | b:7 | 
  e:m | c | a:m7 | b:m | e:m |
}

VoiceI = \relative c''{
  r2. | r4. g8 fis g | g4. c, |
  r4. g'8 fis g | g4. c, |
  r4. g'8 fis e | d4. d | 
  c'4. b | e,4. g | fis4. b,4. | b'4. b | g2. |
  g4 c, e8 g | fis4 d b8 fis' | e2. | 
}
VoiceII = \relative c'{
    r2. | r4. e8 d e | e4. g, |
    r4. e'8 d e | e4. a, |
    r4. e'8 d c | a4. a |
	fis'4. d | c4. e | d4. fis, | 
	g'4. e~ | e2 c4~ | c4 g c | d4 b fis | b2. | 
}

VoiceIII = \relative c'{
  r2. | r4. b | c2. | 
  r4. c | c4. a | 
  r4. a | fis4. a | 
  b4. fis | g4. g | 
  fis2. | g4. b | 
  c2. | c2. | b2. | b2. |
}

Bass = \relative c{
  r2. | r4. e | c4. e | 
  r4. g | a4. e |
  r4. c | d4. a |
  d4. b | c4. g | b4. d4. | e4. g | c2 g4 |
  a4 e c | b4 fis' d | e2. |
}

\score{
	<<
%           \new Staff{\transpose bes c'{
%               \set Staff.instrumentName="in B"
%                 \clef treble \time 6/8 \key e \minor
%                 <<{\VoiceI}\\{\VoiceII}>>
%             }}
	  \new ChordNames{
		\Harmony
	  }
          \new Staff{
                \clef treble \time 6/8 \key e \minor
                <<{\VoiceI}\\{\VoiceII}>>
          }
	  \new Staff{
		\clef bass \time 6/8 \key e \minor
		<<{\VoiceIII}\\{\Bass}>>
	  }
	>>
	\layout {}

    \midi {
        \context {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 72 4)
        }
    }
}
