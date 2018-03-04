\version "2.16.2"

\header {
  title="Не спи"
  composer = "гр. Перьи Отметины"
  subtitle = "Партия трубы"
}


TptCoda = {\transpose bes c{
    \key fis \minor
    \time 3/4
    \mark "Coda"
    \relative c''{r2 a8 cis | }
    \repeat volta 2{
      \relative c''{ e4 e8 fis e d | e2 a,8 cis | e4 e a8 fis |
	      e2 d8 cis | a4 a8 e' b gis | a2  d8 cis |
	      a2 b4 | <a cis>2\fermata a4 |
      }
    }
}}

<<
  \new Staff{
    \clef treble
    \set Staff.instrumentName = "Trumpet B"
    \TptCoda
  }
>>
