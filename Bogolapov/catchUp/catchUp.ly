\version "2.18.2"

\header{
  title="Догоню на перекладных"
  composer="А.Боголапов"
}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

HR = \chordmode{\transpose bes c {b1:m | a |}}
HRiff = {\HR \HR }

HVerse = \chordmode{\transpose bes c {
  b1:m | d | b:m | d | c2 bes | b1:m | b2:m d |e1:7 | e1:7 |
}}

HRefrain = \chordmode {\transpose bes c{
  g1 | b:m | a | g |
}}




Intro = {
  \tag #'Harmony {\HRiff }
  \tag #'Horn {
    \mark "Intro"
    \relative c'' {
        s1 s1 s1 s1
    }
    \bar "||"
  }
}

Verse = {
  \tag #'Harmony {\HVerse }
  \tag #'Horn {
    \mark "Verse"
    \relative c'' {
        \relative c'{r2 r8 e8 fis e | gis2 r8 e8 fis e |}
        \relative c'{r2 r8 e8 fis e | gis4. b4. gis4 } \longBar
        \relative c'{fis8 d4 e4 d8 c d | cis8 cis4 cis8~cis2 |}
        \relative c'{e16 e8 e16 e8 fis4 e8 fis gis |}
        \relative c''{b8 cis4 cis8 ~ cis2 }
          \longBar
        s1
    }
    \bar "||"
  }
}

Refrain = {
  \tag #'Harmony {
    \HRefrain  
    % \HRefrain  
    % \HRefrain  
    % \HRefrain  
    % \chordmode {\transpose bes c{ g1 }}
  }
  \tag #'Horn {
    \mark "Refrain"
    \relative c'' {
        r1 
        \relative c''{r2 cis16 cis cis cis b8 cis}
        r1 
        \relative c'' {r4 cis16 cis cis cis e8 cis b cis}
        
        % s1 s1 s1 s1  \longBar
        % s1 s1 s1 s1  \longBar
        % s1 s1 s1 s1  \longBar
        % s1
    }
    \bar "||"
  }
}

Solo = {
  \tag #'Harmony {\HRiff \HRiff }
  \tag #'Horn {
    \mark "Solo"
    \relative c'' {
        s1 s1 s1 s1  \longBar
        s1 s1 s1 s1
    }
    \bar "||"
  }
}

Music = {
  \Intro \break
  \Verse \break
  \Refrain \break
  \Solo \break
}

<<
  \new ChordNames{
    \keepWithTag #'Harmony \Music
  }
  \new Staff{
    \set Staff.instrumentName="Clarinet"
    \time 4/4
    \clef treble
    \key cis \minor
    \keepWithTag #'Horn \Music
  }
>>

\markup {
  "Форма: Intro V V R Solo V V R Solo"
}