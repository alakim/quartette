 
\version "2.12.2"

\header{
  title="Этюд"
  composer="В.Вурм"
}

<<
  \new Staff{
    \clef treble \time 4/4 \key d \major \tempo "Moderato"
    \relative c'{
      d8 a' fis d' a fis' (e d ) | cis, a' e cis' a e' (d cis) | d, a' fis d' a fis' (e d )| 
      a cis e (cis ) a4 r | d,8-. a'-. fis-. d'-. a-. fis' (e d) |
%       \break
      g,8 b g e' b g' (fis e ) | d8 fis, a d cis e, a cis| d8 d a fis d4 r | r1 |
      e'8 a, cis a g' a, cis a | fis'8 a, d a fis' a, d a | cis8 fis, ais fis cis' fis, ais fis |
%       \break
      b8 fis d' cis b4 r | a8 cis, e g a cis e4 | a,8 d, fis a a d fis4 | 
      e8 g, a cis e cis a cis | d8 d a fis d4 r \bar "|."
      
    }
  }
>>