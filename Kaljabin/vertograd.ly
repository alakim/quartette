\version "2.14.2"

\header{
  title = "Вертоград"
  composer = "А.Калябин"
  subsubtitle = "for clarinet B"
}

FluteIntro = {
  \key a \minor \time 4/4 
  \relative c''{a4^"Intro" a8 a16 a g8 g g a | a1 | a4 a8 a16 a g8 g e d | e8 d e g4 e16 g a8 b |}
  \relative c''{c4 c8 c16 c b8 b16 b a8 g | a8. a16 g8 a4 g16 g a8 b | }
  \relative c''{\time 6/8 c8. b16 a8 b8. a16 g8 | \time 4/4 a8 g a c4 b8 a8 b |}
  \relative c''{\time 6/8 c8. b16 a8 b8. a16 g8 | \time 4/4 a8 g a a4 g16 g a8 b | }
  \relative c''{\time 6/8 c8. b16 a8 b8. a16 g8 | \time 4/4 a1 \bar "||"  }
}

VerseI = { % t=0:30 
  \relative c'{r4.^"Verse 1" e8 e c a16 g a c | a2^"крыльями саженными..." r | r1 | r1 | }
  % t=0:38
  \relative c'{r2. r8 e8 | e8 fis g a4 g16 fis g8 fis | r1 | r1 |}
  % t=0:49
  \relative c''{r2. r8 a16 a | a8 g fis g4 fis16 e fis4 | r1 | r1 | }
  %t=1:00
  \relative c'{r2. r8 e16 fis | g8 e16 fis g8 e16 fis g8 e16 fis g4 | r1 | r1 |}
  %t=1:10
  \relative c''{r2. r8 a16 a | a8 g fis g4 fis8 e fis \bar "||"}
}

Refrain = { %t=1:15
  \relative c'{a4^"Refrain" a8.^"Будет предивный..." a16 g8 g g a | a2 r |}
  \relative c'{a4 a8. a16 g8 g g a | a2 r |}
  \relative c'{c4 c8. c16 b8 b a g | a8. g16 a8 c4. a8 b | }
  \relative c'{\time 6/8 c8 b a b4 g8 | \time 4/4 a2 r2 \bar "||"}
}

VerseII = { % Эй, дурак!
	\improvisationOn
	\repeat percent 2{b'1 \mark "Эй, дурак!"| b'2. b'4 |}
	b'1 | b'2. b'4 | b'1 | b'2. b'4 \bar "||"
	\improvisationOff
}

VerseIII = { % в приказной избе
	\repeat percent 4{\relative c'{a8 \mark "в приказной избе" g4 a g8 a g|}}
	\relative c'{r2 r8 g8 a g | d'1  \bar "||"}
}

FluteSolo = {
  \relative c''{r8^"...грех на тебе" g8 a b c d4 e8 | d4.^"один аккорд на все соло" c8 a2 | r4 a16 g e g a8 c4 d8 | r8 c d e d2 | s1 | s1 \bar "||"}
}

VerseIV = { % Чей холоп?
	\improvisationOn
	\repeat percent 2{b'1 \mark "Чей холоп?"| b'2. b'4 |}
	\repeat percent 2{b'1 | b'2. b'4 |} \bar "||"
	\improvisationOff
}

BreakI = \relative c''{r8^"стенах" d8 d d d4. c16 b | c8 b16 a b8 a16 g a4 r \bar "||" }
HBreakI = \chordmode {s1 | s1 |}

VerseV = { % Сам на ладан...
	\improvisationOn
	\repeat percent 2{b'1 \mark "Сам на ладан..."| b'2. b'4 |}
	b'1 | b'2. b'4 | b'1 | b'2. b'4 \bar "||"
	\improvisationOff
}

EndRiff = { % рифф в конце перед рефреном "Будет предивный..." - на записи нет, добавили на репе 20130902
	\transpose c c'{
		\relative c'{\repeat percent 2{a4 g8^"рифф в конце" a4 g8 a b | c8 b a g4 a8 g a |}}
	}
	\relative c'{\repeat percent 2{e4 d8 e4 d8 e fis | g8 fis e e4 e8 d e |}}
	%s1^"Будет предивный..."
	\bar "||"
}

BreakII = {
  \repeat percent 3{\relative c''{c8 b4 c4 b8 c16 b a8 |}}
  \relative c''{c8 b4 c4 b8 c8 b8~ | b1^"Будет предивный..." }
   \bar"||"           
           }

CdI = \relative c''{c8 b a b16 c b8 a c16 b a g |}
Coda = {
	\mark "Coda"
	\repeat percent 3{\CdI } \relative c''{a2 r} |
	\repeat percent 2{\CdI}
	\relative c''{c8 b c b c8. c16 c b a g | a2 r16 e g a g a b a |}
	% \relative c''{r8 a16 a a g8. \times 2/3{a8 b c } \times 2/3{b8 c d} | e4. d16 c b4 a |}
          \relative c''{
              r8 a16 a a g8. \times 2/3{g8 a b } \times 2/3{c8 d e} | 
              e4~e16 d8 c16 b8. a16~a4 | 
          }
          r1 | r2
          \relative c''{r8. e16 e d c d | d16 e g a8 g16 a b~  b16 c16 c c8 b16 a g | 
                a4 r16  a8 g16  e8. d16 r4 |}
}

HIntro = \chordmode{s1 | s1 | s1 | s1 | s1 | s1 | s2. | s1 | s2. | s1 | s2. | s1 | }
HVI = \chordmode{ s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| s1| }
HR = \chordmode{s1| s1| s1| s1| s1| s1| s2.| s1| }
HVII = \chordmode{a1:m | g2. a4:m | s1 | s1 | e1:m | d2. a4:m | e1:m | d2. g4 |}
HVIII = \chordmode{f8 c4 f g8 a:m g | s1 | s1 | s1 | s1 | s1 |}
HFlSolo = \chordmode{d1:m | s1 | s1 | s1 | s1 | s1 |}
HVIV = \chordmode{d1:m | c2. d4:m | s1 | s1 | a1:m | g2. d4:m |  s1 | s1 |}
HVV = \chordmode{a1:m | g2. a4:m | s1 | s1 | e1:m | d2. a4:m | e1:m | d2. g4 |}
HEndRiff = \chordmode{a1:m |  s1 | s1 | s1 | e1:m | s1 | s1 | s1 | s1 |}
HBreakII = \chordmode {s1 s1 s1 s1 %{s1%} }
HCoda = \chordmode{ s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |}

<<
  \new ChordNames{\transpose bes c'{
	\HIntro
	\HVI
	\HR
	\HVII
	\HVIII
	\HFlSolo
	\HVIV
        \HBreakI
	\HVV
	\HEndRiff
        \HBreakII
	\HCoda
  }}
  \new Staff{
    \clef treble 
    \set Staff.instrumentName = "Cl.B"
    \transpose bes c'{
        \FluteIntro
        \VerseI
        \Refrain \break
		\VerseII \break
		\VerseIII \break
        \FluteSolo \break
		\VerseIV %\break
                \BreakI \break
		\VerseV \break
        \EndRiff \break
        \BreakII \break
        \Coda
    }
  }
>>
