\version "2.16.4"

\header {
  title = "Фея березовых колодцев"
  composer = "гр. Перьи Отметины"
  subtitle = "Introduction"
}

HI = \chordmode {a1 | d1 | a1 | e1 |}
Oboe = {
  \mark Intro
  \relative c''{cis4 a8 a b a a cis | d4 cis8 e d cis16 b a8 fis | }
  \relative c'{ e4. e8 a4 a8 fis  | b8 gis gis fis e2 |}
  \relative c''{a2. e4 | d'4 cis8 a a gis a fis | }
  % \relative c'{ e8 a a gis e2~ | e2 r2 \bar "||"}
  \relative c'{e4 cis'8 d cis a e4 | b'1 \bar "||"}
}
MainRiff = \relative c''{
  \mark "Main Riff"
  r4 cis8 d cis a e4 | a8 d2. r8 |
  r4 cis8 d cis a e4 | gis8 b2. r8 |
}

<<
  \new ChordNames{
    \HI \HI 
    % \HI 
  }
  \new Staff{
    \clef treble
    \set Staff.instrumentName = Oboe
    \key a \major
    \time 4/4
    \Oboe
    % \break
    % \MainRiff
  }
>>
