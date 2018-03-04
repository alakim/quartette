\version "2.16.2"

\header {
  title="Теплынь"
  composer = "гр. Перьи Отметины"
  subtitle = "партия трубы"
}



TptI = {
  \key a \major
  \relative c''{
    r2 b4 a8 gis | a2 gis8 fis e4 | fis1 | d2 e | a1 |
  }
}

FlI = {
  \key g \major
  \relative c''{ 
        r2 d4^"solo A" b8 a |
        g4 a8 b d g fis d | e2 c | g'4. fis4. d4 | g2 r2 \bar "||"
  }
}

<<
  \new Staff{
    \set Staff.instrumentName = "Flute (in B)"
    \clef treble
    \time 4/4 
    \transpose bes c'{
      \FlI
    }
  }
  \new Staff{
    \set Staff.instrumentName = "Trumpet B"
    \clef treble
    \time 4/4
    \TptI
  }
>>
