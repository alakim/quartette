\version "2.18.2"

\header{
  title="Бархат на рукавах"
  composer="А.Боголапов"
  subtitle = "партия скрипки"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

% HRiff = \chordmode { b1:m a e g} % ????

%{
HVerse = \chordmode{
  b1:m a b:m a  % e
  b2:m a b1:m  b2:m a b1:m
}

HChorus = \chordmode{
  g1 b:m a e
  e1 b1:m g1 a1
  b1:m 
}
%}

HRiff = \chordmode {b2:m a2 e2 g2}
HIntro = {
  \chordmode {\partial 8.{s8.}}
  \HRiff \HRiff 
  \HRiff \HRiff 
}

Intro = {
  \tag #'Harmony {\HIntro}
  \tag #'Violin {
    \mark "Intro"
      \partial 8. {\relative c''{ b16 b b |}}
      \relative c''{d4. b b4 | d8 b4 d4. b4 | b'4. e, d4 | e8 d4 b4. b4 | }
      \relative c''{b'4. e, d4 | e8 d4 b4. b4 |d4. b a4 | b1 |}
       
    \bar "||"
  }
}

IntroVar = {
  \tag #'Harmony {\HIntro}
  \tag #'Violin {
    \mark "Intro var"
      \partial 8. {\relative c''{ b16 a b |}}
      \relative c''{d4. b a4 | e'8 b4 d4. b4 | b'4. e, d4 | e8 d4 d4. b4 | }
      \relative c''{b'4. e, d4 | e8 d4 b4. a4 |d4. b a4 | b1 |}
       
    \bar "||"
  }
}

IntroTrumpet = {
  \tag #'Harmony {\HIntro}
  \tag #'Trumpet {
    \mark "Intro"
      \partial 8. {\relative c''{ b16 a fis |}}
      \relative c''{d4. b a4 | b8 a4 g4. e4 | d4. e8~e2  | e8 d4 g8~g2 | }
      \relative c''{d4. b a4 | e8 d4 g4. a4 |d4. b a4 | b1 |}
       
    \bar "||"
  }
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \Intro
  }

  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Violin \Intro
  }
>>

<<
  \new ChordNames{
      \keepWithTag #'Harmony \IntroVar
  }

  \new Staff{
    \set Staff.instrumentName="Violin"
    \time 4/4
    \clef treble
    \key b \minor
    \keepWithTag #'Violin \IntroVar
  }
>>

<<
  \new ChordNames{
      \keepWithTag #'Harmony \transpose bes c{ \IntroTrumpet }
  }

  \new Staff{
    \set Staff.instrumentName="Trumpet"
    \time 4/4
    \clef treble
    \transpose bes c'{
      \key b \minor
      \keepWithTag #'Trumpet \IntroTrumpet
    }
  }
>>
