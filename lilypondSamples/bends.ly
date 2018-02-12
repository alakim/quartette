\version "2.12.2"

\header{
  title="Guitar Bends Sample"
}

% функция для обозначения начальной ноты бенда (маленькая нота без штиля)
bendStart =
#(define-music-function (parser location noteA noteB) (ly:music? ly:music?)
    #{
        \override Staff.Stem #'transparent = ##t
        \appoggiatura{\stemDown \slurUp $noteA } 
        \revert Staff.Stem #'transparent
        $noteB
    #})


% вместо символа бенда используем похожий символ артикуляции "lheel"
% для обозначения "прямой ноты" используем артикуляцию "tenuto"

% более изощренный способ отрисовки символа бенда:

#(define-markup-command (bnd layout props)()
	"Draw a bend sign"
	(interpret-markup layout props
		(markup #:rotate -90 #:halign -1.0 #:bold ")")))

% еще более изощренный способ для упрощения разметки
bndS = \markup{ \rotate #-90 \halign #-1.0 \normal-text \bold \fontsize #1 \magnify #0.9")"}
bendSym = #(make-dynamic-script bndS)

% совсем изощренный, но наиболее корректный с точки зрения программирования способ:

BendSymII = #(let ((m (make-music
                  'TextScriptEvent
                  'direction
                  1
                  'text
                  (markup
                    #:line
                    (#:rotate
                     -90
                     (#:halign
                      -1.0
                      (#:normal-text
                       (#:bold (#:fontsize 1 (#:magnify 0.9 ")"))))))))))
       m)

GuitarII = \relative c''{
    \partial 4 g16 (f g) bes |
	
	\mark \markup \circle "0"
	% самый примитивный способ:
    \bendStart c d4.^\lheel
    d8^\lheel \glissando (c2^\tenuto) |
    bes2. r4 |
	
	\mark \markup \circle "1"
	% красивая отрисовка, не удобная разметка:
	\bendStart c d4.^\markup \bnd 
	c8~c2^\tenuto |
	
	\mark \markup \circle "2"
	% наиболее удобный способ:
	\bendStart c8 d4.^\bendSym 
	c8~c2^\tenuto |
	
	\mark \markup \circle "3"
	% наиболее корректный способ:
	\bendStart c8 d4.^\BendSymII 
	c8~c2^\tenuto |
}



<<
  \new Staff{
    \clef treble \time 4/4 \key c \major
    \GuitarII
  }
>>
