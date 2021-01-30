\version "2.18.2"

\header{
  title="Музыка звезд"
  composer="В. Рыжов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})



Chorus = {
  \tag #'Harmony {\chordmode{
    g1 d/fis e:m b:7/dis
  }}
  \tag #'Guitar {
    \mark "Chorus"
    <<{r4 b'4 a' b'}\\{g1} >> |
    <<{r4 b'8 g' a'4 b' }\\{fis1}>> |
    <<{r4 b'8 g' a'4 b' }\\{e1}>> |
    <<{r4 b'4 a'8 g'8 b'4 }\\{dis4 d des c}>> |
    
  }
  \tag #'Trumpet {
    \relative c''{ d1 | d1 | e1 | dis1 \bar "||" }
  }
}

Verse = {
  \tag #'Harmony {\chordmode{
    d1:m/f d1:m/f d1:m d1:m
    d1:m/f d1:m/f d1:m d1:m
    bes1:m bes1:m des1:dim des1:dim
  }}
  \tag #'Guitar {
    \mark "Verse"
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
    s1 | s1 | s1 | s1 | 
  }
  \tag #'Trumpet {
    \relative c''{  s1 | s1 | s1 | s1 |  }
    \relative c''{  s1 | s1 | s1 | s1 |  }
    \relative c''{  s1 | s1 | s1 | s1 |  }
  }
}

HI = \chordmode{g1 d/fis e:m b:7/dis}
Solo = {
  \tag #'Harmony { \HI \HI  \HI \HI }
  \tag #'Trumpet {
    \relative c''{ b2. a8 g | e4. d4. fis8 a | b2. d8 e | dis2. a4 | }
    \relative c''{ b2. d8 a~ | a1 | g2. e4 | fis2. g4 | }
    \relative c''{ e4. d b4 | cis4. d a4 | b1 | dis1 | }
    \relative c''{ e4. fis g4 | e4. d b4 | b1 | a1 | }
    \bar "||" 
  }
}


Music = {
  \Chorus \break
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName=\markup{"Guitar"}
    \time 4/4
    \clef treble
    \key g \major
    \keepWithTag #'Guitar \Music
  }
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes c' {
      \key g \major
      \keepWithTag #'Trumpet \Music
    }
  }
>>


<<
  \new ChordNames{\transpose bes c {
    \keepWithTag #'Harmony \Solo
  }}
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \transpose bes c' {
      \key g \major
      \keepWithTag #'Trumpet \Solo
    }
  }
>>


