% Модуль для записи "свободных" партий

harmMel = % гармония с мелодией
#(define-music-function
     (parser location hrm mel)
     (ly:music? ly:music?)
   #{
                <<{ 
                        \once \override NoteHead #'duration-log = #4
                        \once \override NoteHead #'font-size = #-3
                        $hrm 
                }\\{ $mel }>>
   #})
