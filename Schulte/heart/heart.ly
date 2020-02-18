\version "2.18.2"

\header{
  title="Сердце"
  composer="Н.Шульте"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

Verse = {
  \tag #'Harmony {\chordmode{
    a1:m g e:m a:m
    a1:m g e:m a:m
    a1:m g e:m a:m
    a1:m g e:m a:m

    d1:m e a:m f
    d1:m e a:m f
    d1:m e a:m 
  }}
  \tag #'Clarinet {
    \mark "Verse"
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar \break
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar \break

    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 | s1 \longBar
    s1 | s1 | s1 \bar "||"
  }
}


Music = {
  \Verse \break
}

<<
  \new ChordNames{\transpose bes c{
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \transpose bes c{
        \key g \major
        \keepWithTag #'Clarinet \Music
    }
  }
>>

