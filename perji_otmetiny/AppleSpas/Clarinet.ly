\version "2.12.2"

\include "../../lib/clarinet.ly"
\include "Verse.ly"

\header {
        title = "Яблоневый Спас"
        composer = "Перьи Отметины"
        subtitle = "v. 20110814"
}
\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}



ClarinetI = \relative c''{
  r1 | r1 | r1 | r1 | 
  r2. gis4 | b2. gis4 | e2. a4 | cis,2. r4 |
}

ClarinetRiffI = \relative c''{
  \times 2/3 { a4 gis fis~} fis8 e8 fis gis | \times 2/3 {b4 gis a~} a8gis fis gis | e1 |
}

ClRollI = \relative c''{gis16_\markup \clApp "A/2" a_\markup \clApp "AR/2" gis_\markup \clApp "A/2" e~}

ClarinetII = \relative c''{
  r4 \ClRollI e,2 | r1 |
  r4 \ClRollI e4. r8 |
  \times 2/3 {fis'4 e b~ } b4. r8 | gis8 b4. fis8 b4. | a1 | \times 2/3 {fis4 e a,~} a4 r4 | r1 |
}

ClarinetIII = \relative c''{
  r4 \ClRollI e,8 r8 gis8 (e | b'2.) a8 ( gis | e2.) a8 (e |fis2. ) r8 b8 (|cis1) |
}

ClRollII = \relative c'{dis8_\markup \clApp T e_\markup \clApp "T/34" dis_\markup \clApp T b}

ClarinetRiffII = \relative c''{
  \times 2/3 {a4 e cis~} cis8 b a cis | e2 \ClRollII | cis1 |
}

ClarinetIV = \relative c'{
  cis2 e | a1 | b,8 cis dis e fis gis a b | cis1 | e2 a,| e2 r2 | 
  r1 | r1 | r1 | 
}

ClarinetV = \relative c''{
  r2. e8 b | a2. b4 | e,1 | r2 r8 a8 dis fis | 
  dis8 a dis fis dis a dis fis | \time 2/4 dis8 a dis fis | \time 4/4 e2 r2 |
}

ClarinetVI = \relative c'{
  r1 | e1 | b'2. gis8 (fis | cis2._\markup \clApp "T1--4") cis8 ( b | e1 ) | 
  b'4. cis8 b4. gis8 | e4 cis16 dis8 r16 e4 e16 fis8 r16 | a16_\markup \clApp"AR/2" gis_\markup \clApp "A/2" e8~e2. | r1 | e1 |
  e4._\markup \clApp "T/34" dis16_\markup \clApp T e_\markup \clApp "T/34" gis4._\markup \clApp "A/2" e8_\markup \clApp "1" | fis1_\markup \clApp "G#" | r2. r8 fis8 | e2 \ClRollII | cis1 | a'2 b2 | 
  cis1 | a2 gis8 a b gis | a2 e | a2 cis |
}

ClarinetVII = \relative c''{
  r1 | r1 | r1 | r1 |r1 | r1 |
  e2 b | a b | r4 e2 dis16 cis b8~ | b2 r4 a16 gis fis e~ | e8 e'4. dis16 cis b4. |
  cis2 dis | e2. e8 fis | e2. cis4 | b8. cis16 b2 e4 | b1 \bar "|."
}


<<
  \new Lyrics{
    \lyricmode{_1*10}
    \tiny
    \LyricsI \LyricsII \LyricsIII
    \lyricmode{_1 | _2 |_1|_1|}
    \LyricsIV \LyricsIII
    \lyricmode{_1|_1|_1|_1|_1|_1|_1|_1|}
  }
  \new RhythmicStaff 
      \with {
            fontSize = #-5
            \override StaffSymbol #'staff-space = #(magstep -3)
      }
    {\transpose d e {
    \set Staff.instrumentName = "Voice"
    \clef treble \time 4/4 \key d \major
    r1*10
    \VoiceI \VoiceII \VoiceIII
    {r1 | r2 | r1 | r1 |}
    \VoiceIV \VoiceIII
    {r1|r1|r1|r1|r1|r1|r1|r1|}
  }}
  \new ChordNames{
    r1*10
    \transpose d e {
      \HarmonyI \HarmonyII 
    }
  }

  \new Staff{\transpose bes c'{
    \set Staff.instrumentName = "Clarinet B"
    \clef treble \time 4/4 \key e \major
    \ClarinetI
    \ClarinetRiffI
    \ClarinetII
    \ClarinetIII
    \ClarinetRiffII
    \ClarinetIV
    \ClarinetV
    \ClarinetVI
    \ClarinetVII
  }}
>>
