\version "2.18.2"

\header{
  title="Мельница"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerseA = \chordmode{
  \transpose bes c { 
    fis2:m b:m | fis:m b:m | a1 | b2:m fis:m |
  }
}
HVerseB = \chordmode{
  \transpose bes c { 
    d1 | d2 a | b1:m | b2:m fis:m |
  }
}

HChorusA = \chordmode{
  \transpose bes c { 
    d1 | a | b:m | fis:m |
  }
}
HChorusB = \chordmode{
  \transpose bes c { 
    b1:m | fis:m | a2 b:m | fis1:m |
  }
}

Verse = {
  \tag #'Harmony {
    \HVerseA \HVerseA 
    \HVerseB \HVerseA 
  }
  \tag #'Horn {
    \mark "Verse"
    r1 |r1 |r1 |r1 \longBar
    r1 |r1 |r1 |r1 \longBar
    r1 |r1 |r1 |r1 \longBar
    r1 |r1 |r1 |r1 |
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
    \HChorusA 
    \HChorusA 
    \HChorusA 
    \HChorusB
  }
  \tag #'Horn {
    \mark "Chorus"
    \relative c''{b2. ais8 b | cis4. b16 ais b2 | r1 | r4. fis8^. gis^. ais^. b^. ais^. |} \longBar
 
    \relative c''{b4. ais16 b cis4. b16 cis | dis8 cis4 b8 ais b4. | b8 ais4 gis8 ais gis4 fis8 | gis2 r | } \longBar
    s1 |s1 |s1 |s1 \longBar
    s1 |s1 |s1 |s1 |
    \bar "||"
  }
}

Solo  = {
  \tag #'Harmony {
    \HChorusA 
    \HChorusA 
    \HChorusA 
    \HChorusB
  }
  \tag #'Horn {
    \mark "Solo"
    s1 |s1 |s1 |s1 \longBar
    s1 |s1 |s1 |s1 \longBar
    s1 |s1 |s1 |s1 \longBar
    s1 |s1 |s1 |s1 |
    \bar "||"
  }
}


Music = {
  \Verse \break
  \Chorus \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key gis \minor
    \keepWithTag #'Horn \Music
  }
>>

