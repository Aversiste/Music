\version "2.16.0"
\include "italiano.ly"

\header {
	title = "Коробейники (Korobeiniki)"
	poet = "Nikolaï Alekseïevitch Nekrassov"
	composer = "Traditionnel Russe"
	arranger = "Tristan Le Guern"
	instrument = "Bombarde"
	tagline = "BouleDeF.eu"
}

\score {
	\new Staff \relative si {
		\clef "treble"
		\key sib \major
		\time 2/4
	
		sol'4 re8 mib
		| fa4 mib8 re
		| do4 do8 mib
		| sol4 fa8 mib
		| re4( re8) mib
		| fa4 sol
		| mib do 
		| do r
		\break
	
		r8 fa fa la
		| do4 sib8 la
		| sol4( sol8) mib
		| sol4 fa8 mib
		| re4 re8 mib
		| fa4 sol
		| mib do
		| do r_"D.C."
		\break
	}
}

