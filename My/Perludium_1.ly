\header{
  title="Preludium"
  composer="alakim"
}
\version "2.12.2"

HarmonyI = {
	<d d' f'>2 | <bes, g d'> | <cis a e'> | <d f'>|
	<< {cis2} {e'4 a'}>> | <f d'>2 | <e cis'>~ | <e cis'> |
	\break
	<<{d'2}\\ {f4 d8 c}>> | <bes, g d'>2 | <a, f c'>4 f'8 e' |<bes, bes d'>4 <d' f'> |
	<g, e c'>2 | <a, g cis'> |<d f d'>2~|<d f d'>2 |
}

HarmonyII = \relative c{
  <d f'>8 a' f' a, | <cis, e'>8 a' e' a,| <f d'>4 <a, c'>| <g bes'>4 <c e bes'>|

  <f, a'>8 c'' a f | <g, bes'>8 a' bes f' |<a,, cis'>2~ |<a cis'>2  |
  <d f'>8 a' f' a, | <cis, e'>8 a' e' a,| <f d'>4 <a, c'>| <g bes'>4 <c e bes'>|
  <f, a'>8 c'' a f | <g, bes'>8 a' bes f' |<a,, cis'>2 | <d f d'>2 |
}

Harmony = {
  \HarmonyI
  \break
  \HarmonyII
}

<<
  \new Staff{
    \clef "treble_8" \time 2/4 \key d \minor
    \Harmony
  }
>>
