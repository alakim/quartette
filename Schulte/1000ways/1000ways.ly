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
     s1
  }}}
  \tag #'Clarinet {
    \mark "Intro"
    \relative c'{ \bar ".|:" r1 | r2 cis8 b a fis | a8 b r2. | r2 cis8 b a fis } \longBar 
    \relative c'{ a8 b r2. | r4 b4 a8 fis4 <b d>8~ | <b d>2.  e4  | e4 cis b8 a fis b8~ 
                  \longBar \bar ":|." b4 r2. |}
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
    \relative c'{ r1 | r4 cis4 b8 a fis b~ | b4 r2. | r4 cis4 b8 a fis b~  } \longBar 
    \relative c'{ b1 | a1 | r4 a b8 a4 d8~ | d4 b a8 fis4. } \longBar \break
    \relative c'{ r1 | r2 cis8 b a fis | a8 b r2. | r2 cis8 b a fis } \longBar
    \relative c'{ a8 b~b2. | cis1 | fis4 e cis8 e4. | fis4 e d8 cis4. }
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
    e'1 | cis'1 | b1 | d'1 \longBar
    a4 d'2 fis4 | ais1 | b1 | s1 \longBar
    %s1 | s1 | s1 | s1 \longBar
    \relative c'{b1 | cis1 | d1 | g1 |} \longBar
    fis'1 | cis'1 | 
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
    d'1 | cis'1 | a1 | d'1 \longBar
    g'1 | a'1~ | a'1 | g'1 \longBar
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
