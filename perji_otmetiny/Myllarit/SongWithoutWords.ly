\version "2.12.2"

\header {
  title="Песня без слов"
  composer = "Myllarit"
}

lineBreak = {\break}

Flute = {
  \relative c''{r4 a' | a8 f d a' | g e c e | f e f d |<f a,> d f g | a f d a' | g e c e |} \lineBreak
  \relative c''{d4 a'4\( | a8\) r f g | a f d a' | g e c e | f g f d | <f a,> d f g | a f d a' | g e c e |}\lineBreak
  \relative c''{d2 | r4 a'8 b | c a f c' | b g d g | a b a f | c f a b | c a f c'| b g d g |} \lineBreak
  \relative c'''{a4 d\( | d8 \) r8 a b | c a f c'| b g d g | a b a f | c f a b | c a f c'| b g d g |}\lineBreak
  \relative c''{f2 | r4 d16 e f8 | d8 e f g | a d e f | e d c bes | a4 d8 a | g4 d'8 g, |}\lineBreak
  \relative c''{f4 d'8 f, | e f e c | d f a, c | d e f g | a c d e | f g a bes | a4 d,8 a |}\lineBreak
  \relative c'''{g4 d'8 g, | f4 d'8 f, | e f e c | r2 | e8 f e c \bar "|."}
}

Clarinet = {
  \relative c''{r4 f | f8 d bes4 | e8 c a c | d e d a | f a d e | f d a f' | e c a4 |}
  \relative c''{d4 f4\( | f4\) d8 e | f d bes f' | e c a c | d e d a | f a d e | f d a f' | e c a c | }
  \relative c''{a2 | r4 a8 b | c2 | b | <c a> | <c f>4 a8 b | c4. e8 | d4 c8 b |}
  \relative c''{c4 d\( | d\) a8 b c4. e8 | d4. g,8 | f g f c | <a a'> c f g | a4. a8 | g4. g8 |}
  \relative c''{a4 a | r4 a8 g | a g a c | d c c c | bes4 bes8 g | f4 d'8 g, | e4 d'8 g, |}
  \relative c'{f4 d'8 f, | g a g e | f4 a8 c | d,8 e f g | a c d e | d2 | c4 d8 a |}
  \relative c'{e4 d'8 g,| a4 d8 f, | g4. r8 | e8 f e c |}
}


<<
  \new Staff{\transpose bes c'{
    \clef treble \time 2/4 \key f \major
    <<{\Flute}\\{\Clarinet}>>
  }}
>>