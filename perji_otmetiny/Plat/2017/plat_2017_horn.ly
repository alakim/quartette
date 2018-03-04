\version "2.16.2"

\header {
  title = "Новгородский Плат"
  composer = "гр. Перьи Отметины"
  subtitle = "партия флюгельгорна"
}

FlhIntro = {
  \mark Intro
  \improvisationOn
  b'1^"ad lib." | b'1 | b'1 | b'1|
  \improvisationOff
}

FlhI = { % Основной рифф
  \mark "Bridge"
  \relative c'{ \bar ".|:"
    fis4.^"(переход после флейтового соло)" gis8~gis2 | ais4. b8~b2 | 
    fis4. gis8~gis2 | b8 ais gis fis8~ fis2 \bar ":|." 
  }
}

FlhII = \relative c'{
  fis2.^"плат.." gis8 ais | gis8^"заново" fis8 fis4 fis8 ais4 fis8 | gis8 fis gis ais b ais4 gis8 | fis1 \bar "||"
}

%{FlhIII = {
  \relative c''{
    r2. r8 ais8 | cis2.^"лети"~cis8 b | gis1 \bar "||"
    
  }
}%}

FlhIV = {
  \relative c'{
    fis2 gis^"за Валдаем" | ais4. b8~b2 | fis8 dis cis dis r2 \bar "||"
  }
  \relative c'{
    fis4.^"сталью" gis2 ais8^"устали" | cis4 b8 ais8~ais2 \bar "||"
  }
}

FlhV = \relative c'{
  fis2^"Велика" ais8^"далеко" gis fis4 | fis2 ais8 gis ais cis~ | cis2.^"лети" ~cis8 b | gis1 \bar "||"
}

FlhVI = \relative c'{
  r2. fis4^"ставя" | a4^"перьи" fis8 e cis e fis4 | c'8^"с края" b a fis fis4 e16 fis8. | fis1^"ad lib." \bar "||"
}


<<
  \new Staff{
    \set Staff.instrumentName="Flugelhorn"
    \clef treble
    \time 4/4
    \key fis \major
    \FlhIntro
    \FlhI
    \FlhII
    %\FlhIII
    \FlhIV
    \FlhV
    \FlhVI
  }
>>