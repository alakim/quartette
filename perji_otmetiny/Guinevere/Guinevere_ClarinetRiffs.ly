\version "2.12.2"

\header{
	title="Гиневер"
	composer="Андрей (Дюша) Романов"
        subsubtitle = "Clarinet"
}
\paper {
  #(set-paper-size "a4")
  between-system-padding = #1.5
  bottom-margin = 15\mm
}
ClarinetA = \relative c''{\mark \markup{\box \bold a}\repeat volta 2{bes4  a bes | c a bes | c a c | bes a g |}}
ClarinetB = \relative c'{\mark \markup{\box \bold b}f2.  |c2. | g' | fis \bar"||"}
ClarinetBI = \relative c'{\mark \markup{\box \bold b'}f2.  | bes4 a f |g2. | fis \bar"||" }
ClarinetC = \relative c''{\mark \markup{\box \bold c}g2.  | a | a | g4 r g | g4 r g | g2. \bar"||"}
%ClarinetDI = \relative c'{g2. | a | a | g4 r g |} %d'=a'
ClarinetAI = \relative c''{\mark \markup{\box \bold a'}\repeat volta 2 {bes2. | c | a2 c4 | bes2. |}}
ClarinetAII = \relative c''{\mark \markup{\box \bold a''}\repeat volta 2 {g2  a8 bes | a2. | f2 d4 |g2 r4 |}}
ClarinetCI = \relative c''{\mark \markup{\box \bold c'}g2.  | a | a | bes2. | bes | <b d> \bar "|."}

<<
	\new Staff{\transpose bes c'{
		\set Staff.instrumentName="Clarinet"
		\clef treble \time 3/4 \key g \minor
		\ClarinetA 
                \ClarinetB 
                \ClarinetC \break
                \ClarinetAI
                \ClarinetBI 
                \ClarinetC \break
                \ClarinetAII
                \ClarinetBI
                \ClarinetCI
	}}
>>

\markup{
  \column{
    \line{a a b c}
    \line{a' a' b'  c}
    \line{a'' a'' b' c'}
  }
}