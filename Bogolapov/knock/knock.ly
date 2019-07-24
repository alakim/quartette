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
      \HVerse
      \HVerse
  }
  \tag #'Horn {
    \mark "Solo"
    % \relative c'{ r4. d8 fis8 a4 b8 | cis4. e,4. a4 | b4. e,8 fis g a b | cis2 fis4 e \longBar }
    
    % \relative c'{ r4. d8 fis8 a4 b8 | cis4. e,4. a4 | b4 fis8 g a b4 d8 | cis4 r fis4 e \longBar }
    \relative c'{ r4. d8 fis8 a4 b8 | b8 cis4. r2 | r4. d8 cis8 a4 fis8 | a2 r4 fis8 a | \longBar}
    \relative c'' {cis8 d cis a4 fis4 r8 | b8 a4 r8 r2  | a8 fis r d' cis d4 e8  | cis2. d8 e \longBar }
    \relative c''{ fis4. e4. cis8 d  | e4. cis4. r4 | r2 d8 b4 a8~ | a4 fis8 a b a4 b8 \longBar}
    \relative c''{ b8 cis4 d8 d8 e4 fis8 | fis8 e cis a~a  e'8 cis a | d2 cis2 | b2 cis2 \bar "||"}
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

\markup{
  "Форма:  Intro V R  solo V R  solo V R solo отбивка \"тук-тук 4 раза\" solo"
}
