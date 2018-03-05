\version "2.12.2"

\header{
   title="Preludium"
   subtitle="201207182309"
   composer="alakim"
}

PartI = <<{
    \relative c''{
      \repeat volta 2 {fis8^II d fis d\glissando a' g fis d | e8 b e b d16 (e d) b d8 e | d8 b d b \acciaccatura d8 e8 d cis\mordent b | \break}
      \alternative{
        {cis8 a cis a fis' <cis fis,> e <cis a> |}
        {cis8 a <e' ais,>4 <g cis,> <e cis> |}
      }
      
    }
  }\\{
    \relative c'{
      \set stringNumberOrientations = #'(down)
      <d\4>1 | g | <b,\5> | fis2 a4 a | fis4 <cis'\5> <e\5> <ais,\6> |
    }
}>>

PartII = <<{
    \relative c''{
      \repeat volta 2{fis8 d fis d e fis a fis | e b e, b' cis a cis e |}
      \alternative{
        {d2 cis8 d e d | cis2 e |}
        {d2 <d gis,> | <e cis a>1 \bar "|."}
      }
    }
  }\\{
    \relative c'{<b\6>1 | g2 a | b1 | a | b2 e | a,1 |}
}>>

<<
  \new Staff{
    \clef "treble_8" \key d \major \time 4/4
    \transpose c c,{
      \PartI
      \PartII
    }
  }
>>
