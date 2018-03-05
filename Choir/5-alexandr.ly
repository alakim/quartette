\version "2.16.2"

\header {
  title = "Пѣсня 5-го гусарскаго Александрійскаго полка"
}

ignore = \override NoteColumn.ignore-collision = ##t

VerseI = {
  \mark "Tempo di mazurka"
  \autoBeamOff
  \relative c{d8. f16 a2 | g8. d16 f2 | d8. e16 f4 g | f4 f2 |}
  \relative c{f8. a16 c2 | g8. a16 bes2 | a8. g16 f4 cis | e4  d2 |}
  \autoBeamOn
}

ChorusS = {
  \autoBeamOff
  \relative c'{d8. d16 f4. f8 | a8. a16 d2 |}
  \autoBeamOn
}
ChorusA = {
  \autoBeamOff
  \relative c'{d8. d16 d4. d8 | f8. f16 a2 |}
  \autoBeamOn
}
ChorusT = {
  \autoBeamOff
  \relative c{d8. d16 d4. d8 | f8. f16 f2 |}
  \autoBeamOn
}
ChorusB = {
  \autoBeamOff
  \relative c{d8. d16 d4. d8 | d8. d16 d2 |}
  \autoBeamOn
}



<<
  \new Staff{
    \clef bass
    \time 3/4 \key d \minor
    << \ignore
      {\VerseI}\\{
      \VerseI
      \addlyrics{Кто не зналъ, не ви- далъ подъ- ви- говъ за- вѣт- ныхъ, Кто не зналъ, не слы- халъ про гу- саръ без- смерт- ныхъ! }
    }>>
  }
>>


<<
  \new Staff{
    \clef treble
    \time 3/4 \key d \minor
    << \ignore {\ChorusS}\\{
      \ChorusA
      \addlyrics{Марш впе-ред! Тру- ба зо- вет, }
    }>>
  }
  \new Staff{
    \clef bass
    \time 3/4 \key d \minor
    << \ignore
      {\ChorusT}\\{\ChorusB}>>
  }
>>

