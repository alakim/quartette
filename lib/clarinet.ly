% Модуль для отображения кларнетной аппликатуры

#(define clAppAngle -90)  % угол наклона пометок
#(define clAppOffset -0.6) % смещение пометок относительно нот

#(define-markup-command (clApp layout props text)(markup?)
        "Draw a clarinet applicature"
        (interpret-markup layout props
                (markup
                    #:line
                    (#:rotate
                     clAppAngle
                     (#:halign clAppOffset (#:magnify 0.6 text))))
                  ))
 
