


\version "2.10.33"

ChordsAa = \chordmode{d2.:m | a2.:m | bes4. c | d2.:m |}
HarmonyAa = \lyricmode{I2. | V2. | VI4. VII | I2. |}
ChordsAb = \chordmode{a2.:m | d2.:m |}
HarmonyAb = \lyricmode{V2. | I2. |}
ChordsAc = \chordmode{bes4. c4. | d2.:m}
HarmonyAc = \lyricmode{VI4. VII | I2. |}
ChordsAbc = {\ChordsAb \ChordsAb \ChordsAb \ChordsAc \ChordsAc}
HarmonyAbc = {\HarmonyAb \HarmonyAb \HarmonyAb \HarmonyAc \HarmonyAc }
ChordsA = {\ChordsAa \ChordsAa \ChordsAbc}
HarmonyA = {\HarmonyAa \HarmonyAa \HarmonyAbc}

RecorderA = \relative c''{
  r2. |r2. |r2. |r2. |
  a4. d4 e16 d | g,4. a | f4 f8 e4 f16 g | f2. |
  e'4 f16 e c4 g8 | a4. d | e4 f16 e c4 g8 |a2. |
  e'4 f16 d c4 g8 | a4. d | f4. c | d2. | d4. c4 d16 e | d2. \bar "||"
}

% Решили это не играть.
%{
ClarinetB = \relative c'{ 
  f4. d'8 c bes | a4. e4. | f4 f8 e4 f16 g | f2. |
  a4. d8 c bes | a4. e4. |  f4 f8 e4 f16 g | f2. \bar "||"
}%}

ChordsB = {\ChordsAa \ChordsAa \ChordsAbc}
HarmonyB = {\HarmonyAa \HarmonyAa \HarmonyAbc}
ChordsCoda = \chordmode{bes4. c | d2.:m |}
HarmonyCoda = \lyricmode{VI4. VII | I2. |}

ClarinetBa = \relative c'{
  r2. | r2. | r2. | r2. | 
   a4^"за полями" a8 a4 g8 | e4^"срубом" bes'8 a4. |
   a4 a8 a g e | a2. | c8 c c c4 a8 | a4 c8 c4. | a8 a a a4 g8 | g4 a8 a4. |
   g8^"что во мне..." a g e4 g8 | f4 g8 a4. | 
   g4^"то тебе..." f8 e4 g8 | f2. |
   c'4 a8 g f e | f2. |
}

ClarinetBb = \relative c'{
   a4^"вычерпаны..." a8 a4 g8 | e4 bes'8 a4. | a4 a8 a g e | a2. |
   a4 a8 a4 g8 | e4 bes'8 a4. | a4 a8 a g e | a2. |
   c8 c c c4 a8 | a4 c8 c4. | a8 a a a4 g8 | g4 a8 a4. |
   g8^"что во мне..." a g e4 g8 | f4 g8 a4. | 
   g4^"то тебе..." f8 e4 g8 | f2. |
   c'4 a8 g f e | f2. |
}

ClarinetC = \relative c{ d2. | a'2. | bes4. c | d2. | }
ClarinetD = \relative c'{
  e2. | d2. | e2. |f2. |
  e2. | d2. | bes4. c4. | d2. | bes4. c4. | d2. \bar "||"
}

% ClarinetE = \relative c''{
%     a4^"рядом лишь разрывы..." a8 a4 c8 | c4 a8 a4. | bes2 g4 | a2 r8 a8 |
%     f'4 f8 e4 d8 | a4 c8 c4. d4 d8 d c a | a2. \bar "||"
% }

% ClarinetE = \relative c'{
%     d4^"рядом лишь разрывы..." d8 f4 g8 | a4 e8 e4. | f4 f8 e f g | f2 r8 d8 |
%     d'4 d8 d4 c8 | a4 c8 c4. | d4 d8 d8 c a | a2. \bar "||"
% }
ClarinetE = \relative c'{
    a'4.^"рядом лишь разрывы..." ~a4 c8 | c4 a8 a4. | a4. g4. | a2 r8 a8 |
    f'4 f8 e4 d8 | a4 c8 c4. | d4 d8 d8 c a | a2. \bar "||"
}
ClarinetF = \relative c'{
    f4.^"то тебе найти..." e8 d c | d2. \bar "||"
}



