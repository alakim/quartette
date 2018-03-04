\include "Vselug_parts.ly"

\header {
	title = "Вселуг"
        subtitle = "v.20110529"
	composer = "Перьи Отметины"
}

\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}

\version "2.10.33"

ViolinBa = \relative c'{
  r2. | r2. | r2. | r2. | 
  f4 f8 f4 e8 | c4. e4. | f4 e8~e4. | f2. |
  e4 e8~e4 c8 | d2. |
  e2. | f2. | e2. | d2. | f4. e4. | d2. |
  r4. c'4. | a2. |
}

CelloBa = \relative c{
  r2. | r2. | r2. | r2. | 
  d4 d8 d4 c8 | a4. c4. | d8 e f e4 c8 | d2. |
  a8 c d c a g | a4 a8 a4. |
  c2. | d2. | c2. | a2. | bes4. c4. | d2. |
  r4. e4. | d2. |
}

ViolinBb = \relative c'{
  s2.*18
}

CelloBb = \relative c{
  s2.*18
}

ViolinC = \relative c'{
  f2. | e | d4. e | f2. |
}

CelloC = \relative c{
  d2.| c2. | bes4. g | a2. |
}

ViolinD = \relative c''{
  a2. | f | e | a |
  c2. | d | f4. g4. | a2. | f4. g4. | a2. |
}

CelloD = \relative c{
  c2. | d | a | d |
  a2. | f | bes4. c4. | d2. | bes4. c4. | d2. |
}

FluteSolo = \relative c'{
  d4. d'8 c bes | a4. e | f4 f8 e4 f16 g | f2. |
  
  e'8 f e a,4 a'8 |a4. d, |
  e4 f16 e a,4 f'8 | f2. |
  e4 f16 e a,4 a'8 |a4. d,4 d8 |
  d'4. c | d2r8 a8 | d4. c4 d16 e | d2. |
  
}

ClarinetCI = \relative c{ d2. | a'2. | bes4. c | d2. | }
ClarinetDI = \relative c'{
  e2. | d2. | c2. |f2. |
  e2. | d2. | d4. e4. | f2. | d4. e4. | f2. \bar "||"
}


ViolinEa = \relative c'{f2.:16 | e:16 | f4.:16 e:16 |f2.:16 |}
ViolinE = {\ViolinEa \ViolinEa}

CelloE = \relative c{
  d8 c a g f g | a4 c8 c4. | d4 d8 e4 e8 | f2. |
  a,8 b c d c d| e4 a,8 a4 a8 | d4 d8 c4.| a2. | 
}

<<

        \new Lyrics{
            \HarmonyB \HarmonyB 
            %\HarmonyAa \HarmonyAbc
            %\HarmonyAa \HarmonyAa 
        }
        \new Staff{
          \set Staff.instrumentName = \markup{Violin}
          \clef treble \time 6/8 \key d \minor
          \ViolinBa
          \ViolinBb
        }
	\new Staff{
		\set Staff.instrumentName = \markup { Clarinet B}
                \transpose bes c'{
			\clef treble \time 6/8 \key d \minor
                        
                        \mark \markup { \box \bold "Куплет 2"  } 
                        \ClarinetBa \break
                        
                        \mark \markup { \box \bold "Куплет 3" } 
                        \ClarinetBb \break
                        
                      }
	}
        \new Staff{
          \set Staff.instrumentName = \markup {Cello}
          \clef bass \time 6/8 \key d \minor
          \CelloBa
          \CelloBb
        }
>>

<<

        \new Lyrics{
            \HarmonyAa \HarmonyAbc
        }
        \new Staff{
          \set Staff.instrumentName = \markup{Flute}
          \clef treble \time 6/8 \key d \minor
          \FluteSolo
        }
        \new Staff{
          \set Staff.instrumentName = \markup{Violin}
          \clef treble \time 6/8 \key d \minor
          \ViolinC \ViolinD
        }
        \new Staff{
                \set Staff.instrumentName = \markup { Clarinet B}
                \transpose bes c'{
                        \clef treble \time 6/8 \key d \minor
                        \mark \markup { \box \bold Проигрыш  } 
                        \repeat volta 2{ \ClarinetCI } \ClarinetDI
                     }
        }
        \new Staff{
          \set Staff.instrumentName = \markup {Cello}
          \clef bass \time 6/8 \key d \minor
          \CelloC \CelloD
        }
>>

<<

        \new Lyrics{
            \HarmonyAa \HarmonyAa 
        }
        \new Staff{
          \set Staff.instrumentName = \markup{Violin}
          \clef treble \time 6/8 \key d \minor
          \ViolinE
        }
        \new Staff{
                \set Staff.instrumentName = \markup { Clarinet B}
                \transpose bes c'{
                        \clef treble \time 6/8 \key d \minor
                        \mark \markup { \box \bold "Куплет 4"  } 
                        \ClarinetE
                      }
        }
        \new Staff{
          \set Staff.instrumentName = \markup {Cello}
          \clef bass \time 6/8 \key d \minor
          \CelloE
        }
>>

<<

        \new Lyrics{
            \HarmonyCoda 
        }
        \new Staff{
                \set Staff.instrumentName = \markup { Clarinet B}
                \transpose bes c'{
                        \clef treble \time 6/8 \key d \minor
                        \ClarinetF
                      }
        }
>>

\markup{
  \column{
    \line{1 5 6/7 1 "     "  5 1 5 1 5 1 6/7 1 6/7 1}
  }
}

