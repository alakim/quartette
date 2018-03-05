\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))
 
\header {
  title = "Gaudete"
  composer="medieval hymn"
  subtitle = \date
}

VS = \relative c''{
  \time 2/4
  a4 a | g a8 b |
  \time 3/4
  c4 c8 b4 a8 | 
  \time 2/4
  g4 g | g a | b4. a8 |
  \time 4/4 
  g4 a8 b4 a8 g4 |
  \time 2/4
  a4 r |
}
VA = \relative c''{
  a4 c | b4 c8 e |
  <g e>4 e8 d4 c8 |
  b4 b | b c | d4. c8 |
  b4 d8 g4 d8 e4 |
  e4 r |
}
VT = \relative c''{
  a4 a | e a8 g | c4 a8 g4 a8 | e4 e | e a | g4. fis8 |
  e4 fis8 g4 fis8 e4 |
  a4 r |
}

VSsolo = \relative c''{
  \time 4/4
  a8 a g a c b a4 | a8 f e f d4 d |
  d8 d f d f g a4 | c8 a b c a4 a8 r \bar "|."
}




<<
  \new Staff{\transpose bes c'{
    \clef treble \key a \minor
    \VS \break
    \VSsolo
  }}
  \new Staff{\transpose bes c'{
    \clef treble \key a \minor
    <<{\VA}\\{\VT}>> 
    r1 |r1 |r1 |r1 |
  }}

>>

\markup{
  \column{
    \line{Gaudete, gaudete! Christus est natus}
    \line{Ex Maria virgine, gaudete!}
    \line{" "}
    \line{Tempus adest gratiæ}
    \line{Hoc quod optabamus,}
    \line{Carmina lætitiæ}
    \line{Devote reddamus.}
    \line{" "}
    \line{Deus homo factus est}
    \line{Natura mirante,}
    \line{Mundus renovatus est}
    \line{A Christo regnante.}
    \line{" "}
    \line{Ezechielis porta}
    \line{Clausa pertransitur,}
    \line{Unde lux est orta}
    \line{Salus invenitur.}
    \line{" "}
    \line{Ergo nostra contio}
    \line{Psallat iam in lustro;}
    \line{Benedicat Domino:}
    \line{Salus Regi nostro.}
  }
  \column{\line{"    "}}
  \column{
    \line{Rejoice, rejoice! Christ is born}
    \line{(Out) Of the Virgin Mary — rejoice!}
    \line{" "}
    \line{The time of grace has come—}
    \line{This that we have desired,}
    \line{Verses of joy}
    \line{Let us devoutly return.}
    \line{" "}
    \line{God has become man,}
    \line{To the wonderment of Nature,}
    \line{The world has been renewed}
    \line{By the reigning Christ.}
    \line{" "}
    \line{The closed gate of Ezekiel}
    \line{Is passed through,}
    \line{Whence the light is born,}
    \line{Salvation is found.}
    \line{" "}
    \line{Therefore let our gathering}
    \line{Now sing in brightness}
    \line{Let it give praise to the Lord:}
    \line{Greeting to our King.}
  }
}

