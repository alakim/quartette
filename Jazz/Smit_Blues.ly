\version "2.12.3"
#(set-global-staff-size 22)


\header{
  title="Блюз"
  composer="Дж.Смит" % по изданию Манилов В., Молотков В. Техника джазового аккомпанемента на гитаре
}

Harmony = \chordmode{
  e2:m e:m5+ | e:m6 e:m7 | e:m e:m5+| e:m6 e:7.9+|
  a:m a:m5+ | a:m6 a:m7 | e2:m e:m5+ | e:m6 e:m7 | 
  e4:m d c b:m | a:m g fis:m7.5+ f:maj |
  e1:m | fis2:7.9+ a4:7.5+ e4:m | s1 |
}

Riff = \relative c''{\times 2/3 {b8 a g} e2 \times 2/3 {g4 e8} a4 b8 g~g4 r4 |}
Theme = \relative c''{
  \Riff \Riff
  \times 2/3 {e8 d c} a2 \times 2/3 {c4 a8 } | d4 e8 c~c4 r4 | \Riff
  \times 2/3 {e8 g b} \times 2/3 {a8 fis d} \times 2/3 {c8 e g} \times 2/3 {fis8 d b}| \times 2/3 {a8 c e} \times 2/3 {d8 b g} \times 2/3 {fis8 a c} \times 2/3 {f,8 a c}|
  \times 2/3 {b8 a g} e2 \times 2/3 {g4 e8} |a2 g4. e8~|e1~|e \bar "|."
}

<<
  \new ChordNames{\transpose bes c'{
    \Harmony
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 4/4 \key e \minor
    \Theme
  }}
>>


