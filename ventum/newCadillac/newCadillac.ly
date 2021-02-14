\version "2.18.2"

\header{
  title="Новый кадиллак"
  composer="гр. Ventum"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})




PI = {
  \tag #'Harmony {\chordmode{
    e1 e1 a1 a1  
  }}
  \tag #'Trumpet {
    \mark "A x4"
    <e' gis'>1~ | <e' gis'>2. <gis' b'>4 | <a' cis''>1~ | <a' cis''>2. <fis' a'>4 \bar ":|."
  }
}

Bridge = {
  \tag #'Harmony {\chordmode{
    fis1:m fis:m b:m b:m  
  }}
  \tag #'Trumpet {
    \mark "Bridge"
    <fis' a'>1~ | <fis' a'>1 | <b' d''>1 | dis''8 e''4 dis''8~dis''2  \bar "||"
  }
}

PII = {
  \tag #'Harmony {\chordmode{
    e1 e1 s1 s1 
  }}
  \tag #'Trumpet {
    \mark "B x4"
    <e' gis'>1~ | <e' gis'>1 | \relative e' {<e b>8 <fis cis>4 <e b> <fis cis>4. | <e b'>8 <fis cis'>4 <b fis'>8~<b fis'>2 |} \bar ":|."
  }
}

PIII = {
  \tag #'Harmony {\chordmode{
    s1 s1 s1 s1  
    s1 s1 s1 s1  
  }}
  \tag #'Trumpet {
    \mark "C "
    r1^"флажолеты на гитаре" | r1 | r1 | r1 | 
    r1 | r1 | r1 | r1 \bar "||"
  }
}
  
PIIb = {
  \tag #'Harmony {\chordmode{
    e1 e1 s1 s1 
  }}
  \tag #'Trumpet {
    \mark "B2 x4"
    <e' gis'>1~ | <e' gis'>1 | \improvisationOn b'1^"импровизация" | b'1 | \improvisationOff \bar ":|."
  }
}


Music = {
  \PI 
  \Bridge \break
  \PII 
  \PIII \break
  \PIIb
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    
    \key a \major
    \keepWithTag #'Trumpet \Music

  }
>>



