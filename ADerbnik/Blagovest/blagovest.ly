\version "2.16.2"

\header {
  title="Благовест"
  composer = "А.Дербник"
}

HSoloI = \chordmode {\transpose bes c'{
      % Am Em | Am Em | F C | Dm E7 |
      a2:m e:m | a:m e:m | f c | d:m e:7 |
}}

SoloI = {
  \mark "Intro"
  \relative c''{
    % d8 fis,8~fis16 e fis a fis'8 e d cis | 
    d8 fis,8~fis16 e fis8  cis8 a' fis' cis | 
    d4 d16 cis d b fis4. e8 | }
  \relative c'{d8 b g' d a'4 g16 fis d8 | b8 g'4 fis8 cis2 | }
}

<<
  \new ChordNames{
    \HSoloI
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Clarinet B"
    \key b \minor
    \time 4/4
    \SoloI
  }
>>