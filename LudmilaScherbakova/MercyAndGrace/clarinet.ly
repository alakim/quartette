\version "2.14.2"

\header{
  title="Милость и благодать"
  composer = "Л.Щербакова"
  subtitle = "clarinet by alakim"
}

Hrm = \chordmode {
  c2 g | d:m a4.:m g8 |
}

end = {\bar "||" }

ClI = {
  \relative c'{fis8 d4. e8 cis4. | b8 g4. b8 a cis e |} \end
  \relative c'{r1 | r2 fis16 e d e  d cis b a | fis4 r2. | r1 |} \end
  \relative c'{fis16 e d8 a2. | e'4. d16 a b2 |}\end
}
%{
\markup{"Попевки всякие"}
<<
  \new ChordNames{\transpose bes c'{
    \repeat unfold 4 \Hrm
  }}
  
  \new Staff{
    \clef treble \time 4/4 \key d \major
    \set Staff.instrumentName = "Clarinet B"
    \ClI
  }
>>
%}
% *********************************************

VII = {
    \relative c'{r8^"Все цветы" b16 b b8 d16 fis e8 e e16 d8 e16~ | e8 e16 e e fis g8 b8 b b16 a8 fis16~ | fis8}
    \relative c'{ d16^"кверху" d d e fis8  r8 a16 a a16 b8 a16 | e4. d8 b2 |}
}
CVII = {
    \relative c'{d4.^"Все цветы" cis16 b cis4. a8 | g'4. fis16 e fis4. e8 |}
    \relative c'{d8^"кверху" fis4 d8 cis4. a8 | g4. b8 fis4~fis 16 b a d |}
}

RII = {
   \relative c'{r8 d16^"а душе" d d8 fis16 a a8 a b a16 b~| b8 b16 b b8 d16 cis b8 fis g16 fis e8 | d8  }
   \relative c'{d16^"а душе" d  a'16 a16 g8  fis8 e8 fis8 e8~ | e8 fis8 e d b2 | }
}
CRII = {\relative c'{
    fis4.^"а душе" d8 cis4. e8 | g4. fis16 e d4. cis8 | 
    fis4^"а душе" d cis a | g'4. fis16 e fis2 |
}}

%{
\markup {"Verse 2"}
<<
  \new ChordNames{\transpose bes c'{\repeat unfold 4 \Hrm}}
  \new Staff{
    \clef treble \time 4/4 \key d \major
    \set Staff.instrumentName = "Voice"
    \VII \repeat volta 2{\RII}
  }
  \new Staff{
    \clef treble \time 4/4 \key d \major
    \set Staff.instrumentName = "Clarinet B"
    \CVII \CRII
  }
>>
%}

% Recorder in F
FII = {
   \relative c''{d4. e16 d e8. d16~d8 e16 d | e4. c8 b4. a8 |g4. e'16 d e8. d16~d8 e16 d |}
   \relative c''{e2~e8 fis8 g16 fis e d | e8 d4 fis8 a4. g16 fis |}
   \relative c''{g'16 a g8 g e16 d e4. d8 | b4 d8 b16 d e8 d4 e16 d | e2. c4 | b8 e2..|}
}
CFII = {
   \relative c'{fis4.^"Flute solo" a,8 e'4 cis4 | g'4. fis16 e d2 | fis2 e4 cis8 e | g8 fis e b d2 |}
   \relative c'{fis4. e8 cis4 e | g4. fis16 e d2~ | d4. fis8  cis2 | g'2. e4 | fis1 | }
}
%{
\markup{Flute solo 2}
<<
  \new ChordNames{\transpose bes c'{\repeat unfold 4 \Hrm}}
  \new Staff{\transpose d a,{
    \clef treble \time 4/4 \key g \major
    \set Staff.instrumentName = "Flute"
    \FII
  }}
  \new Staff{
    \clef treble \time 4/4 \key d \major
    \set Staff.instrumentName = "Clarinet B"
    \CFII
  }
>>
%}
% {
\markup {"Clarinet only"}
<<
  \new Staff{
    \clef treble \time 4/4 \key d \major
    \set Staff.instrumentName = "Clarinet B"
    \mark "Verse 2"
    \CVII \repeat volta 2{\CRII}
    \CFII
  }
>>
% }


\markup{\column{
  \line{\bold{Общая форма:} кларнет вступает на втором куплете, }
  \line{играет потом подклад на двух следующих припевах, и на второе соло флейты.}
  \line{Первый и третий куплеты идут без дудок. Фолк!}
}}
