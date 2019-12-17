\version "2.18.2"

\header{
  title="Тысяча путей"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Intro = {
  \tag #'Harmony {\chordmode{\transpose bes c{
     a1:m | g | a:m | g |
     a:m | g | f | g |
  }}}
  \tag #'Clarinet {
    \mark "Intro"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 |
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\chordmode{\transpose bes c{
    a1:m | g | a:m | g |
    f | g | e:m | c |
    a1:m | g | a:m | g |
    f | g | e:m | c |
  }}}
  \tag #'Clarinet {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 |
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {\chordmode{\transpose bes c{
    b1:7 | e | a:m | f |
    c | e | f | e |
    d:m | e | a:m | f |
    c | e |
  }}}
  \tag #'Clarinet {
    \mark "Chorus"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    %s1 | s1 | s1 | s1 \longBar
    \relative c''{b1 | cis1 | d1 | g,1 |} \longBar
    s1 | s1 | 
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\chordmode{\transpose bes c{
    f1 | g | c | f |
    d1:m | g | c | f |
    d1:m | g | c | f |
    d1:m | g | f | g |
  }}}
  \tag #'Clarinet {
    \mark "Solo"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 |
    \bar "||"
  }
}



Music = {
  \Intro \break
  \Verse \break
  \Chorus \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 2/2 
    \clef treble
    \key b \minor
    \keepWithTag #'Clarinet \Music
  }
>>
