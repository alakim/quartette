\version "2.12.3"

\include "../lib/clarinet.ly"

% Дополнительные (необязательные) настройки модуля clarinet.ly
#(set! clAppAngle -60)
#(set! clAppOffset -0.7)


<<
  \new Staff{
    \clef treble \time 4/4 \key e \major
    \relative c''{
      r4 gis16_\markup \clApp "A/2"
      a_\markup \clApp "AR/2"
      gis_\markup \clApp "A/2" e~ e2 | r1 |
      r4 gis16 a gis e~ e4. r8 |
    }
  }
>>

