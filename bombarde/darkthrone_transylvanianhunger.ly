\version "2.16.0"
\include "italiano.ly"

\header {
	title = "Transylvanian Hunger"
	composer = "Darkthrone"
	arranger = "Tristan Le Guern"
	instrument = "Bombarde"
	tagline = "BouleDeF.eu"
}

\score {
	\new Staff \relative si {
		\clef "treble"
		\key sib \major
		\time 4/4

		\repeat volta 2 {
			fa'2:32^\markup "Flz" mib:
			| re: mib:
			| mib: re:
			| mib: re:
		}
		\repeat volta 2 {
			do: do:
			re: re:
			do: do:
			mib: mib:
		}
	}
}

