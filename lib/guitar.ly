bendStart =
#(define-music-function (parser location noteA noteB) (ly:music? ly:music?)
	#{
		\override Staff.Stem #'transparent = ##t
		\appoggiatura{ $noteA } 
		\revert Staff.Stem #'transparent
		$noteB
	#})
	
BendSym = #(let ((m (make-music
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