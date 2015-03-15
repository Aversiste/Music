\version "2.14.2"
\include "italiano.ly"

\header {
	title = "Dans Tricot"
	subtitle = "Derrière de chez mon père"
	composer = "Traditionnel Breton"
	arranger = "Tristan Le Guern"
	instrument = "Bombarde"
	tagline = "BouleDeF.eu"
}

\score {
	\new Staff \relative sib {
		\clef treble
		\key sib \major
		\time 6/4
		\tempo 4 = 140

		\repeat volta 2 {
			do4 mib8 re mib4 fa sol sol
			| fa mib8 re fa4 mib do2
		} \break

		\time 4/4
		\repeat volta 2 {
			do16 re mib fa sol8 sol16 fa sol fa mib8 re4
			| do8 re fa4 mib8 re do4
		}
		\alternative {
			{| re mib re8 do re4}
			{| mib re do2}
		}
	}
	\addlyrics {
		Der -- riè -- re de chez mon père,
		| il y a un moul -- in
		| Re -- ve -- nez -- y donc ma jo -- lie de -- moi -- selle
		| Car il est, car il est en train mon mou -- lin
	}
	\addlyrics {
		Le -- meu -- nier qui l'ha -- bi -- te,
		| est un joy -- eux blond -- in
		| \repeat unfold 11 { \skip 1 }
		| Car il est en train d'y \repeat unfold 5 { \skip 1 } mou __ dre
	}
}