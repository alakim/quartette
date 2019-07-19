\version "2.18.2"

\header{
  title="Движение навстречу"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HR = \chordmode{\transpose bes c {d1:maj | a:maj |}}
HRiff = {\HR \HR \HR 
   \chordmode{\transpose bes c {\time 3/4 c2 bes4 | \time 4/4 a1 }}
}

HVerse = \chordmode{\transpose bes c {
  a1 | d | a | d | c2 bes | a1 | d | a |
}}

HRefrain = \chordmode {\transpose bes c{
  d1 | a | d | a | d | a | \time 3/4 c2 bes4 | \time 4/4 a1 |
}}

BreakDC = \relative c' {d8 b d e4 dis8~ | dis1 |}
BreakB = \relative c{ r8 fis a b }


Intro = {
  \tag #'Harmony {\HRiff }
  \tag #'Horn {
    \mark "Intro"
    \relative c'' {
        \relative c''{ gis4. fis8~fis2 | e8 dis e fis4 dis4. | }
        \relative c''{ gis4. fis8~fis2 | e8 dis e fis4 dis4. | }
        \longBar
        s1
        \relative c'{
          s2 s4. b8 | 
        }
        \BreakDC
    }
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse }
  \tag #'Horn {
    \mark "Verse"
    \relative c'' {
        \relative c'{ b4. dis4 b4.~ | b4 r4 r8 e,8 fis gis |}
        \relative c'{ b4. dis4 b4.~ | b4 r4 r8 e,8 fis gis | }
         \longBar
        \relative c'{ a4. c8~c2 | dis4. b4 fis8 a b | r1 | r4. fis'4 e8 dis e |}
        
    }
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {
    \HRefrain  
  }
  \tag #'Horn {
    \mark "Refrain"
    \relative c' {
        gis'4. fis4 e4. | b2 \BreakB |
        gis'4. fis4 e4. | b2 \BreakB | \longBar
        gis'4. fis4 e4. | b2 \BreakB 
        \BreakDC
    }
    \bar "||"
  }
}


Music = {
  \Intro \break
  \Verse \break
  \Refrain \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key a \major
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  "Форма: Intro V V V R R Solo V R Solo"
}