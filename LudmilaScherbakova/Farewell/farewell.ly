\version "2.16.2"

\header {
  title = "Напутствие"
  composer = "Л.Щербакова"
}

% Аккорды к Напутствию: 
% Вступление:Em D G D Em Hm Em H7 Em D G D Em Hm Em
% Припев: G D Am Em D G D C D Em

HIntro = \chordmode {
  e4.:m d | g2. | e4.:m d | e2.:m |
  g4. d | g2. | a4.:m7 b:7 | e2.:m |
}
Intro = {
  \mark Intro
  \relative c'{e4 b'8 a8. g16 fis8 | g4 b8 a8. g16 fis8 | e4 g8 fis8. e16 d8 | e2. |}
  % s2. s2. s2. s2. 
  \break 
  %s2. s2. s2. s2. 
  \relative c'{e4 b'8 a8. b16 a8 | b4 b8 a8 a16 g fis8 | e4 g8 fis8. e16 d8 | e2. |}
}
LIntro = \lyricmode {
  _2. _2. _2. _2. 
  _2. _2. _2. _2. 
}

HVerse = \chordmode {
  e4.:m d | e2.:m |
  g4. d | b:7 e:m |
  g4. d | g2. |
  a4.:m7 b:7 | e2.:m |
}
Verse = {
  \mark Verse
  s2. s2. 
  s2. s2. \break
  s2. s2. 
  s2. s2. 
}
LVerse = \lyricmode {
 %_2 Он8 од- |
 "(од-)нажды"4. "позвал к себе"4. | сына4.  
 прово- |жая4. его | "в дальний" путь8
 "и ска-"4 | зал8 если4 хочешь4 ты8 | быть4. господином4
 ты16 се- |бе4. господином | будь2. |
}

HRefrain = \chordmode {
  g2. d 
  a2.:m e4.:m d 
  g2. d
  c4. b:7 e2.:m
}
Refrain = {
  \mark Refrain
  s2. s2. s2. s2. \break
  s2. s2. s2. s2. 
}
LRefrain = \lyricmode {
  "(и-)щи"4 же8 мудрости4. | как8 ищут4 золота4
  как8 | жаждут4 воды4 и8 как | ищут4 хлеба4
  ды-4 | ши4 же мудростью | как8 свежим4 воздухом
  как8 | птица4. дышит | небом2. |
  
}

<<
  \new ChordNames{
    \HIntro
    \HVerse
    \HRefrain
  }
  \new Staff{
    \clef treble
    \time 6/8 \key e \minor
    \Intro \bar "||" \break
    \Verse \bar "||" \break
    \Refrain
  }
  \new Lyrics{
    \LIntro
    \LVerse
    \LRefrain
  }
>>