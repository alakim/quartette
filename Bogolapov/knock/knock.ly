\version "2.18.2"

\header{
  title="Тук-тук"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  \transpose bes c { c1 | g | a:m | g |}
}

HRefrain= \chordmode{
  \transpose bes c { f1 | c | g | a:m |}
}


Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Horn {
    \mark "Verse"
    s1 | s1 | s1 | s1 \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {\HRefrain}
  \tag #'Horn {
    \mark "Refrain"
    s1 | s1 | s1 | s1 \bar "||"
  }
}

Solo = {
  \tag #'Harmony {
      \HVerse
      \HVerse
  }
  \tag #'Horn {
    \mark "Solo"
    % \relative c'{ r4. d8 fis8 a4 b8 | cis4. e,4. a4 | b4. e,8 fis g a b | cis2 fis4 e \longBar }
    \relative c'{ r4. d8 fis8 a4 b8 | cis4. e,4. a4 | b4 fis8 g a b4 d8 | cis4 r fis4 e \longBar }
    \relative c' {s1 | s1 | s1 | s1 \bar "||" }
  }
}


Music = {
  \Verse \break
  \Refrain \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key d \major
    \keepWithTag #'Horn \Music
  }
>>
