\version "2.16.2"

\header {
  title="Дядьки"
  composer = "гр. Перьи Отметины"
  subtitle = "партия флюгельгорна"
}

HSolo = \chordmode {\transpose bes c{es1 c:m f g:m}}

FghI = {
  \mark Solo
  \relative c''{
    e8 d c b a4 g | f4. c'8~c2 | d4 c b a8 b | c4 b a2 \bar ":|."
  }
}

FghIa = {
  \relative c''{
    e8 d c b a4 g | f2 c'2 | d4 c b2~ | b2. a8 b | c8 b a4 d2~ | d2. b8 a | b2. a8 g | a1 \bar "||"
  }
}

HRefrain = \chordmode {\transpose bes c {
  es2 bes | f2 g:m |
  es2 bes | f2 g:m |
  
  es2 bes | bes2 f |  
  es2 bes | bes2 f |  
  es2 bes | bes2 f |
  
  c2:m bes | f2 g:m |  
  c2:m bes | f2 g:m |  
  c2:m bes | f2 es |
  r1 |
  
  c2:m es |   
  c2:m es |   
  c2:m es |   
  c2:m es | 
}}

FghII = {
  \mark Refrain
  \relative c''{
    a4.^"дайте дядькам" g8~g2 | d4. e8~e2 | % раньше было e4. g8~g2 | 
    a4. g8~g2 | d4. e8~e2 | % раньше было e4. g8~g2 |
    
    a4. g8~g2 | e4^"воздухом" c'8 b4. a8 g | 
    a4. g8~g2 | e4 c'8 b4. a8 g | 
    a4. g8~g2 | e4 c'8 b4. a8 g | 
    a4.^"отключить" g8~g2 | b4. c8~c2 | 
    a4. g8~g2 | b4. c8~c2 | 
    a4. g8~g2 | b4. c8~c2^"без вины" | 
    r1 |
    a4^"чаю" c b^"похлебать" g | a4 c b g | a4 c b g | a4 c b g \bar "||"
  }
}


<<
  \new ChordNames{
    \HSolo 
    \HSolo \HSolo 
    \HRefrain
  }
  \new Staff{
    \set Staff.instrumentName = "Flugelhorn"
    \clef treble
    \key a \minor
    \time 2/2
    \FghI \break
    \FghIa \break
    
    \FghII
  }
>>