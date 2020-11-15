\version "2.18.2"

\header{
  title="Как Биче и Алигьери"
  composer="А.Боголапов"
  subtitle="Партия скрипки по фонограмме с вариантом второго голоса"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HVerse = \chordmode{
  e1:m | b:7 | a:m | b:7 |
  f1 | b:7 | f1 | b:7 |
}

HChorus = \chordmode{
  a1:m | b:7 | e:m | c |
  a1:m | b:7 | e:m | c |
}

Intro = {
  \tag #'Harmony {\HVerse}
  \tag #'Violin {
    \mark "Вступление"
    \relative c''{b2~b8 c4 b8 | a2~a8 b4 a8 | g2~g8 a4 g8 | b4. a8~a2 | }\longBar
    \relative c'{\tuplet 3/2{ d4 e f} \tuplet 3/2 {f4 e f} | b2. d,8 e | f2. g8 f | c'4. b8~b2 | }
    
    \bar ":|."
  }
  \tag #'Violin2 {
    \relative c'{e1 | fis1 | e1 | fis2 r8 dis c a~ |} \longBar
    \relative c'{a2 c | dis2 b | a2 c | dis1 |}
    
    \bar ":|."
  }
}

Verse = {
  \tag #'Harmony {\HVerse}
  \tag #'Violin {
    \mark "Куплет"
    r1 | r1 | r1 | r1 \longBar
    <<{
         \relative c'{a1^"Черные ноты  если скрипка одна" | fis'1 | c | b' |}    
      }\\{
         \override NoteHead.color = #grey
         \relative c'{f1_"серые ноты для двухголосия" | fis1 | a | b |}  
         \revert NoteHead.color
    }>>
    \bar "||"
  }
  \tag #'Violin2 {
    r1 | r1 | r1 | r1 \longBar
     % \override NoteHead.color = #grey
     \relative c'{a1 | b1 | c | dis |}  
     % \revert NoteHead.color
    \bar "||"
  }
}

Chorus = {
  \tag #'Harmony {
    \HChorus \HChorus
    \HChorus 
  }
  \tag #'Violin {
    \mark "Припев"
    <<{
      \relative c'' {b1 | b, | g'2 r8 fis e d | c1 |} 
     }\\{
      \override NoteHead.color = #grey
      \relative c'' {b1 | a | g2 e'8 fis e d| c1 |}
      \revert NoteHead.color 
    }>>\longBar
    <<{
        \relative c' {e2. a,4 | b1~ | b1 | g'1~} 
      }\\{
        \override NoteHead.color = #grey
        \relative c' {e2. c'4 | b2. fis4 | g1 | s1 | }
        \revert NoteHead.color 
    }>>\longBar
    <<{
        \relative c''{g1 | b, | g'2 r8 fis e d | c4 b g' fis  } 
      }\\{
        \override NoteHead.color = #grey
        \relative c''{g1 | fis1 | g2 e'8 fis e d | c4 b a g  } 
        \revert NoteHead.color 
    }>>\longBar
    <<{
      \relative c'{e1 | fis1 | g1 | c,1 } \longBar
    }\\{
        \override NoteHead.color = #grey
        \relative c'{s1 | s1 | s1 | e1 |  } 
        \revert NoteHead.color 
    }>>
    <<{
        \relative c'{b1 | g'1 | g1 | g4. b,4 g'8 fis4 |} 	
      }\\{
        \override NoteHead.color = #grey
        \relative c'{e1 | fis1 | s1 | s1 |  } 
        \revert NoteHead.color 
    }>>
    \relative c'{e1 | fis2 r8 fis g fis | e1~ | e1 |}
    \bar "||"
  }
  \tag #'Violin2 {
    \relative c' {e1 | fis1 | b,1 | e4 d c b}  \longBar
    \relative c'{ a2. e'4 | dis1 | e1~ | e2 d | } \longBar
    \relative c'{ c2. d4 | dis1 | e1~ | e1 | } \longBar
    \relative c'{ c1 | dis1 | e1 | c1 |  }\longBar
    \relative c'{ c1 | dis1 | e1~ | e1 | } \longBar
    \relative c'{ c1 | dis2. b4~ | b2. c4~ | c1 | } 
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\HVerse \HVerse}
  \tag #'Violin {
    \mark "Соло"
    \relative c'''{ g2. fis8 e | fis2. e8 d | e4. d c4 | b1 |} \longBar
    \relative c''{ \tuplet 3/2 {a4 b c }\tuplet 3/2{e4 d c} | b1 | a4. b c4 | b1 | }  \longBar
    \break
    \relative c'''{ g4. a g4 | fis2. e8 d | e4. d4 e8 d c | b1 | }\longBar
    \relative c''{ \tuplet 3/2 {a4 b c }\tuplet 3/2{a4 b c} | b1 | a4. b c8 b | b1 | } 
    \bar "||"
  }
  \tag #'Violin2 {
    \relative c''{ b2. e,4 | dis1 | c2. e4 | dis2. b4 |} \longBar
    \relative c'{ c2 a | fis'2 dis | c1 | dis2 fis |} \longBar
    \relative c''{ b4. c4. d4 | dis1 | c4. a4.~a4 | fis4. dis b4 | } \longBar
    \relative c'{ c2 f | dis2. fis4 | f1 | fis2 dis | }
    \bar "||"
  }
}

Music = {
    \Intro \break
    \Verse \break
    \Chorus %\break
    \Solo
}

<<
  \new ChordNames{
      \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Violin I"
    \time 4/4
    \clef treble
    \key e \minor
    \keepWithTag #'Violin \Music
  }
  \new Staff{
    \set Staff.instrumentName="Violin II"
    \time 4/4
    \clef treble
    \key e \minor
    \keepWithTag #'Violin2 \Music
  }
>>
