
\header {
	title = "Теплынь"
	composer = "Перьи Отметины"
}

\paper {
  #(set-paper-size "a4")
  bottom-margin = 20\mm
}


\version "2.10.33"

ChordsA = \chordmode{
  % пахнет талым
  c1 | r1 | g1 | c | r | g | d | r | e:m | r |
  % в книжке...
  c1 | r | g2 d | e1:m | 
  % так много...
  c1 | b:m |e:m | r |
  % они берегут
  c1 | d | g2 d |e:m d | c1 | r | g2 d |
  % solo
  e2:m d | c1 | r | g | r |
  
}
LyricsA = \lyricmode{
   ""4 Пах-8 нет та- лым4 так8 | слад-4 ко2. | _1 |
   ""2. доб-8 ро- |та2. "в теп-"8 лом |
   вет-8 ре ""2 и4 | ок-8 нах4. ""2 | ""4. на8 чет- верть4 от-8 | кры-8 тых4. ""2 | ""1 |
   
   ""4 "в книж-"8 ке жиз- ни4 на8 | дет-8 стве4. ""2 |
   ""4. ос-8 та- лась4 зак-8 | лад-8 ка4. ""2 |
   ""4. так8 мно-8 го4 се-8 | кунд4. "в по-"16 ло- ви-8 ну4 за8 | бы-8 тых4. ""2 | ""1 |
   
   ""4. о-8 ни8 бе-4 ре-8 | гут8 наш4 наз-8 на-8 че-4 ный8 | час2 ти-8 хий и4 |
   свет-4 лый е-8 ле за-4 | мет-4 ный ""2 |
   е-8 ле4 за8  мет-8 ный4 для8 | глаз2 ""2 |
   ""1 | ""1 | ""1 | ""1 | ""1 | 
}
VoiceA = \relative c''{
    \override NoteHead #'style = #'cross
    r4 c8 c c c4 c8 |c8 (c) c2. | r1 |
    r2. c8 c | c2. c8 c |
    c8 c r2 r8 c8 | c8 c4. r2 | r4. c8 c c4 c8 | c8 c4. r2 | r1 |
    
    r4 c8 c c c4 c8 | c8 c4. r2 |
    r4. c8 c c4 c8 | c8 c4. r2 |
    r4. c8 c c4 c8 | c4. c16 c c8 c4 c8 | c8 c4. r2 | r1 |
    
    r4. c8 c c4 c8 | c8 c4 c8 c c4 c8 | c2 c8 c c4 |
    c4 c c8 c c4 | c4 c r2 |
    c8 c4 c8  c8 c4 c8 | c2  r2 |
    r1 |r1 |r1 |r1 |r1 |
    \revert NoteHead #'style
}
FluteA = {
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  \relative c'' {
    r1 | g8 r b2 d8 e | \acciaccatura {d16 [e]} d2 g, | a4. a8 a b4 d8 | 
    e2 g,2~ | g1~ | g2 r | r1 |
    b2 d8 b a4 | g2 \acciaccatura e'16 d8 b a4 | g2 r | g2 c8 b4 a8 |
    g2 
  }
  \relative c''{
    % 01:46
    d8^solo \acciaccatura{c16 [d]} c8 b a  | g4 e  d'8 c8 b a | g4. e8~e2 |
    c'2 r | r1 | r1 |
  }
}
ClarinetA = {
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | 
  \relative c''{ r4. g8 g a b4 | g2 r | }
  r1 |
}

ChordsB = \chordmode{
  % в уюте 
  g1 | d | e:m | c | r |
  % уходит
  d | c | d1 | a | r |
  % никак не заметить
  c1 | d | e2:m  d | c1 |
  % цепочка секунд
  c1  | d | e:m |r |
  % они берегут
  c1 | d | g2 d | e:m d | c1 | c | g |
}
LyricsB = \lyricmode{
  % 02:01
  ""4. "в у-"8 ю- те4 не-8 | мод-8 ных4 квар-8 тир2 | мяг-8 ко4 ду-8 ше2 | ""1 |
  ""2 что-8 то4 у-8 | хо-4 дит4 _2 | _2 что-8 то4 у-8 | хо-8 дит4. что-8 то4 у-8 |
  шло8 у- же2 _4 | _1 |
  _4. ни-8 как не4 за-8 | пом-8 нить4 ни-8 как4. ни16 пой- | мать4. хо-16 тя бы-8 ло4 сто8 |
  раз2 _2 | _4. це-8 поч- ка4 се-8 | кунд8 на4 две8 тре-8 ти4 за8 |бы-8 тых4. _2 | _1 |
  _4. о8 ни бе-4 ре-8 | гут8 наш4 наз-8 на- чен-4 ный8 | час2 ти-8 хий и4 |
  свет-4 лый4 е-8 ле за-4 | мет-4 ный4 _2 |
  е-8 ле4 за-8 мет- ный4 для8 | глаз2 _2 |
}
VoiceB = \relative c''{
  \override NoteHead #'style = #'cross
  r4. c8 c c4 c8 | c8 c4 c8 c2 | c8 c4 c8 c2 | r1 |
  r2 c8 c4 c8 | c4 c4 r2 | r2 c8 c4 c8 | c8 c4. c8 c4 c8 |
  c8 c c2 r4 | r1 |
  r4. c8 c c4 c8 | c8 c4 c8 c4. c16 c | c4. c16 c c8 c4 c8 |
  c2 r2 | r4.  c8 c c4 c8 | c8 c4 c8 c8 c4 c8 | c8 c4. r2 | r1 |
  r4. c8 c c4 c8 | c8 c4 c8 c8 c4 c8 | c2 c8 c c4 |
  c4 c c8 c c4 | c4 c r2 |
  c8 c4 c8 c c4 c8 | c2 r2 |
  \revert NoteHead #'style
}
FluteB = {
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 |
}
ClarinetB = {
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  \relative c'''{
    r1 | g8 r4 e4. d4 | c2 r | r1 | 
    r1 | r1 | r1 | r1 | 
    g8 fis g2 r4 | r2 e8 r fis r | g2 r  | r1 | 
  }
  r1 | r1 | r1 | r1 | 
  \relative c' {r2 d4 b8 a |}
}

ChordsSoloI = \chordmode{
  r1 |r1 |r1 |r1 |
  r1 |r1 |r1 |r1 |
  r1 |r1 |r1 |r1 |
  r1 |r1 |r1 |r1 |
  r1 |
}
LyricsSoloI = \lyricmode{
  _1 | _1 | _1 | _1 | 
  _1 | _1 | _1 | _1 | 
  _1 | _1 | _1 | _1 | 
  _1 | _1 | _1 | _1 | 
  _1 | 
}
VoiceSoloI = \relative c'' {
  % 03:04 
  r1 | r1 | r1 | r1 | 
  % 03:15
  r1 | r1 | r1 | r1 | 
  % 03:24
  r1 | r1 | r1 | r1 | 
  % 03:34
  r1 | r1 | r1 | r1 | 
  % 03:44
  r1 |
 
}
FluteSoloI = {
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 |
}
ClarinetSoloI = \relative c'{
  g4 a8 b d r a b | g4. b2 g'8~| g4. fis4. d4 | g4 r2. | 
  r1 | r1 | r1 | r1 | 
  r1 | r2 r8 g-. a-. b-.  | c2. r8 b16 a | b2 r8 d c b | 
  g2 r | f4. g8~g2 | a8 g a c d4. c16 b | c2. r8 d16 c | 
  d4. b8~b2 |
}

ChordsC = \chordmode{
  % когда что-то 
  c1 | d | b:m | e:m |
  % когда кто-то 
  b1:m | c |c:m|e:m|
  % но как-то не пусто
  c1 | d|g2 d |c1 | r |
  % и может, Бог даст
  g1 | d | e:m | c |r | r  | d | g2 d |
  % светлый
  e:m d | c1 | r | g |
}
LyricsC = \lyricmode{
  _4 ког-8 да что- то4 у-8 |хо-4 дит4 _2 | 
  _4. ста-8 но- вит-4 ся8 | груст-8 но4. _2 | 
  _4 ког-8 да кто- то4 у-8 | хо-4 дит4 _2 |
  _4. ста-8 но- вим-4 ся8 | стар-8 ше4. _2 |
  
  _4. но8 как- то4 не8 | пус-8 то4 и8 вро- де4 не8 |
  страш-8 но4 по-8 ка не4 про8 | нас4 _2. | _1 |
  
  _4. и8 мо-8 жет4 Бог8 | даст4 звон8 пас- халь- ный4 пробь-8 |
  ет8 лед4 зи-8 мы4 вот8 и | мы4 _2. | _1 |  
  _4 мы8 вдох- нем та-4 лый8 | ве-8 тер4 е-8 ще о- дин4 | раз4 _ ти-8 хий и4 |
  
  свет-4 лый4 е-8 ле за-4 | мет-4 ный4 _2 |
  е-8 ле4 за-8 мет- ный4 для8 | глаз2 _2 |

  
}
VoiceC = \relative c''{
  % 03:47
  \override NoteHead #'style = #'cross
  r4 c8 c c c4 c8 | c4 c4 r2 |
  r4. c8 c c4 c8 | c8 c4. r2 |
  r4 c8 c c c4 c8 | c4 c4 r2 |
  r4. c8 c c4 c8 | c8 c4. r2 |
  
  r4. c8 c c4 c8 | c8 c4 c8 c c4 c8|
  c8 c4 c8 c c4 c8 | c4 r2. | r1 |
  
  r4. c8 c c4 c8 | c4 c8 c c c4 c8 |
  c8 c4 c8 c4 c8 c | c4 r2. | r1 |
  r4 c8 c c c4 c8 | c8 c4 c8 c c c4 | c4 r c8 c c4 |
  
  c4 c c8 c c4 | c4 c r2 |
  c8 c4 c8 c c4 c8 | c2 r2 |
  % 04:52
  
  \revert NoteHead #'style
}
FluteC={
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | 
}
ClarinetC={
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  \relative c'{
    r2 r8 d16 d d8 e  | fis2 r8 e16 e e8 fis | g2 r | r1 | 
    r1 | r1 | r1 | r1 | 
    r2 d'4. b16 a | 
  }
}

LyricsSoloII = \lyricmode{
  _1 | _1 | _1 | _1 | 
  _1 | _1 | _1 | _1 | 
  _1 | _1 | _1 | _1 | 
}
VoiceSoloII = \relative c''{
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
}
FluteSoloII={
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
}
ClarinetSoloII=\relative c''{
  g2 d'8 b a4 |g4. e16 e e2 | r2 g8 a b4  | g2 d'8 b a4 | 
  g2 g'4. fis16 fis | g2 r | r1 | r1 | 
  r1 | r1 | r1 | r1 | 
}




<<
	\new ChordNames{
		\ChordsA \ChordsB \ChordsSoloI \ChordsC
	}
        \new Lyrics{
            \LyricsA \LyricsB \LyricsSoloI \LyricsC \LyricsSoloII
         }

        \new Staff{
          \set Staff.instrumentName = \markup {Voice}
          \clef treble \time 4/4 \key g \major
          \VoiceA \VoiceB \VoiceSoloI \VoiceC \VoiceSoloII
        }
        \new Staff{
          \set Staff.instrumentName = \markup {Flute}
          \clef treble \time 4/4 \key g \major
          \FluteA \FluteB \FluteSoloI \FluteC \FluteSoloII
        }
        \new Staff{
          \set Staff.instrumentName = \markup {Clarinet}
          \clef treble \time 4/4 \key g \major
          \ClarinetA \ClarinetB \ClarinetSoloI \ClarinetC \ClarinetSoloII
        }
                
        

>>


