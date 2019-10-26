\version "2.18.2"

\header{
   title="Improvise Jazz Piano With This Upper Structure Trick"
   composer = "Piano With Jonny"
   subsubtitle = "https://www.youtube.com/watch?v=Wmi4mA1dxfs"
}

Hrm = \chordmode { c2:maj a:7 | d:m7 g:7 } 

<<
  \new ChordNames {\Hrm}
  \new Staff{
    \clef bass
    \time 4/4
    \key c \major
    \mark "Bass line 1"
    <c e>2 <g a,> | <d f> <g, f> \bar "||"
  }
>>
<<
  \new ChordNames {\Hrm}
  \new Staff{
    \clef bass
    \time 4/4
    \key c \major
    \mark "Bass line 2"
    \relative c{c,4 bes' a es | d4 as' g des \bar "||"}
  }
>>
<<
  \new ChordNames {\chordmode{
    c2 a:13.9- | d:m7 g:13.9- | c:maj9 a:7.13-.9- |d:m9 g:7|
  }}
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \mark "Upper structures"
    <c''' g'' e''>2 <bes'' ges'' des''> |
    <a'' f'' c''>2 <gis'' e'' b'> |
    <g'' d'' b'> <f'' des'' bes'> |
    <e'' c'' a'> <d'' b' f'> \bar "||"
  }
>>

<<
  \new ChordNames {\Hrm \Hrm}
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \mark "Pattern 1"
    \relative c'''{
        c8 e, g c  bes des, ges bes |
        a8 c, f a gis b, e gis | 
        g8 b, d g  f bes, cis f |
        e a, c e   d f, b d \bar "||"
    }
  }
>>

<<
  \new ChordNames {\Hrm \Hrm}
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \mark "Pattern 2"
    \relative c'''{
      c8 g e c'  bes ges des bes' |
      a f c a'  gis e b gis' |
      g d b g'  f cis bes f' |
      e c a e'  d b f d' \bar "||"
    }
  }
>>

<<
  \new ChordNames {\Hrm \Hrm}
  \new Staff{
    \clef treble
    \time 4/4
    \key c \major
    \mark "Pattern 3"
    \relative c'''{
      g8 c g e   ges bes ges des |
      f a f c e gis e b |
      d g d b   cis f cis bes |
      c e c a  b d b f \bar "||"
    }
  }
>>