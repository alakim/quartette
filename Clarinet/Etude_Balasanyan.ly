 
\version "2.12.2"

\header{
  title="Этюд"
  composer="С. Баласанян"
}

<<
  \new Staff{
    \clef treble \time 6/8 \key d \major \tempo "Allegro moderato"
    \relative c''{
      d4. a | fis8 e fis d4.~ | d8 fis a d fis e | d4.~ cis4 r8 | e4. b | g8 fis g e4.~| \break
      e8 g b e g fis | e8 d e d4 cis8 | d8 fis e d cis d | cis4 r8 b4.~ | b8 e d cis b cis | b4 r8 a4.~| a8 d, e fis g a |\break
      b4. (e,4)r8 | r8 e fis g a b| cis4. fis,4.~|fis8 fis g a b cis | d4. a | fis8 e fis d4. | b'4. fis | \break
      d8 cis d b4.~ | b8 b d fis b a | g8 fis g e4.~ | e8 r b e g fis | e8 d e cis4.~ | cis8 a cis fis a g | \break
      fis8 e fis d4. | g8 fis g e4. | a8 g a fis eis fis | b a b g fis g | cis8 b cis a b cis | \break
      d4. a~ | a8 fis' e d a fis | d4. a4.~ | a8 fis' e d fis a | d8 r r a r r | d8 r r r4. \bar "|."
      
    }
  }
>>