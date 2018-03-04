\version "2.12.2"
date = #(strftime "v.%Y%m%d" (localtime (current-time)))

\header{
  title = "Вечная мерзлота"
  composer = "Перьи Отметины"
  subsubtitle=\date
}

BasicHarmony = \chordmode{
  a1:m | r | g | a:m |
}

BasicRiff = \relative c'{
  a4. a8~a4 a16 e e e | e2 r |
  g4. g8~g4 g16 g g g | a8 e8~e2 r4 \bar "||"
}

HarmonyIIa = \chordmode{f1 | d:m | d:m | e:m |}
HarmonyIIb = \chordmode{c1 | a:m | d:m | e:m |}
HarmonyII = {
  \HarmonyIIa
  \HarmonyIIb
  \HarmonyIIb
  \HarmonyIIb
}

Solo = \relative c''{
  c1^"в долинах" | d1 | a2. r8 c16 d| e2 b | g1 | c | d2. c8 d | e1 | 
  c1 | a1 | s | s | s | s | s | a'2. g8 f g a4. |
}

\markup{ "Main Riff"}

<<
  \new ChordNames{
    \BasicHarmony
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 4/4 \key a \minor
    \BasicRiff
  }
>>

\markup {"Припев"}

<<
  \new ChordNames{
    \HarmonyII
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet B"
    \clef treble \time 4/4 \key a \minor
    \Solo
  }
>>
