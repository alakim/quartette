\version "2.12.2"

\header{
	title="Song for Guitar"
	composer = "alakim, 1995г."
}
lineBreak = {\break}

harmVoice = % Форматирование для второго голоса, играющего перебор
#(define-music-function (parser location mus) (ly:music?)
    #{
        \teeny 
		\override Stem #'length-fraction = #0.3
		\override Stem #'font-size = #0.1
        $mus
    #})

Song = {
	\partial 8 {a'8|}
	<<	{\relative c''{d4. e | f}} 
		\\{\relative c''{\harmVoice  d8 [a d] cis [a cis] | f8 d a }} 
		\\{\stemDown d'4. a | d'2.} >>
}

<<
	\new Staff{
		\clef "treble_8" \key d \minor \time 6/8
		\set Staff.instrumentName="Guitar"
		\transpose c' c{
			\Song
		}
	}
>>

