\version "2.16.2"

\header {
  title="Сон о белых горах"
  composer = "гр. Перьи Отметины"
  subtitle = "соло кларнета"
}

HSolo = \chordmode {
  \partial 4{r4}
  e1 cis1:m a b 
  e1 cis1:m gis b
  e1 cis:m a b
  cis:m b cis:m cis:m
}

ClSolo = {
  \key e \major
  \partial 4 {\relative c'{cis8 dis |}}
  \repeat volta 2{
    \relative c'{
      e2. fis8 gis | fis4. e cis8 dis |
      e2. fis8 gis | fis2. cis8 dis | \break
      e2. fis8 gis | fis4. e gis4 |
      b1~| b2. cis,8 dis | \break
    }
    \relative c'{
      e2. fis8 gis | fis4. e cis8 dis |
      e2. fis8 gis | fis2. 
      \improvisationOn
      b4 | \break
      b1| b1 |
      b1| b1 |
      \improvisationOff
    }
  }
}

<<
  \new ChordNames{
    \HSolo
  }
  \new Staff{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble
    \time 4/4
    \ClSolo
  }
>>