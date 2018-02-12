\version "2.12.2"

#(define-markup-command (double-box layout props text) (markup?)
  "Draw a double box around text."
  (interpret-markup layout props
    (markup #:override '(box-padding . 0.4) #:box
            #:override '(box-padding . 0.6) #:box text)))
			
#(define-markup-command (app layout props text) (markup?)
	"Draw clarinet applicature."
	(interpret-markup layout props
		(markup #:rotate -90 #:halign -0.6 #:magnify 0.6 text)))
			
			
#(define-markup-command (bend layout props)()
	"Draw a bend sign"
	(interpret-markup layout props
		(markup #:rotate -90 #:halign -1.0 #:bold ")")))
		
\markup \double-box A

<<
	\new Staff{
		\clef treble \time 4/4 \key c \major
		a4 b c^\markup \double-box 0 d |
		\relative c'{
			c4 c a_\markup{\rotate #-90 \halign #-0.6 \magnify #0.6 "AR/2"}
			c |
			a2_\markup \app "AR/2" b |
		}
		\relative c''{
			d8 d 
			d4^\markup \bend
			d d  |
		}
	}
>>