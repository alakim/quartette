\version "2.18.2"

\header {
  title = "На краю"
  composer = "гр. Ventum"
}

%{
    Форма 
2017-10-18 ZOOM0002.MP3
00:01 Intro 8m
00:16 Gtr riffs 8m
00:31 Pause 1m tempo 2x slower
00:35 Bass solo 8m
01:11 Clean gtr chords 16m tempo 2x faster
01:42 Gtl clean arpeggios, crescendo 12m
02:30 Gtr flanger, Horn 8m tempo 2x slower
02:45 Vln, Horn 8m
03:18 Gtl flanger chords 4m Coda

2017-10-18 ZOOM0003.MP3
00:18 Gtr flanger 4m
00:35 Vln solo 8m
01:07 Horn solo Coda 4m

2017-10-18 ZOOM0004.MP3
00:03 - Gtr flanger 4m
00:20 - Vln solo 8m
00:52 - Horn solo Coda 4m

01:52 - Coda "take 2" 4m solo sample

02:45 - Coda "take 3" 4m solo sample

2017-10-18 ZOOM0005.MP3
00:01 Intro 8m
00:16 (1) Gtr riffs 8m
00:32 Pause 1m
00:34 (2) Bass solo 8m
01:10 (3) Glean gtr chords 16m
01:43 (4) Gtr clean arpeggios, crescendo 12m
02:30 Gtr flanger 4m
02:47 (5) Vln solo 8m
03:20 (Coda) Horn solo Coda 4m  solo sample






%}

HrmA = \chordmode {c1 | e:m | c | g |}
HrmAa = \chordmode {c2 e:m | c2 g |}
HrmB = \chordmode {
  c1 | e:m |
}
HrmBs = \chordmode {
  c1 | c1 | e:m | e:m |
}

HIntr = {\HrmA \HrmA }
IntroBand = \relative c'{
  c8 d4 e f8 e d | e8 b4 b8~b2 |
  c8 d4 e f8 e d | e8 b4 b8~b2 |
  g'8 a4 g8~g2 | e8 b4 b8~b2 |
  c8 d4 e f8 e d | e8 b4 b8~b2 |
}
Intro = {
  \mark Intro
  \relative c'{e4. g16 g g2 | b4. g16 g g2  } 
  \relative c'{e4. g16 g g2 | b4. g16 g g2  } \bar "."
  \relative c''{c4. g16 g g4 a | b4. e,16 e e2  } 
  \relative c''{g4. g16 g g2 | b1  } 
  \bar "||"
}

RiffA = {
  \improvisationOn
  b'4.^"Distortion riffs" b'8~b'2 | b4. b8~b2 |
  b'4. b'8~b'2 | b4. b8~b2 |
  \improvisationOff
}

HI = {\HrmAa \HrmAa \HrmAa \HrmAa }
PartI = {
  \mark \markup{\circle{1}}
  s1 s1 s1 s1  \bar "."
  s1 s1 s1 s1 
  \bar "||"
}
PartIBand = {\RiffA \RiffA}

HII = {\HrmB \HrmB \HrmB \HrmB}
PartII = {
  \mark \markup{\circle{2}}
  r1 r1 r1 r1  \bar "."
  r1 r1 r1 r1 
  \bar "||"
}
PartIIBand = {
  s1^"Bass solo" s1 s1 s1  \bar "."
  s1 s1 s1 s1 
  \bar "||"
}
HIII = {
  \HrmBs \HrmBs 
  \HrmBs \HrmBs 
}
PartIII = {
  \mark \markup{\circle{3}}
  s1 s1 s1 s1  \bar "."
  s1 s1 s1 s1  \bar "."
  s1 s1 s1 s1  \bar "."
  s1 s1 s1 s1 
  \bar "||"
}
GtrCleanChords = \relative c''{b4 b b b }
PartIIIBand = {
  \improvisationOn
  \relative c''{b4^"Guitar clean chords" b b b } \GtrCleanChords \GtrCleanChords \GtrCleanChords 
  \GtrCleanChords \GtrCleanChords \GtrCleanChords \GtrCleanChords 
  \GtrCleanChords \GtrCleanChords \GtrCleanChords \GtrCleanChords 
  \GtrCleanChords \GtrCleanChords \GtrCleanChords \GtrCleanChords 
  \improvisationOff
}
HIV = {
  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1 
}
PartIV = {
  \mark \markup{\circle{4}}
  r1 r1 r1 r1   \bar "."
  \repeat unfold 2{
    \relative c'{e4 g2 g8. e16 | fis1 | g2 a4 g  | fis8 e8~e2. | \bar "."}
  }
   
  % s1 s1 s1 s1  \bar "."
  r1 r1 r1 r1   
  \bar "||"
}
GtrCompingA = {
  \improvisationOn
  \relative c''{
    b8 b b b b b b16 b b8 |
    b8 b b b b b b16 b b8 |
    b8 b b b b b b16 b b8 |
    b8 b b b b b b16 b b8 |
  }
  \improvisationOff
}
PartIVBand = {
  \relative c'{
     c8^"Guitar clean" g' g c, c8 g' g16 c, c8 |
     c8 fis fis c c fis fis16 c c8 |
     d8 fis fis d d fis fis16 d d8 |
     e g g e e g g16 e e8 |
  }
  \GtrCompingA
  \GtrCompingA
  \improvisationOn
  \relative c''{
    b1^"Guitar flanger chords " | b | b | b2
  }
  \improvisationOff
}
HV = {
  s1 s1 s1 s1 
  s1 s1 s1 s1 
}
PartV = {
  \mark \markup{\circle{5}}
  s1 s1 s1 s1 
  s1 s1 s1 s1 
  \bar "||"
}
PartVBand = {
  \relative c''{
    g8^"Violin solo" a b g |}
  \repeat unfold 2 {
    \relative c''{c8. g16 g8 e c2 | }
    \relative c''{e8 d4 c8 g2 | c8. g16 g8 e c4. b16 a | g16 a g4.}
    \relative c''{g8 a b g | }
  }
   
}
HCoda = {\HrmA }
Coda = {
  \mark Coda
  r4.^"Flugelhorn solo" 
  \relative c'{e8 fis4 g | g2. a8 b | b8 g8~ g2 r8 e8 | e8 d8~d2. }
  \bar "|."
}

HrmMain = {
    \HIntr
    \HI
    s1
    \HII
    \HIII
    \HIV
    \HV
    \HCoda
}

<<
  \new ChordNames{\transpose bes c{\HrmMain}}
  \new Staff{\transpose bes c'{
    \clef treble 
    \time 4/4
    \key c \major
    \set Staff.instrumentName = "Flugelhorn"
    \Intro
    \PartI
    s1 \bar "||"
    \PartII
    \PartIII
    \PartIV
    \PartV
    \Coda
  }}
  \new ChordNames{\HrmMain}
  \new Staff{
    \clef treble 
    \time 4/4
    \key c \major
    \set Staff.instrumentName = "Band"
    \IntroBand
    \PartIBand
    {
      \override NoteHead.style = #'cross
      \relative c''{e4^"Hi-hat" e e e}
      \revert NoteHead.style
    }
    \PartIIBand
    \PartIIIBand
    \PartIVBand
    \PartVBand
    s1 s1 s1 s1 
  }
>>
