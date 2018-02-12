\version "2.12.2"

\header{
	title="Пример описания свободной партии"
}

harmOn = {
	\override NoteHead #'duration-log = #4
	\override NoteHead #'font-size = #-2
}

harmOff = {
	\revert NoteHead #'duration-log
	\revert NoteHead #'font-size
}

harmMel =
#(define-music-function
     (parser location hrm mel)
     (ly:music? ly:music?)
   #{
		<<{ 
			\once \override NoteHead #'duration-log = #4
			\once \override NoteHead #'font-size = #-2
			$hrm 
		}\\{ $mel }>>
   #})

PartI = \relative c'{
	e8 fis gis4 e8 fis4 gis8 |a2 r |
	\cadenzaOn
	<<{
		<e gis b\harmonic>1^"я спо-"
		\bar "|"
		\override NoteHead #'style = #'diamond
		<e a cis>1^"ю..."
		\revert NoteHead #'style
		<e gis \tweak #'color #red b>
		<e \tweak #'duration-log #4 gis cis>
	}\\{gis1 a b cis}>>
	\bar "|"
	\cadenzaOff
	e8 fis gis4 e8 fis gis4 | e8 fis gis4 e8 fis gis4 | 
	
	\cadenzaOn
		\override NoteHead #'font-size = #-2
		<e, \tweak #'font-size  #1 a cis cis>1
		<e gis b>
		\bar "|"
		\revert NoteHead #'font-size
	\cadenzaOff
	e8 fis gis4 e8 fis gis4 | e8 fis gis4 e8 fis gis4 | 
	\cadenzaOn
		\override NoteHead #'duration-log = #4
		<e \tweak #'duration-log #1 a cis>1
		<e gis b>
		\bar "|"
		\revert NoteHead #'duration-log
	\cadenzaOff
	\break
	e8 fis gis4 e8 fis gis4 | e8 fis gis4 e8 fis gis4 | 
	\cadenzaOn
		\harmOn
			<e \tweak #'duration-log #1 gis b>1
		\harmOff
		%<\harmOn e \harmOff a \harmOn cis \harmOff>1
		%<e \harm On gis b \harmOff>
		\bar "|"
		
		\once \override Stem #'transparent = ##t
		<e gis b>4
		
		
		<e  \tweak #'duration-log #4 gis b>1
		<e gis\harmonic b>1
		<a cis e\harmonic fis d>1
		
		
		\bar "|"
		<e\harmonic fis\harmonic gis b\harmonic cis\harmonic>1
		
		\break
		\bar "|"
		\cadenzaOff
		e8 fis gis4 e8 fis gis4 | e8 fis gis4 e8 fis gis4 | 
		\cadenzaOn
		s^"лучший вариант"
		<<{\harmOn<e fis gis b cis>1\harmOff}\\{gis1}>>
		<<{\harmOn <a cis d e fis> \harmOff}\\{cis}>>
		
		\bar "|"
		s1^"Еще лучше"
		\harmMel <e gis b cis>1 gis1
		\harmMel <a, cis d e a>1 d
	\cadenzaOff
}

<<
	\new Staff{
		\clef treble \time 4/4 \key e \major
		\PartI
	}
>>

