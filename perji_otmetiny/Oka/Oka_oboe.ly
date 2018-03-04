\version "2.16.2"


\header {
  title = "Ока"
  composer = "гр. Перьи Отметины"
  subtitle = "партия гобоя"
}

% Так правильно
Hrm = \chordmode {
  c2 a2:m | g1 |
  c2 a2:m | e1:m |
}

% Так может показаться на фонограмме (гитара не берет полный Am, но бас добавляет A)
%{ 
Hrm = \chordmode {
  c1 | g1 |
  c1 | e1:m |
}
%}

OboeI = {
  \key g \major
  \relative c'{ e2 g4. e8 | b'1 |}
  \relative c'{ e2 g4. e8 | d1 |}
}

Horn = {
  \key a \major
  \relative c''{a4. fis2 a8 | cis2~cis8 b8 a16 b8. | a4. fis2 a8 | e1 \bar ":|."}
}


<<
  \new ChordNames{
    \Hrm
  }
  \new Staff{
    \set Staff.instrumentName="Oboe"
    \clef treble
    \time 4/4
    \OboeI
    \bar ":|."
  }
>>

<<
  \new ChordNames{\transpose bes c{
    \Hrm
  }}
  \new Staff{
     \set Staff.instrumentName="Horn"
     \clef treble
     \time 4/4
     \Horn
  }
>>