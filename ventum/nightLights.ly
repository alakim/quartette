\version "2.18.2"

\header {
  title = "Ночные огни"
  composer = "гр. Ventum"
}

%{
  2017-10-11 ZOOM0006.MP3
00:08 Intro 4m
00:22      Violin Solo 4m
00:36 (1) Riffs 8m
00:58 (2) violin theme 8m
01:20 (3) Clarinet solo /Ride  3 раза - clarinet /концовка violin
02:08 (1a) Riffs 8m 
02:30 (2a) Clarinet  (Gtr/Vln/Gtr/Clr) -> Clarinet solo


.... (4) Clean Gtr
02:52 End	


  2017-10-18 25_full.MP3
00:02 Intro 4m , Vln 4M
00:29 (1) Riffs 8m
00:52 (2) Violin theme 8m
01:16 (3) Clarinet solo /Ride Violin replays x3
02:02 (1a) Riffs 8m
02:49 "Theme A": Clean gtr solo /hi-hat  
03:52 Drums break
04:07 trash riffs
05:01 "Theme A": Clean gtr solo /Coda

  2017-09-15 https://yadi.sk/i/e-i-h3Hx3Mvpfa

00:21 Intro 4m, Vln 4m
00:51 (1) Riffs with gtr flageolets 8m
01:14 (2) Vln theme A 16m
01:37 (3) place for Clarinet solo/Vln replays x3
02:24 (1a) Riffs with gtr flageolets 8m
02:41 Vln theme A
03:10 Gtr clean solo B 
03:41 -//- with Vln
04:11 trash riffs intro
04:25 trash riffs tutti
05:23 Gtr clean solo B (Coda) (now played on Clarinet)

%}

longBar = #(define-music-function (parser location ) ( ) #{ \once \override Staff.BarLine.bar-extent = #'(-3 . 3) #})

He = \chordmode {s1 s1 s1 s1 }

Hi = \chordmode {a1:m | g }
Ha = \chordmode {
   c1:9 | d1:m | g:9 | e:m |
}

Hb = \chordmode {
  a1:m | g | f:maj | e:7 |
}

Intro = {
	\tag #'Harmony {\chordmode { 
	  % R1*8 
	  \Hi \Hi \Hi \Hi 
	}}
	\tag #'Clarinet {
	  \mark Intro
	  % R1*8 
	  r1 r1 r1 r1 \longBar 
	  r1 r1 r1 r1
	  \bar "||"
	}
	\tag #'Band {
	  % R1*8
	  \relative c''{a8^"Guitar" a c b a a c16 d c8 | }
	  % s1 
	  s1^simile s1 s1 \longBar |
	  \relative c''{a1^Violin | b16 c b8~b2. |}
	  % s1 s1 
	  s1 s1 
	}
}

PI = {
	\tag #'Harmony { % R1*8
	  s1 s1 s1 s1
	  s1 s1 s1 s1
	}
	\tag #'Clarinet {
	  \mark \markup{\circle {1}} 
	  % R1*8
	  r1 r1 r1 r1 \longBar |
	  r1 r1 r1 r1
	  \bar "||"
	  
	}
	\tag #'Band {
	  % R1*8^"Riffs"
	  s1^"Riffs" s1 s1 s1 \longBar
	  s1 s1 s1 s1
	  \bar "||"
	}
}

PIa = {
	\tag #'Harmony { % R1*8
	  s1 s1 s1 s1 \longBar
	  s1 s1 s1 s1
	}
	\tag #'Clarinet {
	  \mark \markup{\circle {"1a"}} 
	  r1 r1 r1 r1 \longBar |
	  r1 r1 r1 r1
	  \bar "||"
	}
	\tag #'Band {
	  % R1*8^"Riffs"
	  s1^"Riffs" s1 s1 s1 \longBar
	  s1 s1 s1 s1
	  \bar "||"
	}
}

PII = {
	\tag #'Harmony {\Ha \Ha }
	\tag #'Clarinet {
	  \mark \markup{\circle {2}} 
	  r1 r1 r1 r1 \longBar |
	  r1 r1 r1 r1
	  \bar "||"
	  
	}
	\tag #'Band {
	  s1^"Violin solo" s1 s1 s1 \longBar
	  s1 s1 s1 s1
	  \bar "||"
	}
}

PIII = {
	\tag #'Harmony {\Hb \Hb \Hb }
	\tag #'Clarinet {
	  \mark \markup{\circle {3}} 
	  \relative c'{
		% e2.^"Clarinet solo" f8. e16 | b1 | c1 | r1 \bar "."
		e16 d8 e16~e2 f4 | b,1 | g8 e f g a2 | r1 | \longBar |
		% e4 c a c | f8 d b gis  f gis b d | e4 c a c | r1 |
	  }
	  \relative c'{e2. f4 | b,1 | c8. a16 a g8 a16~a2 | r1 \longBar | }
	  \relative c'{
		e8 g a16 g8 e16~e4. f8 | b,8 c4 e16 f b,2  | 
		% s4. f16 g a g f8 e f16 g | e2 r 
		c8 b16 c d8 c b a4 b8~ | b2 r
		\bar "||"
	  }
	}
	\tag #'Band { 
	  s1 | s1 | s1 | \improvisationOn  b'1^"(Violin)" \improvisationOff \longBar |
	  s1 | s1 | s1 | \improvisationOn  b'1^"(Violin)" \improvisationOff \longBar |
	  s1 | s1 | s1 | \improvisationOn  b'1^"(Violin)" \improvisationOff \bar "||"
	}
}

PIIa = {
	\tag #'Harmony {\Ha \Ha \Ha \Ha}
	\tag #'Clarinet {
	  \mark \markup{\circle{"2a"}}
	   r1 r1 r1 r1 \longBar |
	   r1 r1 r1 r1 \longBar |
	   r1 r1 r1 r1 \longBar |
	   \improvisationOn
	   b'4 b'4 b'4 b'4 |
	   b'4 b'4 b'4 b'4 |
	   b'4 b'4 b'4 b'4 |
	   b'4 b'4 b'4 b'4 |
	   \improvisationOff
	   \bar "||"
	}
	\tag #'Band {
	  \mark \markup{\circle{"2a"}}
	   \improvisationOn
	   b'4^Guitar b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4  \longBar 
	   
	   b'4^Violin b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4  \longBar 
	   
	   b'4^Guitar b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4 | 
	   b'4 b'4 b'4 b'4  \longBar | 
	   
	   \improvisationOff
	   s1 s1 s1 s1 \bar "||"
	}
}

Music = {
	\Intro \break
	\PI \break
	\PII \break
	\PIII \break
	\PIa \break
	\PIIa
}

<<
  \compressFullBarRests
  \new ChordNames{\transpose bes c'{
  	\keepWithTag #'Harmony \Music
  }}
  \new Staff{\transpose bes c'{
    \clef treble 
    \time 4/4
    \key a \minor
    \set Staff.instrumentName = "Clarinet B"
  	\keepWithTag #'Clarinet \Music
  }}
  \new ChordNames{
  	\keepWithTag #'Harmony \Music
  }
  \new Staff{
    \clef treble 
    \time 4/4
    \key a \minor
    \set Staff.instrumentName = "Band"
  	\keepWithTag #'Band \Music

  }
>>

<<
	\new Staff{
		\clef treble
		\time 4/4
		\set Staff.instrumentName = "Clarinet"
		\key d \major
		\mark "Coda"
		\relative c''{
			b4. g'8 fis4 d | a4. fis8 a2 | g4. d'8 cis4 a | fis4. d8 fis2 \bar "||"
		}
	}
>>
