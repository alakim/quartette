
\header {
	title = "Теплынь"
	composer = "Перьи Отметины"
        subtitle = "v.20150301"
}

\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}


\version "2.12.3"

SoloA = \relative c'{
        d4^"solo A" b8 a |
        g4 a8 b d g fis d | e2 c | g'4. fis4. d4 | g2
}

ChordsI = \chordmode{
  a2 e|fis2:m e|d1 |d1 | a1 |
}
FluteI = \relative c''{
  \repeat volta 2 {r2 d8 b a4 | g2  d'8 b a4 | g2  e2 | g  g8 a b4 | g1 |}
  
}
ClarinetI = \relative c''{r2 d2 | 
  \repeat volta 2 {g,2 <<{a4. b16 d | c2 e, }\\{fis2| e2 g}>>  | c4. g a4 | g1 |}
}

ChordsII = \chordmode{
  d| d |d |a |s1|d1|
  d1|s1|a1|e1|s1|
  fis1:m|s1|d1|s1|a2 e |fis1:m|
  d1|cis1:m|d1|s1|s1|
}
FluteII = \relative c''{
  r1 |r1 |r2^"сладко" c8 b a g |%{d2 c''4 a8 g%} d'8 c b a g2 | r1 |r1^"доброта" |
  r2 e'8 d g, a~| a2^"ветре" g8 d b' g| r4 b4. g | d2 r8 b'8 g b | a2. fis4 |
  g1^"открытых" | r1 | 
  %r1 | r1 | 
  e4.^"книжке" g a4 | g4.^"детстве" e a4 |
  % g2 a | b2. d8 e |
  b2 fis4 a^"за-" | g2.^"кладка" g'8 a |
  %d4. g,8 g2 | a4. a8 a8. b d8 | 
  g4 c, e g | fis4 b, d fis8 g |
  e2 g, | b4. g d4 | e1 |
  
}


ClarinetII = \relative c''{
  r1 |r1 |
  r2^"сладко" c8 (b a g) |
  % <<
  %   { r1^"сладко" | }
  %   \new CueVoice {
  %     \stemUp s2 c8_"flute" (b a g)|
  %   }
  % >>
     
  d'8 (c b a g2) | \break r1 |r1 |
  r2^"доброта" e'8 d g, a~| a2 r2 |r1^"ветре" |r2^"окнах" c8 b g d'~|d2. b4^"от-" |
  e1^"крытых" | r1 | e,4.^"книжке" g a4 | g4.^"детстве" e a4 | b2 fis4 a^"за-"  | g2.^"кладка" g8 a |
  g4 c, e g^"се-" |fis4^"кунд" b, d fis8 g^"за-"  | c1^"бытых" |d4. b a4 | g1 |
}

ChordsIII = \chordmode{
  e1|a2 e|fis2:m e|d1|d1|
  a1|s1|s1|s1|s1|
  s1|
  \transpose bes c{
  g1|d|e:m|
  c | c | d| c| d | a |}
  s1|d1|e1|fis2:m e|d1|s1|
  e1|fis1:m|
}
FluteIII = \relative c''{
  a1^"берегут" | b2^"час" d8 b a4 | g2 d'8 b a4 | g1 | g2 c4 b |
  g2 \transpose c c'{\SoloA}
  %r1 | r1 | r1 | r1 | g1 |
  \relative c''{r4. g16 a | b4. c d4 | g,1 |}
   a| b2. a4 |
  g1 | g | a| g| a| cis|
  b4. g d4 | g1 | a^"запомнить"| b2 a | g1^"сто раз" | c|
  r1 | e |
}
ClarinetIII=\relative c''{
  d1^"берегут" |r2 d |g,2^"светлый" fis^"за-" |e2^"метный" g |c4. d fis,4 |
  g2^"глаз" \SoloA r4. g16 a |
  b4. c d4 | g,1 | fis^"модн." | g2.^"мягко" fis4 |
  e1| e | fis^"ухОдит"| e | d | e |
  b'4.^"(soft)" g d4 | c1 | d| e2 d^"сто" | c1^"раз"| e|
  fis1 | e1^"забЫтых" |
}


ChordsIV = \chordmode{
  s1|d1|e1|a2 e|
  fis2:m e|d1|d1|a1|s1|
  s1|s1|s1|s1|s1|s1|s1|
}
FluteIV = \relative c''{
  r2 e4 fis | g1^"берегут" |  fis| g2 d |
  g,2 fis'|e  g,~|g2. a4 | b2^"для глаз" 
  % d8 b a4| g2 d8 b a4 |
  % g2 e | c'2 g8 a b4 | g2 fis' | 
  \transpose c c'{\SoloA \SoloA}
  r2 |
  % e2 d | c1 | e4. c d4 | d2 r2 |
}
ClarinetIV=\relative c''{
  r1|g1^"берегут" | a | g2 d |
  e2^"светл." d | c^"заметн." e | g a | g2^"глаз" 
  \SoloA
  \SoloA r2 |
}

ChordsV = \chordmode{\transpose bes c'{
  s1 | c:m |d:m|
  g|g|c:m|d:m|
  g1| s1|c:m|d:m|
  g|e:m|b:m|c|c:m|
  e:m|
}}
FluteV = \relative c''{
  b'8 a g e d b a e |g4. r4 g8 a b | c2 r4 b8 a|
  b2 r8 d c b | g1 | f4. g2 r8 | a8 g16 r bes r c r d4. c16 b|
  g2. r16 d'd c | d4. b g4 | es'1^"уходит" | f |
  g8 d b c4. a4 | e'4. b g4 | fis8 e g fis2 r8 | g2. fis8 g | c4. g es'4 |
  e1\trill|
  
}
Cl_FluteV = \transpose c' bes{\relative c''{
	cis8^"(flute break)" (b a fis) a (fis e fis) |
	% <<{a4. r4 a8 b cis | d2 r4 cis8 b | cis2 r8 e8 d cis | a1 | gis4. a2 r8 |
	% 	b8 a16^. r c^. r d^. r e4. d16 cis | a2. r16 e' e d | e4. cis a4 |}
	% \\{\transpose bes c'{es'1 | f|
	% 	  g1 | c,4. b g4 |es'4. c d4 | f4. d f4 |
	% 	  g4. d b4 | g'4. d b4 }}>>
	
	a4. r4 a8 b cis | d2 r4 cis8 b | cis2 r8 e8 d cis | a1 \break | g4. a2 r8 |
	b8 a16^. r c^. r d^. r e4. d16 cis | a2. r16 e' e d | e4. cis a4 |
}}

ClarinetV=\relative c'{
  \Cl_FluteV
  % <<
  %   {r1 |}
  %   \new CueVoice{
  %     \stemUp b''8^"flute" (a g e d b a e)
  %   }
  % >>
  
  % es1 | f|
  % g1 | c,4. b g4 |es'4. c d4 | f4. d f4 |
  % g4. d b4 | g'4. d b4 |

  c1^"уходит" | d |
  b4. d8~d2 | b4.^"грустно" g e4 | d1^>|e^> | g^>|
  b1^"старше" |
}


ChordsVI = \chordmode{
  d1|e1|
  a1|d1|a1|e1|fis1:m|
  d1|s1|s1|
  s1|s1|s1|s1|
  s1|s1|s1|
  s1|s1|s1|
  s1|s1|s1|s1|
  s1|s1|s1|s1|
}
FluteVI = \relative c''{  
  r1|r1|
  r1|r1|r1|r1|r1|
  r1|r1|r1|
  r1|r1|r2 d8 b a4 | g2 d'8 b a4 |
  g4. e8 e2 | g2 g8 a b4 | g1 |
  r1|r1|r1|
  r1|r1|r1|g2 g8 a b4 |
  g2 d'8 b a4 | g4 e d'8 b a4 | g4. e8 e2 | g2 g8 a b4 |
}
ClarinetVI=\relative c''{
  r1|r1|
  r1|r1|r1|r1|r1|
  r1^"пробьет" |r2^"вот и мы" r8 d16 d d8 e | fis2 r8 e16 e e8 fis |
  g2. a,8 b | d2^"ветер еще" d4 c8 b | g1^"раз" | \break r1 |
  r1| r1 | r2^"глаз" d'4. b16 a |
  g2 d'8 b a4 | g4. e16 e e2 | r2 g8 a b4 |
  g2 d'8 b a4 | g2 g'4. fis16 fis | g1 | r1 |
  r1|r1|r1|r1|
}


HRiffCoda = \chordmode {a2 e fis e d1 d }
RiffCoda = {
  \mark Coda
  \repeat volta 2{
    \relative c''{e4 e cis8 b cis fis~| fis4 fis cis8 b cis a'~ | a4 a d,8 cis d a'~ | a4 a cis,8 b a4 |}
  }
}
<<
         \new ChordNames{\transpose c bes{
           \ChordsI \ChordsII \ChordsIII \ChordsIV \ChordsV
         }}
         \new Staff{
             \set Staff.instrumentName = \markup {Flute}
             \clef treble \time 4/4 \key g \major
             \FluteI \FluteII \FluteIII \FluteIV \FluteV \bar "||"
         }
        % \new Staff{
        %         \set Staff.instrumentName = \markup {Old Cl.B}
        %         \transpose bes c'{
        %                 \clef treble \time 4/4 \key g \major
        %                 \ClarinetI \ClarinetII \ClarinetIII \ClarinetIV \ClarinetV \ClarinetVI
        %         }
        % }
>>
<<
         \new ChordNames{\transpose c c{
           \ChordsV \ChordsVI
           \HRiffCoda
         }}
        % \new Staff{
        %     \set Staff.instrumentName = \markup {Flute}
        %     \clef treble \time 4/4 \key g \major
        %     \FluteI \FluteII \FluteIII \FluteIV \FluteV \FluteVI
        % }
        \new Staff{
                \set Staff.instrumentName = \markup {"Clarinet B"}
                \transpose bes c'{
                        \clef treble \time 4/4 \key g \major
                        \ClarinetV \ClarinetVI
                }
                \break
                \RiffCoda
        }
>>


