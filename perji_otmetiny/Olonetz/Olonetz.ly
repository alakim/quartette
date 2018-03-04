\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header{
  title="Олонецкая быль"
  composer="Перьи Отметины"
  subsubtitle = \date
}


ClarinetI = {
  \compressFullBarRests
   R1*9|
   r1^"зимнее" | 
   \relative c'{c1~ | c2. r8 d16^"нам учителем" c | d4. c8 c2 | b8 a4 c16 b a2 | r1 | r1 | d4^"нам наградой" d8 e d4 d8 c | d4. b8 c2 | r1 | r1 |}
   \relative c'{d8.^"нам свидетелем" b16 a8 g a b d4~ | d2 r4 g16^"камень Олонец" e d8 | e4 r2 g16 e d8 | e2. r4 | d8 e2. r8 | r1 | r1 | r1 | r1 |}
   \relative c''{r2. r8 g | g4.^"Ладога" e4.~e4 | r1 | r1 |}
   \relative c'{r2. r8 d16^"ни к чему тебе" c | d4. c8 c2 | b8 a4 c16 d c2~ |c1 | r1 | }
   \relative c'{d4.^"там, где снег" e8 d2 | e8 d c b c2~ |c1 |}
}

ClarinetRiff = \relative c{
  \bar "|:" e4 b'8 a4 b8 b [a16 g] | e8 b'8 a4 b8 e,4. \bar ":|"
}

ClarinetSolo = \relative c''{g1^"соло наверху в Gdur" | b1 | d1 | g1 | }

<<
  \new Staff{\transpose bes c'{
    \clef treble \time 4/4 \key c \major
    \set Staff.instrumentName = "Clarinet B"
    \ClarinetI
    \break
    \ClarinetRiff
    \ClarinetSolo
  }}
>>


% \score {
%   {
%     \repeat unfold 4 { s1 \break }
%   }
%   \layout {
%     indent = 0\in
%     \context {
%       \Staff
%       \remove "Time_signature_engraver"
%       \remove "Clef_engraver"
%       \remove "Bar_engraver"
%     }
%     \context {
%       \Score
%       \remove "Bar_number_engraver"
%     }
%   }
% }
% 
