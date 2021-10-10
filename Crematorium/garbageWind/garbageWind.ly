\version "2.18.2"

\header{
  title="Мусорный ветер"
  composer="гр. Крематорий"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})


HI = \chordmode{\transpose bes c {a1 a1 fis:m fis:m d d e e }}

Solo = {
  \tag #'Harmony {
    \chordmode{e1.:m  d1. c b:7 b:7 e1.:m }
  }
  \tag #'Trumpet {
    \mark "Solo"
   \key e \minor
   \repeat volta 2 {
     \relative c'' {b4. e,  e8 fis g b4. | a4 fis8 d fis a  a2. |}
     \relative c''{g4. e  c8 d e g4. | }
   }
   \alternative{
     \relative c'{fis4 dis8 b4 dis8 fis2.}
     \relative c'{fis4 dis8 b4 dis8 fis4. fis8 g fis}
   }
   e'1. \bar "||"
  }
}

Verse = {
  \tag #'Harmony {
    \chordmode{e1.:m e:m c2. fis c fis4. b:7 e1.:m}
  }
  \tag #'Trumpet {
    \mark "Verse"
    r1. r1. 
    \relative c''{c4 b8 a4 g8 fis2. |}
    \relative c''{c4 b8 a4 g8 fis4. b| e,2. r8 g8 fis g fis g |}
  }
}

%backA = {\relative c''{c2. a | d e | }}
backA = {\relative c''{c2. a | b e, | }}

Chorus = {
  \tag #'Harmony {
    \chordmode{a2.:m d:7 g e:m }
    \chordmode{a2.:m d:7 g e:m }
    \chordmode{c2.:6 a:m6 fis2. b:7 }
  }
  \tag #'Trumpet {
    \mark "Chorus"
    \backA \backA
    r1. | r2. b' | 
  }
}


Music = {
  \Solo \break
  \Verse \break
  \Chorus
}

<<
  \new ChordNames{\transpose e cis{
    \keepWithTag #'Harmony \Music
  }}
  \new Staff{\transpose e cis{
    \set Staff.instrumentName="Trumpet"
    \time 12/8
    \clef treble
    
    \keepWithTag #'Trumpet \Music

  }}
>>



