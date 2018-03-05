\version "2.12.2"

\header{
  title = "Попевки"
}

HrmI = \chordmode{d2 | a |}
RiffI = \relative c'{
  \clef treble \time 2/4 \key a \major
  a4 fis8\prall a | a8 fis\prall e4 \bar "||"
}

HrmIa = \chordmode{e2 | a |}
RiffIa = \relative c'{
  b4 gis8\prall b8 | a8 <gis \parenthesize fis>\prall e4 | \bar "||"
}

HrmII = \chordmode{fis2.:m | fis:m |}
RiffII = \relative c'{
  \clef treble \time 3/4 \key fis \minor
  r2 r8 fis8 | b4 a8\prall gis fis4 \bar "||"  
}

HrmIII = \chordmode{cis2:m | cis:m | cis:m |}
RiffIII = \relative c'{
  \clef treble \time 2/4 \key cis \minor
  r4. cis8 | gis'4 fis8\prall gis | e4 r \bar "||"
}

HrmIV = \chordmode{e1:m |e1:m |e1:m |e1:m |e1:m |}
RiffIV = \relative c''{
  \clef treble \time 2/2 \key e \minor
  b4 b8 a g a b4 | a4 a8 g fis g a4 | g4 g8 fis e d e fis | g4 g16 a g8 fis4 fis16 g fis8 | e2 r \bar "||"
}

HrmV = \chordmode{c1:m |c1:m |c1:m |}
RiffV = \relative c''{
  \time 4/4 \key c \minor
  c2 g | r8 g' f es d4  c8\prall bes | c4 c g2 \bar "||"
  
}

HrmVI = \chordmode{c1:m |c1:m |c1:m |}
RiffVI = \relative c''{
  \time 4/4 \key c \minor
  c4 bes8\prall c d4 c8\prall d | es4 g f es8\prall d | es4 g f2 \bar "||"
}

HrmVII = \chordmode{e1:m |e1:m |e1:m |}
RiffVII = \relative c'{
  \time 4/4 \key e \minor
  r2. r8 b8 | g'2~g8 fis8 g8 fis | b2 r2 \bar "||"
}
RiffVIIa = \relative c'{
  \time 4/4 \key e \minor
  r2. r8 b8 | g'2. a8 g8 | b2 r2 \bar "||"
}

<<
  \new ChordNames{
    \set chordChanges = ##t
    \HrmI \HrmIa
    \HrmII
    \HrmIII
    \HrmIV
    \HrmV
    \HrmVI
    \HrmVII \HrmVII
  }
  \new Staff{
    \RiffI \RiffIa
    \RiffII
    \RiffIII
    \RiffIV
    \RiffV
    \RiffVI
    \RiffVII \RiffVIIa
  }
>>


\score {
  {
    \repeat unfold 7 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
