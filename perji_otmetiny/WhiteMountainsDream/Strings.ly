
\header {
        title = "Сон о белых горах"
        composer = "Перьи Отметины"
}

\version "2.10.33"


ChordsA = \chordmode   { 
   d2 | b2:m | g2 | a2 | 
   d2 | b2:m | fis2:m | a2 |
   d2 | b2:m | g2 | a2 | 
   b2:m | a2 | b1:m | 
}

VoiceI = \relative c' {
  e8 d4 d8 | e fis4 fis8 | b4. d8 | b a4. |
  e8 d4 fis16 a | b2 | a8 fis4.~ | fis4. e8 |
  e8 d4 d8 | e fis4 fis8 | b4. d8 | b a4 e8 |
  d8 b4. | e2 | d8 b4.~ | b2 \bar "||"
}

LyricsI = \lyricmode{
    "Снежный…"2 | "Вечерний…"2 |  Течёт2 | "рекою…"2
    "Утро"4 "где-то"4 | "там,"2 | "там…"2 | _2 |
    "Рекою,"2 | метелью2 | ладья2  | ледяна4
    Чуть4 | слышен2 | звон2 | вёсел2 | _4 Чуть4 |
}

LyricsII = \lyricmode{
    виден2 | песней2 | согретый2 | воздух4. До8 |
    глаз4. "в мех"8 | укутан2 | сон2 | _2 |
    Изгиб4. и8 | снова4. нет16 у16 | неба2 | края2 |
    Внизу4. где-16 то | "там,"2 | "там…"2 | _2 |
}

LyricsIII = \lyricmode{
    Внизу2 | далёко2 | ветвятся2 | реки2 |
    Страх4 на4 | двоих2 | "смелых…"2 | _4
    Твой4 | лик4 всё4 | "тише,"4 всё4 | крепче2 | "стужа,"4.
    Но8 | ближе4 край4 | Вышний2 | Белых2 | _2 |
}

ViolinI = {
  \barNumberCheck #1
  d'4 cis'4 | fis'4. d'8 | g'8 fis'4 e'8~ | e'2 |
  \times 2/3 {d'4 fis' a'} | b'2 | cis''8 a'4.~ | a'4. e'8~ | 
  e'8 fis' d' e' | fis'8 d' a' fis' | b'2 | a'2 | 
  b'2 | a'2 | b2~\> | b2\! | 
}
ClarinetI = {
  \barNumberCheck #1
  r8 a4.^> | r8 b4.^> | b8 d' b g | a4 cis'8 b~ |
  b8 a4. | d'4.^> e'8| cis'2~ | cis'2 | 
  a2 | b2 | d'2 | cis'2 | 
  r8 d'4. | r8 cis'4. | fis2~ | fis2 | 
}
CelloI = {
  \barNumberCheck #1
  fis4. e8 | d8 e d cis | d2 | \times 2/3 {cis4 b, cis} |
  d8 fis4. | a8 fis4. | e8 fis4. | e4 cis | 
  d2 | d2 | g2 | e2 | 
  r8 fis4. | r8 e4. | d2~ | d2 | 
}

ViolinII = {
  \barNumberCheck #17
  s2*4
  s2*4
  s2*4
  s2*4
}
ClarinetII = {
  \barNumberCheck #17
  s2*4
  s2*4
  s2*4
  s2*4
}
CelloII = {
  \barNumberCheck #17
  s2*4
  s2*4
  s2*4
  s2*4
}

ViolinIII = {
  \barNumberCheck #33
  s2*4
  \relative c'' {fis2 s2 s2 s2}
  s2*8
}
ClarinetIII = {
  \barNumberCheck #33
  s2*4
  \relative c''{a2 s2 s2 s2}
  s2*8
}
CelloIII = {
  \barNumberCheck #33
  s2*4
  \relative c {d2 s2 s2 s2}
  s2*8
}

<<
        \new ChordNames{
                \ChordsA \ChordsA \ChordsA 
        }
                
        \new Staff{
                \set Staff.instrumentName = \markup {Voice}
                \clef treble \time 2/4 \key b \minor
                \VoiceI \VoiceI \VoiceI
        }
        
        \new Lyrics{
          \LyricsI \LyricsII \LyricsIII
        }
        
        %{\new Staff{
          \clef treble \time 2/4 \key b \minor
          s2*16*3
        }%}

        
        \new Staff{
                \set Staff.instrumentName = \markup {Violin}
                \clef treble \time 2/4 \key b \minor
                \ViolinI \ViolinII \ViolinIII 
        }
        \new Staff{
                \set Staff.instrumentName = \markup {Clarinet}
                \clef treble \time 2/4 \key b \minor
                \ClarinetI \ClarinetII \ClarinetIII
        }
        \new Staff{
                \set Staff.instrumentName = \markup {Cello}
                \clef bass \time 2/4 \key b \minor
                \CelloI \CelloII \CelloIII
        }
      


>>

%{\markup {
  \column{
    \line{Снежный… Вечерний… Течёт рекою…}
    \line{Утро где-то там, там…}
    \line{Рекою, метелью – ладья ледяна;}
    \line{Чуть слышен звон вёсел.}
    \line{" "}
    \line{Чуть виден песней согретый воздух.}
    \line{До глаз в мех укутан сон.}
    \line{Изгиб, и снова нет у неба края}
    \line{Внизу где-то там, там…}
    \line{" "}
    \line{Внизу далёко ветвятся реки,}
    \line{Страх на двоих смелых…}
    \line{Твой лик всё тише, всё крепче стужа,}
    \line{Но ближе край Вышний Белых.}

  }
}%}
