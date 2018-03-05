\version "2.12.3"
#(set-global-staff-size 22)


\header{
  title="Осенние листья"
  composer="Ж.Косма" % по изданию Манилов В., Молотков В. Техника джазового аккомпанемента на гитаре
}

Harmony = \chordmode{
  \partial 4{bes4:13}|
  a2:m7 d:9 | g:maj c:maj | fis:m7.5- b:7 | e2:m7+ e4:m7 bes4:13 |
  a2:m7 d:9 | g:maj c:maj | fis:m7.5- b:7 | e:m6 s | b:7 dis:dim | e:m7+ 
  e:m | a:m7 d:7.5-.9- | g:maj9 c:13 | fis:m7.5- b:7 | e4:m7 es:m7 d:m7 g:13 |
  c2:maj fis4:m7.5- b:7 | 
  e2:m7+ e4:m7 bes:13|
  e1:m6
  
}

ThemeI = \relative c''{
  c2. \times 2/3{d,8 e fis} | b4 b4. r8 \times 2/3{c,8 d e} | a2. \times 2/3 {b,8 cis dis} | g2. \times 2/3 {e8 fis g} |
  c2. \times 2/3{d,8 e fis} | b4 b4. r8 \times 2/3{c, d e} | a2~ a8 fis a g | e2~e8 r8 dis8 e | fis8 b, fis'2 e8 fis | g4 g~
  g8 g fis g| a2~ a8 d, d'8. c16 | b2. ais8 b | c8 c a a fis4 c' | b4 b2 
  e,4 | a4 a8 g fis4 g8. b,16 
}


<<
  \new ChordNames{\transpose bes c'{
      \Harmony
  }}
  \new Staff{\transpose bes c'{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 4/4 \key g \major
    \partial 4 {\times 2/3 {e'8 fis' g'} |}
      \repeat volta 2 {\ThemeI}
      \alternative {
        {\relative c'{e2~e8 e fis g|}}
        {\relative c'{e2~e8 r8 \bar "|."}}
      }
  }}
>>