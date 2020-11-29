\version "2.18.2"

\header{
  title="Тук-тук"
  composer="А.Боголапов"
  subtitle="Партия трубы"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{ c1 | g | a:m | g |}
HRefrain= \chordmode{f1 | c | g | a:m |}

Intro = {
  \tag #'Harmony {
      \HVerse
      \HVerse
      \HVerse
      \HVerse
  }
  \tag #'Horn {
    \mark "Intro"
    \key c \major
    % 20201123 / Intro.mp3 : 04:01
    \relative c'{e2.~e8 d | g2. a8 e | d4. e8~e2 | r2. e8 g \longBar }
    \relative c''{a2. g8 e8~ | e4. d8~d2 | c2. r8 d | e8 g a g a g r4 \longBar}
    \relative c''{c4. b a8 g | a8 e2. d8 | e1 | r2 a4 g \longBar }
    \relative c''{a4. g8~g2 | r1 | b8 a4 e d4. | e4. d8~d2 \bar "||"}
  }
}

Knock = {
  \tag #'Harmony {
    \HRefrain
  }
  \tag #'Horn {
    \mark "Тук-тук"
    \relative c''{a4. a f4 | g4. g e4 | f4. f d4 | e8 d e g4 a4. | }
  }
}


Music = {
  \Intro \break
  \Knock \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \transpose bes c {\Music}
  }
  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \keepWithTag #'Horn \transpose bes c' {\Music}
  }
>>

\markup{
  "Форма:  Intro V R  solo V R  solo V R solo отбивка \"тук-тук 4 раза\" solo"
}
