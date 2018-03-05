\version "2.12.2"

\header{       % заголовок партитуры
  title = "Земле Русская"
  composer = "Напев Киево-Печерской лавры"
}

#(set-global-staff-size 17)  % устанавливаем размер нотного стана, чтобы партитура уместилась на требуемом числе страниц

\paper {       % формат страницы
  #(set-paper-size "letter")
  bottom-margin = 20\mm  % устанавливаем нижнее поле, чтобы струйный принтер не "съедал" последнюю строчку
}

% Текст песнопения с разбиением на слоги. Цифры обозначают длительность соответствующих нот. 
% Символ "_" обозначает паузу соответствующей длительности.
Text = \lyricmode{
  Зем-2 ле Рус-1 _4 ска- я,2  гра-2 де4 свя-4 тый,1 _1 _4
  у-4 кра- шай свой Дом1. _1 "в нем"4 же Бо- жест- вен- ный2 ве-4 лий сонм
  Свя-4 тых про- сла-2 _ _ ви1  Цер-2. ковь4 Рус-1 _4 ска- я2 
  кра-4 суй-1 ся4 и ли- куй:1   се2 бо4 ча-1 да2 Тво-2 я 
  Пре-4 сто- лу Вла- дыч-2 ню во4 сла- ве пред- сто- ят ра-1 ду-4 ю- ще- ся1
  Со-2 бо-4 ре Свя- тых2 рус-1 ских,2    пол-4 че Бо- жест-2 _1 вен-4 ный2
  мо-4 ли- те- ся ко Гос-2 _1 _4. по-8 ду2    о4 зем- ном о-4 те- чест- ве ва-2 шем2 
  и4 о по- чи- та- ю- щих вас лю- бо-1 ви-2 ю1 
  
  Но-2. вый4 до- ме Ев- фра-1 _2 фов,2    у-4 де-2 ле4 из- бран-2 _4 _2 _2 ный,2
  Русь2 Свя-4 та-2 _2 _1  я,2   хра-4 ни ве- ру Пра- во- слав-   ну-4 ю,2 
  "в ней"4 же те- бе ут- верж- де-1 ни-2 "е!"1 
}

% Далее записываем нотные партии голосов

Soprano = { % партия сопрано
  % Каждый фрагмент партитуры оформляем в отдельном блоке relative, 
  % чтобы возможное изменение одной ноты не влияло на целую партитуру.
  % В первой партии расставляем знаки разбиения на "такты". Для этого используем не простую вертикальную черту, 
  % а обозначение \bar "|". В противном случае будет выдаваться ошибка разбиения на такты (даже внутри блока "безразмерной" музыки).
  
  \cadenzaOn % начало блока без музыкального размера
  \relative c''{ g4 (a8 b) a2 a4 (g8 [fis] g a b c  a4) gis a2 \bar "|"  b2 b4 a8 b c4(b a gis8 a b c  a4 gis! a2 ) \bar "|" }
  \relative c''{ b4 b b a8 b c2 (a8[c] b a g2  g8 [a] b a g2) \bar "|" a4 a4 a4 g  b a2 g4 g  g4  \bar "|"}
  \relative c''{ g4 g g8(a) b2 ( a g )  fis1\fermata \bar "|"  g4 (a8 b a4) a4 a (g8[fis] g a b c  a4) gis a2 \bar "|"}
  \relative c''{ b4 b (a8 b c4 b) a4 gis8[a] b c  a4 (gis a2) \bar "|" b2  a8(b) c2 (a8 [c] b a ) gis2 gis8([a] b a) gis2  \bar "|"}
  \relative c''{ a4 a a a  g(b) a2 \bar "|"  g4 g g g g g8(a) b2 (a) g4 g g  fis1\fermata \bar "|"}
  \relative c''{ g4 (a8 b) a4 a a a( g8 [fis]) g8(a b c  a4 ) gis4 a2 \bar "|"  b4 b a8(b) c4 ( b a gis8 a b c  a4) gis4 a2 \bar "|"}
  \relative c''{b4 b  b b a8(b) c2( a8[c] b a gis2 gis8 [a b] ) a8 gis2  \bar "|"  a4 a a  a a a a  g (b) a2 \bar "|"}
  \relative c''{ g4 g g g g g g g g8 (a) b2(a) g  fis1 \bar "|"}
  
  \relative c'' { g4(a8 b a4) a4 a a a a(g8 [fis] g a b c  a4 gis) a2 \bar "|"  b4 b2 b4 a8(b) c4( b a gis8 a b c    a4 gis) a2 \bar "|"}
  \relative c''{b2\f\fermata  a8(b) c2 ( a8[c] b a gis2 gis8[a] b a) gis2  \bar "|"  a4 a a a a a  g  b4 a2 \bar "|"}
  \relative c''{ g4 g g g g g8(a) b2( a) g  fis1\fermata \bar "|."}
  \cadenzaOff % конец блока без музыкального размера
}

% в остальных партиях такты можно не расставлять. Записываем просто последовательности нот.
Alto = { 
  \relative c'{d2 d d (g e4) e e2    g2 g4 e8 g g2 ( e4 e2 e1 )  }
  \relative c''{g4 g g e8 g g2 ( e1~e1 )   d4 d d d d d2 d4 d d  }
  \relative c'{d4 d d g2 ( fis d ) d1   d2. d4 d2 ( g e4) e e2  }
  \relative c'' {g4 g( e8 g g2) e4 e e e1   g2  e8(g) g2 ( e ) e2 e e  }
  \relative c'{d4 d d d d2 d   d4 d d d d d g2 ( fis) d4 d d d1 }
  \relative c'{d2 d4 d d d2 g2 ( e ) e    g4 g e8(g) g2 ( e1)  e4 e2 }
  \relative c''{g4 g g g e8(g) g2 (e1 e4.) e8 e2   d4 d d  d d d d d2 d }
  \relative c'{d4 d d d d d d d d g2(fis) d d1 }
  
  \relative c'{d2. d4 d d d d2 ( g d ) d   g4 g2 g4 e8(g) g2 ( e4 e2    e2 ) e2}
  \relative c''{g2 e8(g) g2( e e1) e2   d4 d d d d d d    d4 d2 }
  \relative c'{d4 d d d d d g2(fis) d d1}
}

Tenor = {
  \relative c'{b4 (c8 d) c2 c4 (b8 [a] b c d e c4) b c2   d2 d4 c8 d e4 (d4 c b8 c d e c4 b c2)}
  \relative c'{d4 d d c8 d e2 ( c8 [e] d c b2 b8 [c] d c b2)   c4 c c b d c2 b4 b b }
  \relative c'{b4 b b8 c d2 ( c b) a1   b4 ( c8 d c4 ) c4 c (b8[a] b c d e c4 ) b c2 }
  \relative c'{d4 d(c8 d e4 d) c4  b8[c] d e c4 ( b c2 )   d2 c8 (d) e2( c8 [e] d c) b2 b8([c] d c) b2}
  \relative c'{c4 c c c b (d) c2   b4 b b b b b8(c) d2(c) b4 b b a1 }
  \relative c'{b4 ( c8 d) c4 c c c ( b8 [a]) b8 ( c d e c4 b) c2   d4 d c8(d) e4 ( d c b8 c d e c4 ) b4 c2 }
  \relative c'{d4 d d d c8(d) e2 ( c8[e] d c b2 b8[c d]) c8 b2   c4 c c   c c c c b(d) c2 }
  \relative c'{b4 b b b b b b b b8 (c) d2(c) b a1}
  
  \relative c' {b4 (c8 d c4) c4 c c c c (b8[a] b c d e c4 b ) c2   d4 d2 d4 c8(d) e4 ( d c b8 c d e   c4 b) c2}
  \relative c'{d2 c8 (d) e2 (c8[e] d c b2 b8[c] d c) b2    c4 c c c c c b   d4 c2}
  \relative c'{b4 b b b b b8(c) d2(c) b a1 }
}

Bass = {
  \relative c'{g2 d d (g a4 ) e4 <a a,>2   g2 g4 a8 [g] c,8 ( e g4 a4  e2 <a a,>4 e4 <a a,>2 )}
  \relative c'{g4 g g a8 g c,2 (e1~e1)   d4 d d d d d2 <g g,>4 <g g,>4 <g g,>4 }
  \relative c'{<g g,>4 <g g,>4 d4 g2 ( d g,4 b ) d1\fermata   g2 (d4) d4 d2 ( g a4) e4 <a a,>2  }
  \relative c'{g4 g( a8 [g] c, e g4) a4 e e a (e a2)   g2 a8 (g) c,2(e) e2 e e  }
  \relative c{d4 d d d d2 d  <g g,>4 <g g,>4 <g g,>4 <g g,>4 <g g,>4  d4 g2 (d) g4 g <b b,>4 d,1\fermata}
  \relative c'{g2 d4 d d d2 g2 (a4 e ) a2   g4 g a8( [g]) c,8( e g4 a e2 a4 ) e4 <a a,>2}
  \relative c'{g4 g g g a8(g) c,2 ( e1 e4.) e8 e2   d4 d d   d d d d d2 d }
  \relative c'{g4 g g g g g g g <g d>4 g2 (d) g4(b) d,1 }
  
  \relative c'{g2 (d4) d d d d d2 ( g a4 e ) <a a,>2   g4 g2 g4 a8(g) c,8([e] g4 a e2    a4 e)  <a a,>2}
  \relative c'{g2\fermata a8(g) c,2( e e1 ) e2   d4 d d d d d d   d4 d2 }
  \relative c'{g4 g g g g d g2(d) g4(b) d,1\fermata}
}

% Описание расположения партий на нотных станах
\score {
	<<
	  \new StaffGroup{<<     % группа станов
		\new Staff{          % нотный стан
		  #(set-accidental-style 'forget)              % режим отображения знаков альтерации "без излишних напоминаний"
		  \clef treble           % скрипичный ключ
		  \key g \major          % тональность G dur
		  <<{\Soprano}\\{\Alto}>>       % вывод двух голосов на одном нотном стане
		}
		\new Lyrics{\Text}
		\new Staff{ % стан с аналогичными настройками, только ключ басовый
		  #(set-accidental-style 'forget) 
		  \clef bass \key g \major
		  <<{\Tenor}\\{\Bass}>>
		}  
	  >>}
	>>
	\layout {
		\context {
			\Staff 
			\remove "Time_signature_engraver"       % отключаем вывод обозначения музыкального размера
		}
	}
}
