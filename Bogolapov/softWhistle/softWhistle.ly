\version "2.18.2"

\header{
  title="Тихий свист"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HSolo = {\chordmode{\transpose bes c{
  e1:m7 | b:7 | a:m | c2 b:m7 |    
}}}

HVerse = {\chordmode{\transpose bes c{
  c1:maj | b:7 | c | b |
  g1 | c | c:maj | b:7 |
}}}

Solo = {
  \tag #'Harmony {\HSolo \HSolo \HSolo \HSolo  }
  \tag #'Horn {
    \mark "Solo"
    \relative c'' {
      cis2. b8 a | gis1 | a1 | b2. a8 fis8 ~ \longBar
      fis1~ | fis2. f8 gis | b4. cis8~cis2~ | cis1 \longBar 
    }
    \relative c' {
      fis4. a4. b8 fis~ | fis1 | fis2 r8 fis f gis | b4. cis2 b16 a \longBar 
      fis1 | s1 | s1 | s1  
      \bar "||"
    }
  }
}

Verse = {
  \tag #'Harmony {\HVerse \HVerse }
  \tag #'Horn {
    \mark "Verse"
    \relative c'' {
      r1 | r1 | r1 | r2. a8 b \longBar
      cis1~ | cis2. b8 a| fis2. e4 | cis1 \longBar
      r1 | r1 | r1 | s1 \longBar
      s1 | s1 | s1 | 
      \relative c'{s2 \tuplet 3/2 {fis4 a b} }
      \bar "||"
    }
  }
}




Music = {
  \Solo \break
  \Verse \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \key fis \minor
    \keepWithTag #'Horn \Music
  }
>>


