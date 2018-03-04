\version "2.12.2"
 
\header {
        title = "Яблоневый Спас"
        composer = "Перьи Отметины"
}


HarmonyI = \chordmode{
  d1| s | s | b:m | d |s2 a | g1 | s |
  d1 | s | s | g | e:m | g | s |
}

VoiceI = \relative c'{
  \override NoteHead #'style = #'cross
  r8 d d d d d r4 | r2. r8 d16 d | d2. r4 |
  r16 d16 d d r4 d16 d d d r4 | d8 d r2.|
  d4 r16 d d d d2~|d2 r2 | r1 |
  r8 d d d d d d4 | r2. r16 d d d | d2. r4 |
  d4 r8 d16 d d d d4 
  d8 | d8 d d2 r8 d8 |
  d8 r4. r2 | r1 |
  
  \revert NoteHead #'style
}
LyricsI= \lyricmode{
  _8 Ру- бец ря- би- ны _4 | _2. _8 тро-16 па- | рем2. _4 |
  _16 от-16 дань- я _4 се-16 вер- но- го _4 | ле-8 та _2. |
  спет4 _16 на16 тре- тий глас2| _2 _2 | _1 |
  _8 "в кам-" нях и мхах тай- ги4 | _2. _16 род- ной у- | зор1 |
  там4 _8 за16 хи- би- на- ми4 
  го-8 | ра8 Фа- вор2 _8 a8 |
  здесь8 _4. _2 | _1 |
  
}


HarmonyII = \chordmode{
  d2 a | g1 | s2 g/fis | e1:m | g2 a2 | g1 | s |
}

VoiceII = \relative c'{
  \override NoteHead #'style = #'cross
  d4 d8 d d d d d | d2 r4. 
  d8 | d8 d r8 d16 d d8 d d d | d8 d4. r2 |
  r8 d8 d d d d d d | d1~ | d1 |
  \revert NoteHead #'style
}

LyricsII= \lyricmode{ 
  Пре-4 об-8 ра- жен- ским хру- ста- | лем2 _4. 
  "в си-"8 | янь-8 и _8 тор-16 же- ству-8 ю- ще- го  |све-8 та4. _2 |
  _8 свер- ка- ет Яб- ло- не- вый | Спас1 | _1 |
 }
 
 VoiceIII = \relative c'{
   \override NoteHead #'style = #'cross
   r8 d32 d d d d16 d d8 d d16 d d8 d |
   r16 d d d d d8 d16 d d8 d16 d8 d |
   r16 d d d d d8 d16 d d d8 d16 d8 d16|
   d16 d d8 d16 d d d d d d8 d d |
   
   r8 d32 d d d d16 d d8 d d16 d d8 d |
   r16 d d d  d d d d  d d8 d16 d8 d |
   r16 d16 d d d d d d d d d d d8 d16 d | 
   d16 d d d  d d8 d16 d d d8 d d |
   \revert NoteHead #'style
 }
 
 LyricsIII = \lyricmode{
   _8 о-32 ни32 у- ез- жа-16 ют из8 Пет- ро-16 за- вод-8 ска |
   _16 у них "в кар-" ма- не8 по16 де- сять8 ко-16 лод8 карт |
   _16 на каж- дой кар- те8 три16 но- вых мар-8 шру-16 "та,"8 но16 |
   по- езд до-8 мой16 от- хо- дит че- рез ми-8 ну- ту |
   
   _8 о-32 ни32 у- ез- жа-16 ют из8 Пет- ро-16 за- вод-8 ска |
   _16 ве- щей ва- гон и не- боль- ша- я8 по-16 воз-8 ка |
   _16 бай- дар- "ки," ве- ли- "ки," па- рад- ны- е тель- няш-8 ки16 и |
   Ла-16 до- "га с" О-  не- го8 на16 дне16 од- ной8 фляж- ки |
 }
 
  
 VoiceIV = \relative c'{
   \override NoteHead #'style = #'cross
   r8 d8 d d d d4 d16 d | d2 r2 |
   r4 r16 d d d d4 r16 d d d |d8 d4. r2 |
   r4 d16 d d d  d2~ | d2 r2 |
   r8 d d d d d d4 | r2. r16 d16 d d | 
   d1 |
   d4. d16 d d8 d d d | d16 d d8~d2 r4 |
   r2. r8 d | d16 d8. d8 d d d d d |  d1 |
   r16 d d d d8 d d d d d | d4 d2. |
   r4 d16 d d8 d d d d | d1~ | d1 |
   \revert NoteHead #'style
 }
 
 LyricsIV = \lyricmode{
   _8 "В раз-" бег быс- три- ны4 бо-16 си- | ком1 |
   _4 _16 мель- кань- ем спиц4 _16 "в пы-" ли о- | бо-8 чен4. _2 |
   _4 Свя-16 за- ны сле- ды2 | _1 |
   _8 На тем- ный тем- ный день4 | _2. _16 при-16 бе- ре |
   гу1 |
   Солн-4. це-16 се- дя-8 ще- е на |  бе-16 ре- гу8 _2. |
   _2. _8 на | теп-16 лом8. кам-8 не  ря-8 дом "с кос-" тер- |   ком1 |
   _16 и ко- лы- бель-8 ну- ю о- неж- ской | но-4 чи2. |
   _4 ды-16 ха- ни-8 е боль- шой во- | ды1 | _1 |
 }

 %<<
   %\new ChordNames{
   % \transpose d e {
   %   \HarmonyI \HarmonyII 
   % }
 %}
%   \new Staff{
%     \set Staff.instrumentName="Voice"
%     \transpose d e{
%       \clef treble \time 4/4 \key d \major
%       %\VoiceI \VoiceII 
%       %\VoiceIII
%       \VoiceIV
%     }
%   }
%   \new Lyrics{
%     %\LyricsI \LyricsII 
%     %\LyricsIII
%     \LyricsIV
%   }
% >>
